webpackJsonp([10],{"4AGY":function(t,a,i){"use strict";Object.defineProperty(a,"__esModule",{value:!0});var s={data:function(){return{activeName:"0",input3:"",order_list:"",imgUrl:"",fileList:[],token:{Authorization:"Bearer "+sessionStorage.token},pageSize:7,pageTptal:1,sync:1}},filters:{zhuangtai:function(t,a){if("cn"==a){if(-1==t)return"未支付";if(1==t)return"待发货";if(2==t)return"待收货";if(3==t)return"已完成"}else{if(-1==t)return"non-payment";if(1==t)return"To send the goods";if(2==t)return"wait for receiving";if(3==t)return"off the stocks"}}},created:function(){},mounted:function(){var t=this;t.imgUrl=t.apis.second,t.getList(1),t.apis.get(t.apis.order_list,{params:{lang:t.apis.lang,page:1,pageNumber:t.pageSize}}).then(function(a){0==a.data.code&&(t.order_list=a.data.data.data,t.pageTptal=Number(a.data.data.total),t.sync=Number(a.data.data.current_page))})},watch:{},methods:{handleSizeChange:function(){},handleCurrentChange:function(t){this.getList(t)},getList:function(t){var a=this;if(0==a.activeName)var i="";else i=a.activeName;a.apis.get(a.apis.order_list,{params:{lang:a.apis.lang,status:i,page:t,pageNumber:a.pageSize}}).then(function(t){0==t.data.code&&(a.order_list=t.data.data.data,a.pageTptal=t.data.data.total,a.sync=t.data.data.current_page)})},handleClick:function(){var t=this;if(0==t.activeName)var a="";else a=t.activeName;t.apis.get(t.apis.order_list,{params:{lang:t.apis.lang,status:a,page:1,pageNumber:t.pageSize}}).then(function(a){0==a.data.code&&(t.order_list=a.data.data.data,t.pageTptal=a.data.data.total,t.sync=a.data.data.current_page)})},handleRemove:function(t,a){console.log(t,a)},handlePreview:function(t){console.log(t)},handleExceed:function(t,a){this.$message.warning("当前限制选择 3 个文件，本次选择了 "+t.length+" 个文件，共选择了 "+(t.length+a.length)+" 个文件")},beforeRemove:function(t,a){return this.$confirm("确定移除 "+t.name+"？")},xiazaimuban:function(){},shanchudingdan:function(t){this.apis.get(this.apis.change_status,{params:{lang:this.apis.lang,status:-2,id:t}}).then(function(t){0==t.data.code&&alert(t.data.msg)})},change_status:function(t,a){var i=this;3==a?i.apis.get(i.apis.change_status,{params:{lang:i.apis.lang,status:a,id:t}}).then(function(t){0==t.data.code?i.$message({message:t.data.msg,type:"success"}):i.$message({message:t.data.msg,type:"info"}),i.apis.get(i.apis.order_list,{params:{lang:i.apis.lang,status:status}}).then(function(t){0==t.data.code&&(i.order_list=t.data.data.data)})}):1==a&&i.$router.push({path:"dingdan",query:{title:"订单",id:t}})}},components:{}},d={render:function(){var t=this,a=t.$createElement,s=t._self._c||a;return s("div",{staticClass:"wodedingdan"},[s("div",{staticClass:"piliang"},[s("a",{attrs:{href:"../../../../static/muban.xlsx",download:t.$t("xinzeng[0]"),target:"_blank"}},[t._v(t._s(t.$t("xinzeng[1]")))]),t._v(" "),s("el-upload",{staticClass:"upload-demo",attrs:{action:t.apis.second+"/v1/excel/import_excel",accept:".xlsx","on-preview":t.handlePreview,"on-remove":t.handleRemove,"before-remove":t.beforeRemove,headers:t.token,limit:3,"on-exceed":t.handleExceed,"show-file-list":!1,"file-list":t.fileList}},[s("el-button",{attrs:{size:"small",type:"primary"}},[t._v(t._s(t.$t("xinzeng[2]")))])],1)],1),t._v(" "),s("el-tabs",{on:{"tab-click":t.handleClick},model:{value:t.activeName,callback:function(a){t.activeName=a},expression:"activeName"}},[s("el-tab-pane",{attrs:{label:t.$t("wodedingdan[0]"),name:"0"}},[s("div",{staticClass:"dingdanList"},[s("div",{staticClass:"dingdanTitle"},[s("div",[t._v(t._s(t.$t("wodedingdan[5]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[6]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[7]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[8]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[9]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[10]")))])]),t._v(" "),t.order_list<=0?s("div",{staticClass:"zanwu"},[s("img",{attrs:{src:i("331v"),alt:""}}),t._v(" "),s("h1",[t._v(t._s(t.$t("wodedingdan[11]"))+"...")])]):t._e(),t._v(" "),t._l(t.order_list,function(a,i){return s("div",{key:i,staticClass:"list"},[s("div",{staticClass:"listTitle"},[s("div",[t._v("\n                            "+t._s(a.add_time)+"\n                        ")]),t._v(" "),s("div",[t._v("\n                            "+t._s(t.$t("wodedingdan[12]"))+": "+t._s(a.order_num)+"\n                        ")]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[13]"))+":"+t._s(a.pay_price))]),t._v(" "),s("div",[t._v("\n                            "+t._s(t._f("zhuangtai")(a.status,t.apis.lang))+"\n                        ")])]),t._v(" "),t._l(a.goods_list,function(i,d){return s("div",{key:d,staticClass:"item"},[s("div",[i.goods_thumb?s("div",{staticClass:"img"},[s("img",{attrs:{src:""+i.goods_thumb,alt:""}})]):s("div",{staticClass:"img",staticStyle:{background:"#dadada"}}),t._v(" "),s("div",{staticClass:"text"},[s("h1",[t._v(t._s(i.goods_name))]),t._v(" "),s("p",[t._v(t._s(i.intro))])])]),t._v(" "),s("div",[s("div"),s("div",[t._v("¥"+t._s(i.price))])]),t._v(" "),s("div",[t._v(t._s(i.num))]),t._v(" "),s("div",[t._v(t._s(i.sku))]),t._v(" "),s("div",[t._v("¥"+t._s(i.price*i.num))]),t._v(" "),s("div",[-1==a.status?s("div",{staticClass:"fukuanBtn",on:{click:function(i){return t.change_status(a.id,1)}}},[t._v(t._s(t.$t("wodedingdan[14]")))]):t._e(),t._v(" "),1==a.status?s("div"):t._e(),t._v(" "),2==a.status?s("div",{on:{click:function(i){return t.change_status(a.id,3)}}},[t._v(t._s(t.$t("wodedingdan[15]")))]):t._e(),t._v(" "),3==a.status?s("div"):t._e()])])})],2)})],2)]),t._v(" "),s("el-tab-pane",{attrs:{label:t.$t("wodedingdan[1]"),name:"-1"}},[s("div",{staticClass:"dingdanList"},[s("div",{staticClass:"dingdanTitle"},[s("div",[t._v(t._s(t.$t("wodedingdan[5]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[6]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[7]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[8]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[9]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[10]")))])]),t._v(" "),t.order_list<=0?s("div",{staticClass:"zanwu"},[s("img",{attrs:{src:i("331v"),alt:""}}),t._v(" "),s("h1",[t._v(t._s(t.$t("wodedingdan[11]"))+"...")])]):t._e(),t._v(" "),t._l(t.order_list,function(a,i){return s("div",{key:i,staticClass:"list"},[s("div",{staticClass:"listTitle"},[s("div",[t._v("\n                            "+t._s(a.add_time)+"\n                        ")]),t._v(" "),s("div",[t._v("\n                            "+t._s(t.$t("wodedingdan[12]"))+": "+t._s(a.order_num)+"\n                        ")]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[13]"))+":"+t._s(a.pay_price))]),t._v(" "),s("div",[t._v("\n                            "+t._s(t._f("zhuangtai")(a.status,t.apis.lang))+"\n                        ")])]),t._v(" "),t._l(a.goods_list,function(i,d){return s("div",{key:d,staticClass:"item"},[s("div",[i.goods_thumb?s("div",{staticClass:"img"},[s("img",{attrs:{src:""+i.goods_thumb,alt:""}})]):s("div",{staticClass:"img",staticStyle:{background:"#dadada"}}),t._v(" "),s("div",{staticClass:"text"},[s("h1",[t._v(t._s(i.goods_name))]),t._v(" "),s("p",[t._v(t._s(i.intro))])])]),t._v(" "),s("div",[s("div"),s("div",[t._v("¥"+t._s(i.price))])]),t._v(" "),s("div",[t._v(t._s(i.num))]),t._v(" "),s("div",[t._v(t._s(i.sku))]),t._v(" "),s("div",[t._v("¥"+t._s(i.price*i.num))]),t._v(" "),s("div",[-1==a.status?s("div",{staticClass:"fukuanBtn",on:{click:function(i){return t.change_status(a.id,1)}}},[t._v(t._s(t.$t("wodedingdan[14]")))]):t._e(),t._v(" "),1==a.status?s("div"):t._e(),t._v(" "),2==a.status?s("div",{on:{click:function(i){return t.change_status(a.id,3)}}},[t._v(t._s(t.$t("wodedingdan[15]")))]):t._e(),t._v(" "),3==a.status?s("div"):t._e()])])})],2)})],2)]),t._v(" "),s("el-tab-pane",{attrs:{label:t.$t("wodedingdan[2]"),name:"1"}},[s("div",{staticClass:"dingdanList"},[s("div",{staticClass:"dingdanTitle"},[s("div",[t._v(t._s(t.$t("wodedingdan[5]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[6]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[7]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[8]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[9]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[10]")))])]),t._v(" "),t.order_list<=0?s("div",{staticClass:"zanwu"},[s("img",{attrs:{src:i("331v"),alt:""}}),t._v(" "),s("h1",[t._v(t._s(t.$t("wodedingdan[11]"))+"...")])]):t._e(),t._v(" "),t._l(t.order_list,function(a,i){return s("div",{key:i,staticClass:"list"},[s("div",{staticClass:"listTitle"},[s("div",[t._v("\n                            "+t._s(a.add_time)+"\n                        ")]),t._v(" "),s("div",[t._v("\n                            "+t._s(t.$t("wodedingdan[12]"))+": "+t._s(a.order_num)+"\n                        ")]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[13]"))+":"+t._s(a.pay_price))]),t._v(" "),s("div",[t._v("\n                            "+t._s(t._f("zhuangtai")(a.status,t.apis.lang))+"\n                        ")])]),t._v(" "),t._l(a.goods_list,function(i,d){return s("div",{key:d,staticClass:"item"},[s("div",[i.goods_thumb?s("div",{staticClass:"img"},[s("img",{attrs:{src:""+i.goods_thumb,alt:""}})]):s("div",{staticClass:"img",staticStyle:{background:"#dadada"}}),t._v(" "),s("div",{staticClass:"text"},[s("h1",[t._v(t._s(i.goods_name))]),t._v(" "),s("p",[t._v(t._s(i.intro))])])]),t._v(" "),s("div",[s("div"),s("div",[t._v("¥"+t._s(i.price))])]),t._v(" "),s("div",[t._v(t._s(i.num))]),t._v(" "),s("div",[t._v(t._s(i.sku))]),t._v(" "),s("div",[t._v("¥"+t._s(i.price*i.num))]),t._v(" "),s("div",[-1==a.status?s("div",{on:{click:function(i){return t.change_status(a.id,1)}}},[t._v(t._s(t.$t("wodedingdan[14]")))]):t._e(),t._v(" "),1==a.status?s("div"):t._e(),t._v(" "),2==a.status?s("div",{on:{click:function(i){return t.change_status(a.id,3)}}},[t._v(t._s(t.$t("wodedingdan[15]")))]):t._e(),t._v(" "),3==a.status?s("div"):t._e()])])})],2)})],2)]),t._v(" "),s("el-tab-pane",{attrs:{label:t.$t("wodedingdan[3]"),name:"2"}},[s("div",{staticClass:"dingdanList"},[s("div",{staticClass:"dingdanTitle"},[s("div",[t._v(t._s(t.$t("wodedingdan[5]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[6]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[7]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[8]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[9]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[10]")))])]),t._v(" "),t.order_list<=0?s("div",{staticClass:"zanwu"},[s("img",{attrs:{src:i("331v"),alt:""}}),t._v(" "),s("h1",[t._v(t._s(t.$t("wodedingdan[11]"))+"...")])]):t._e(),t._v(" "),t._l(t.order_list,function(a,i){return s("div",{key:i,staticClass:"list"},[s("div",{staticClass:"listTitle"},[s("div",[t._v("\n                            "+t._s(a.add_time)+"\n                        ")]),t._v(" "),s("div",[t._v("\n                            "+t._s(t.$t("wodedingdan[12]"))+": "+t._s(a.order_num)+"\n                        ")]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[13]"))+":"+t._s(a.pay_price))]),t._v(" "),s("div",[t._v("\n                            "+t._s(t._f("zhuangtai")(a.status,t.apis.lang))+"\n                        ")])]),t._v(" "),t._l(a.goods_list,function(i,d){return s("div",{key:d,staticClass:"item"},[s("div",[i.goods_thumb?s("div",{staticClass:"img"},[s("img",{attrs:{src:""+i.goods_thumb,alt:""}})]):s("div",{staticClass:"img",staticStyle:{background:"#dadada"}}),t._v(" "),s("div",{staticClass:"text"},[s("h1",[t._v(t._s(i.goods_name))]),t._v(" "),s("p",[t._v(t._s(i.intro))])])]),t._v(" "),s("div",[s("div"),s("div",[t._v("¥"+t._s(i.price))])]),t._v(" "),s("div",[t._v(t._s(i.num))]),t._v(" "),s("div",[t._v(t._s(i.sku))]),t._v(" "),s("div",[t._v("¥"+t._s(i.price*i.num))]),t._v(" "),s("div",[-1==a.status?s("div",{on:{click:function(i){return t.change_status(a.id,1)}}},[t._v(t._s(t.$t("wodedingdan[14]")))]):t._e(),t._v(" "),1==a.status?s("div"):t._e(),t._v(" "),2==a.status?s("div",{on:{click:function(i){return t.change_status(a.id,3)}}},[t._v(t._s(t.$t("wodedingdan[15]")))]):t._e(),t._v(" "),3==a.status?s("div"):t._e()])])})],2)})],2)]),t._v(" "),s("el-tab-pane",{attrs:{label:t.$t("wodedingdan[4]"),name:"3"}},[s("div",{staticClass:"dingdanList"},[s("div",{staticClass:"dingdanTitle"},[s("div",[t._v(t._s(t.$t("wodedingdan[5]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[6]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[7]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[8]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[9]")))]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[10]")))])]),t._v(" "),t.order_list<=0?s("div",{staticClass:"zanwu"},[s("img",{attrs:{src:i("331v"),alt:""}}),t._v(" "),s("h1",[t._v(t._s(t.$t("wodedingdan[11]"))+"...")])]):t._e(),t._v(" "),t._l(t.order_list,function(a,i){return s("div",{key:i,staticClass:"list"},[s("div",{staticClass:"listTitle"},[s("div",[t._v("\n                            "+t._s(a.add_time)+"\n                        ")]),t._v(" "),s("div",[t._v("\n                            "+t._s(t.$t("wodedingdan[12]"))+": "+t._s(a.order_num)+"\n                        ")]),t._v(" "),s("div",[t._v(t._s(t.$t("wodedingdan[13]"))+":"+t._s(a.pay_price))]),t._v(" "),s("div",[t._v("\n                            "+t._s(t._f("zhuangtai")(a.status,t.apis.lang))+"\n                        ")])]),t._v(" "),t._l(a.goods_list,function(i,d){return s("div",{key:d,staticClass:"item"},[s("div",[i.goods_thumb?s("div",{staticClass:"img"},[s("img",{attrs:{src:""+i.goods_thumb,alt:""}})]):s("div",{staticClass:"img",staticStyle:{background:"#dadada"}}),t._v(" "),s("div",{staticClass:"text"},[s("h1",[t._v(t._s(i.goods_name))]),t._v(" "),s("p",[t._v(t._s(i.intro))])])]),t._v(" "),s("div",[s("div"),s("div",[t._v("¥"+t._s(i.price))])]),t._v(" "),s("div",[t._v(t._s(i.num))]),t._v(" "),s("div",[t._v(t._s(i.sku))]),t._v(" "),s("div",[t._v("¥"+t._s(i.price*i.num))]),t._v(" "),s("div",[-1==a.status?s("div",{on:{click:function(i){return t.change_status(a.id,1)}}},[t._v(t._s(t.$t("wodedingdan[14]")))]):t._e(),t._v(" "),1==a.status?s("div"):t._e(),t._v(" "),2==a.status?s("div",{on:{click:function(i){return t.change_status(a.id,3)}}},[t._v(t._s(t.$t("wodedingdan[15]")))]):t._e(),t._v(" "),3==a.status?s("div",[s("span",{staticClass:"shanchudingdan",on:{click:function(i){return t.shanchudingdan(a.id)}}})]):t._e()])])})],2)})],2)])],1),t._v(" "),s("div",[s("div",{staticClass:"fenye"},[s("el-pagination",{attrs:{"page-size":t.pageSize,layout:"prev, pager, next, jumper","current-page":t.sync,total:t.pageTptal},on:{"size-change":t.handleSizeChange,"current-change":t.handleCurrentChange,"update:currentPage":function(a){t.sync=a},"update:current-page":function(a){t.sync=a}}})],1),t._v(" "),s("div")])],1)},staticRenderFns:[]};var n=i("VU/8")(s,d,!1,function(t){i("lz0U")},"data-v-903ebecc",null);a.default=n.exports},lz0U:function(t,a){}});
//# sourceMappingURL=10.90735d9deeed3b910644.js.map