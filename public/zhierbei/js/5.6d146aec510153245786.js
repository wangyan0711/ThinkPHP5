webpackJsonp([5],{FU0T:function(t,s){},XxM6:function(t,s,i){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var a={data:function(){return{imgUrl:"",input:"",list:!1,Info:"",yewu:"",mode:"",news:"",hot_searches:"",get_first_category:"",goods_list:"",bannerImg:""}},created:function(){},mounted:function(){var t=this;t.imgUrl=t.apis.second,console.log(t.apis.lang),t.apis.get(t.apis.message,{params:{lang:t.apis.lang}}).then(function(s){0==s.data.code&&(t.Info=s.data.data,t.yewu=s.data.data.scope,t.mode=s.data.data.mode)}),t.apis.get(t.apis.banner,{params:{lang:t.apis.lang}}).then(function(s){0==s.data.code&&(console.log(s.data),t.bannerImg=s.data.data)}),t.apis.get(t.apis.news,{params:{lang:t.apis.lang}}).then(function(s){0==s.data.code&&(t.news=s.data.data)}),t.apis.get(t.apis.hot_searches,{params:{lang:t.apis.lang}}).then(function(s){0==s.data.code&&(t.hot_searches=s.data.data)}),t.apis.get(t.apis.get_first_category,{params:{lang:t.apis.lang}}).then(function(s){0==s.data.code&&(t.get_first_category=s.data.data,t.getGoods_list(t.get_first_category[0].id))})},watch:{},methods:{xianging:function(t){this.$router.push({path:"xiangqing",query:{id:t,title:"商品详情"}})},sousuo:function(t){t?this.$router.push({path:"list",query:{title:"官方商城",key:t}}):this.$router.push({path:"list",query:{title:"官方商城",key:this.input}})},getGoods_list:function(t){var s=this;s.list=!0,s.apis.get(s.apis.goods_list,{params:{lang:s.apis.lang,id:t}}).then(function(t){0==t.data.code&&(s.goods_list=t.data.data,s.list=!0)})}},components:{}},e={render:function(){var t=this,s=t.$createElement,i=t._self._c||s;return t.bannerImg.length>0?i("div",{staticClass:"home"},[i("div",{staticClass:"banner",style:{background:"url("+t.imgUrl+t.bannerImg[0].image+")"}},[i("div",{staticClass:"logo"}),t._v(" "),i("div",[i("div",{staticClass:"sousuo1"},[i("span",{staticClass:"hr"}),t._v(" "),i("el-input",{attrs:{placeholder:t.$t("shouye.banner[0]")},model:{value:t.input,callback:function(s){t.input=s},expression:"input"}},[i("el-button",{staticStyle:{color:"#fff"},attrs:{slot:"append",icon:"el-icon-search",size:"medium"},on:{click:function(s){return t.sousuo()}},slot:"append"})],1)],1),t._v(" "),i("div",{staticClass:"cen"},[i("div",{staticClass:"list"},[i("div",[t._v(t._s(t.$t("shouye.banner[1]")))]),t._v(" "),t._l(t.hot_searches,function(s,a){return i("div",{key:a,staticClass:"item",on:{click:function(i){return t.sousuo(s)}}},[t._v(t._s(s))])})],2)])])]),t._v(" "),i("div",{staticClass:"yewu"},[i("div",{staticClass:"typeTitle"},[t._v("\n            "+t._s(t.$t("shouye.title[0]"))+"\n            "),i("span")]),t._v(" "),t.yewu?i("div",{staticClass:"typeText"},[t._v("\n            "+t._s(t.yewu.content)+"\n        ")]):t._e(),t._v(" "),i("div",{staticClass:"list"},t._l(t.yewu.list,function(s,a){return i("div",{key:a,staticClass:"item"},[i("div",{staticClass:"img"},[i("img",{attrs:{src:t.imgUrl+s.icon,alt:"",loading:"../assets/img/shangcheng/blue.png"}})]),t._v(" "),i("h1",[t._v(t._s(s.title))]),t._v(" "),i("div",{staticClass:"itemText"},[t._v(t._s(s.intro))])])}),0)]),t._v(" "),i("div",{staticClass:"center",style:{background:"url("+t.imgUrl+t.bannerImg[1].image+")"}},[i("h1",[t._v(t._s(t.$t("shouye.title[1]")))]),t._v(" "),t.Info?i("div",[t._v("\n            "+t._s(t.Info.main.content)+"\n        ")]):t._e()]),t._v(" "),i("div",{staticClass:"chanpin"},[i("div",{staticClass:"typeTitle"},[t._v("\n            "+t._s(t.$t("shouye.title[2]"))+"\n            "),i("span")]),t._v(" "),i("div",{staticClass:"list"},[i("div",{staticClass:"listType"},t._l(t.get_first_category,function(s,a){return i("div",{key:a,on:{click:function(i){return t.getGoods_list(s.id)}}},[t._v(t._s(s.category_name))])}),0),t._v(" "),i("div",{staticClass:"listPro"},t._l(t.goods_list,function(s,a){return i("div",{key:a,staticClass:"listItem",on:{click:function(i){return t.xianging(s.id)}}},[i("transition",{attrs:{name:"el-zoom-in-center"}},[i("div",{directives:[{name:"show",rawName:"v-show",value:t.list,expression:"list"}],staticClass:"transition-box pro"},[i("div",[i("img",{directives:[{name:"lazy",rawName:"v-lazy",value:t.imgUrl+s.thumb,expression:"imgUrl + item.thumb"}],attrs:{alt:""}})]),t._v(" "),i("h1",[t._v(t._s(s.name))]),t._v(" "),i("p",[t._v(t._s(s.sku))])])])],1)}),0)])]),t._v(" "),i("div",{staticClass:"moshi",style:{background:"url("+t.imgUrl+t.bannerImg[2].image+")"}},[i("h1",[t._v(t._s(t.$t("shouye.title[3]")))]),t._v(" "),i("div",{staticClass:"moshiList"},t._l(t.mode.list,function(s,a){return i("div",{key:a,staticClass:"item"},[i("div",{staticClass:"img"},[i("img",{directives:[{name:"lazy",rawName:"v-lazy",value:t.imgUrl+s.icon,expression:"imgUrl + item.icon"}],attrs:{alt:""}}),t._v(" "),i("span",{staticClass:"next"})]),t._v(" "),i("p",[t._v(t._s(a+1)+"."+t._s(s.title))]),t._v(" "),i("div",{staticClass:"text"},[t._v("\n                    "+t._s(s.intro)+"\n                ")])])}),0)]),t._v(" "),i("div",{staticClass:"qiye"},[i("div",{staticClass:"typeTitle"},[t._v("\n            "+t._s(t.$t("shouye.title[4]"))+"\n            "),i("span")]),t._v(" "),i("div",{staticClass:"gengduo"},[i("span",{on:{click:function(s){return t.$router.push({path:"xinwenList"})}}},[t._v("更多>")])]),t._v(" "),i("div",{staticClass:"qiyeList"},t._l(t.news,function(s,a){return i("div",{key:a,staticClass:"item",on:{click:function(i){return t.$router.push({path:"xinwen",query:{id:s.id}})}}},[i("div",{staticClass:"img"},[i("img",{attrs:{src:t.imgUrl+s.thumb,alt:""}})]),t._v(" "),i("div",{staticClass:"itemText",staticStyle:{"margin-top":"15px"}},[t._v(t._s(s.title))])])}),0)]),t._v(" "),t._m(0)]):t._e()},staticRenderFns:[function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"toptop"},[s("img",{attrs:{src:i("kZ2X"),alt:""}})])}]};var n=i("VU/8")(a,e,!1,function(t){i("gij8"),i("FU0T")},"data-v-7d52d6e4",null);s.default=n.exports},gij8:function(t,s){},kZ2X:function(t,s){t.exports="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQ1IDc5LjE2MzQ5OSwgMjAxOC8wOC8xMy0xNjo0MDoyMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTkgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjAyQkYxNkNFMEEwMjExRUJBNThDOTBEMzFCRkY5NEEzIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjAyQkYxNkNGMEEwMjExRUJBNThDOTBEMzFCRkY5NEEzIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MDJCRjE2Q0MwQTAyMTFFQkE1OEM5MEQzMUJGRjk0QTMiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MDJCRjE2Q0QwQTAyMTFFQkE1OEM5MEQzMUJGRjk0QTMiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4lldTlAAACFElEQVR42uyYv6tBYRjH7zn3FAolJllMlBCJwWA1WQ02FsWk+CMwKYOUlEkmK4MVXYNfgxQZ/BqUH6VEzv3m1O3W7boux6Xb+wyn55zzPk+f8zzP+32F8nq9L89k9MuTGQEiQASIABEgAkSA/jsQw0sWiqLcbjecfD7PsuyDgRiGwa88m80GXyqVZjKZw+HwMCCBQBAIBHQ6HXcLLLFYnEwmd7vdA2ZIIpGEw2GO5u1kcHCLh3h1Xc5Xk8l0XaRCoYhEIiqVCn6lUslms41GAxxqtVomkyFts9ncbrd/BAQO0MjlcvjFYrFQKLAna7VaeKLVatE4q9Xa7XbX6/XdgTQaTSgUQjGOx2MulyuVSp/f9nq91Wql1+tFIhFGajAYLBaLOwKZzeZgMCgUCvf7fSqVqlarX9eMRqPxeIzMWIY6TSaT6XR6FyCHw+Hz+bDPMRyJRKLT6Xy3EgT9fp9jslgsaBwoeQZyuVxQP2ggOhKPx4fD4fn16FS73UZF0Tuj0ch1kx8gmqY9Ho/T6YQ/n8+j0ehsNrvkG1AYbD2DwYAZx6RDNlHU81J+EZDf77fb7XBQFdRmuVxe3mU0t16vYx9AC6AISqWSk6ubhBFDgCv2cCwW22w2v92VCEEgwj9S8aDUtVoNU3z1gYBAhCMJP2dZuVy+/RjHiZtOp3/USYr8HUOACBABIkAEiAARIAL0XPYuwAAkE+x2DSOY5QAAAABJRU5ErkJggg=="}});
//# sourceMappingURL=5.6d146aec510153245786.js.map