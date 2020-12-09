<?php

namespace app\http\middleware;

class AdminAuth
{
    public function handle($request, \Closure $next)
    {

//        dump(123);die;
        return $next($request);
    }
}
