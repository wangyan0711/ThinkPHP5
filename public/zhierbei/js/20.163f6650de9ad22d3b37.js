webpackJsonp([20],{"2/Hr":function(i,a){},HYPj:function(i,a,e){"use strict";Object.defineProperty(a,"__esModule",{value:!0});var t={render:function(){var i=this,a=i.$createElement,e=i._self._c||a;return e("div",{staticClass:"ziliao"},[e("div",{staticClass:"title"},[i._v(i._s(i.$t("bianjiziliao[0]")))]),i._v(" "),e("div",{staticClass:"hr"}),i._v(" "),e("div",{staticClass:"item"},[e("div",[i._v(i._s(i.$t("bianjiziliao[1]"))+"：")]),i._v(" "),e("div",[e("el-input",{attrs:{placeholder:i.$t("bianjiziliao[2]")},model:{value:i.form.name,callback:function(a){i.$set(i.form,"name",a)},expression:"form.name"}})],1),i._v(" "),e("div",{staticClass:"zhanwei"})]),i._v(" "),e("div",{staticClass:"item"},[e("div",[i._v(i._s(i.$t("bianjiziliao[3]"))+"：")]),i._v(" "),e("div",[e("el-input",{attrs:{placeholder:i.$t("bianjiziliao[4]")},model:{value:i.form.real_name,callback:function(a){i.$set(i.form,"real_name",a)},expression:"form.real_name"}})],1),i._v(" "),e("div",{staticClass:"zhanwei"})]),i._v(" "),e("div",{staticClass:"item"},[e("div",[i._v(i._s(i.$t("bianjiziliao[5]"))+"：")]),i._v(" "),e("div",[e("el-radio-group",{model:{value:i.form.sex,callback:function(a){i.$set(i.form,"sex",a)},expression:"form.sex"}},[e("el-radio",{attrs:{label:i.$t("bianjiziliao[6]"),value:1}}),i._v(" "),e("el-radio",{attrs:{label:i.$t("bianjiziliao[7]"),value:2}})],1)],1),i._v(" "),e("div",{staticClass:"zhanwei"})]),i._v(" "),e("div",{staticClass:"item"},[e("div",[i._v(i._s(i.$t("bianjiziliao[8]"))+"：")]),i._v(" "),e("div",[e("el-input",{attrs:{placeholder:i.$t("bianjiziliao[9]")},model:{value:i.form.phone,callback:function(a){i.$set(i.form,"phone",a)},expression:"form.phone"}})],1),i._v(" "),e("div",{staticClass:"zhanwei"})]),i._v(" "),e("div",{staticClass:"item"},[e("div",[i._v(i._s(i.$t("bianjiziliao[10]"))+"：")]),i._v(" "),e("div",[e("el-input",{attrs:{placeholder:i.$t("bianjiziliao[11]")},model:{value:i.form.email,callback:function(a){i.$set(i.form,"email",a)},expression:"form.email"}})],1),i._v(" "),e("div",{staticClass:"zhanwei"})]),i._v(" "),e("div",{staticClass:"item"},[e("div"),i._v(" "),e("div",[e("div",{staticClass:"btn",on:{click:function(a){return i.setUser()}}},[i._v(i._s(i.$t("bianjiziliao[12]")))])]),i._v(" "),e("div",{staticClass:"zhanwei"})])])},staticRenderFns:[]};var s=e("VU/8")({data:function(){return{form:{name:"",real_name:"",sex:"",phone:"",email:""}}},created:function(){},mounted:function(){},watch:{},methods:{setUser:function(){var i=this;i.form.name&&i.form.real_name&&i.form.sex&&i.form.phone&&i.form.email?("男"!=i.form.sex&&"man"!=i.form.sex||(i.form.sex=1),"女"!=i.form.sex&&"girl"!=i.form.sex||(i.form.sex=0),i.form.lang=i.apis.lang,i.apis.post(i.apis.update_user_info,i.form).then(function(a){a.data.code,i.$message({message:a.data.msg,type:"success"})})):i.$message({message:i.$t("bianjiziliao[13]"),type:"warning"})}},components:{}},t,!1,function(i){e("2/Hr")},"data-v-282dbb51",null);a.default=s.exports}});
//# sourceMappingURL=20.163f6650de9ad22d3b37.js.map