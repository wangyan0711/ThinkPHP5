<?php
namespace app\index\controller;

use PayPal\Api\Amount;
use PayPal\Api\Details;
use PayPal\Api\Item;
use PayPal\Api\ItemList;
use PayPal\Api\Payer;
use PayPal\Api\Payment;
use PayPal\Api\RedirectUrls;
use PayPal\Api\Transaction;
use PayPal\Auth\OAuthTokenCredential;
use PayPal\Exception\PayPalConnectionException;
use PayPal\Rest\ApiContext;
use think\Controller;
use think\response\Redirect;

class Paypal extends Controller
{
    const clientId = '';
    const clientSecret = '';
    const Currency = 'USD'; //币种 美元
    protected $PayPal;

    public function __construct()
    {
        $this->PayPal = new ApiContext(
            new OAuthTokenCredential(
                self::clientId,
                self::clientSecret
            )
        );

        $this->PayPal->setConfig(
            array(
                // 'mode' => 'sandbox',
                'mode' => 'live',
                'log.LogEnabled' => false,
                'log.FileName' => '../PayPal.log',
                'log.LogLevel' => 'Info', // PLEASE USE `INFO` LEVEL FOR LOGGING IN LIVE ENVIRONMENTS
                'cache.enabled' => true,
                'http.CURLOPT_CONNECTTIMEOUT' => 60,
                 'http.headers.PayPal-Partner-Attribution-Id' => '123123123',
                'log.AdapterFactory' => '\PayPal\Log\DefaultLogFactory' // Factory class implementing \PayPal\Log\PayPalLogFactory
            )
        );
    }

    public function index()
    {
        //商品名称
        $product = '商品商品';
        if (empty($product)) {
            return __error('Goods cannot be empty.');
        }
        // 总价
        $price = '100';
        if (empty($price)) {
            $this->error('Prices cannot be empty.');
        }

        // 运费
        $shipping = input('shipping', 0);

        // 商品描述
        $description = '商品描述';
        if (empty($description)) {
            $this->error('Description cannot be empty.');
        }

        $this->pay($product, $price, $shipping, $description);

    }

    public function pay($product, $price, $shipping = 0, $description)
    {
        $paypal = $this->PayPal;

        $total = $price + $shipping;//总价

        $payer = new Payer();
        $payer->setPaymentMethod('paypal');
        $item = new Item();
        $item->setName($product)->setCurrency(self::Currency)->setQuantity(1)->setPrice($price);
        $itemList = new ItemList();
        $itemList->setItems([$item]);
        $details = new Details();
        $details->setShipping($shipping);
        $amount = new Amount();
        $amount->setCurrency(self::Currency)->setTotal($total)->setDetails($details);
        $transaction = new Transaction();
        $transaction->setAmount($amount)->setItemList($itemList)->setDescription($description)->setInvoiceNumber(uniqid());
        $baseUrl = 'http://'.$_SERVER["HTTP_HOST"];
        $redirectUrls = new RedirectUrls();
        $redirectUrls->setReturnUrl("$baseUrl/public/index.php/index/Index/success")->setCancelUrl("$baseUrl/public/index.php/index/Index/success");
        $payment = new Payment();
        $payment->setIntent('sale')->setPayer($payer)->setRedirectUrls($redirectUrls)->setTransactions([$transaction]);

        try {
            $payment->create($paypal);
        } catch (PayPalConnectionException $e) {
            echo $e->getData();
            die();
        }
    }

    public function Callback()
    {

    }




}