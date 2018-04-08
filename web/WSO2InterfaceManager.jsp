<%--
  Created by IntelliJ IDEA.
  User: Iven
  Date: 2018/3/21
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <script src="js-lib/prototype.js" type="text/javascript"></script>
  <script src="js-lib/effects.js" type="text/javascript"></script>
  <script type="text/javascript" src="js-lib/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" src="js-lib/validation.js"></script>
  <script type="text/javascript">

      <!--
      // Alternative Style: Working With Alternate Style Sheets
      // http://www.alistapart.com/articles/alternate/
      var myDate = new Date();
      //获取当前年
      var year=myDate.getFullYear();
      //获取当前月
      var month=myDate.getMonth()+1;
      //获取当前日
      var date=myDate.getDate();
      var now=year+'-'+p(month)+"-"+p(date);
      function p(s) {
          return s < 10 ? '0' + s: s;
      }
      $(document).ready(function(){
          $("input#field-ex1").attr({"value":now});
      });

      function setActiveStyleSheet(title){
          var i,a,main;
          for(i=0;(a=document.getElementsByTagName("link")[i]);i++){
              if(a.getAttribute("rel").indexOf("style")!=-1&&a.getAttribute("title")){
                  a.disabled=true;if(a.getAttribute("title")==title)a.disabled=false;
              }
          }
      }

      //-->
  </script>
  <link title="style1" rel="stylesheet" href="css/style2.css" type="text/css" />
  <link title="style2" rel="alternate stylesheet" href="css/style.css" type="text/css" />
  <link title="style3" rel="alternate stylesheet" href="css/style3.css" type="text/css" />
</head>
<body>
<div class="style_changer">
  <div class="style_changer_text">主题:</div>
  <input type="submit" value="1" onclick="setActiveStyleSheet('style1');" />
  <input type="submit" value="2" onclick="setActiveStyleSheet('style2');" />
  <input type="submit" value="3" onclick="setActiveStyleSheet('style3');" />
</div>

<div class="form_content">
  <form id="test" name="test" action="addWSO2Interface.do" method="post">
    <fieldset>
      <legend>WSO2 接口运维管理</legend>
      <div class="form-row">
        <div class="field-label"><label for="field1">程序名称</label>:</div>
        <div class="field-widget"><input name="interfaceName" id="field1" class="required" title="Enter your name" /></div>
      </div>

      <div class="form-row">
        <div class="field-label"><label for="field2">操作人员</label>:</div>
        <div class="field-widget"><input name="integrationOwner" id="field2" class="required" title="Enter your name" /></div>
      </div>

      <div class="form-row">
        <div class="field-label"><label for="field7">执行操作</label>:</div>
        <div class="field-widget">
          <select id="field7" name="handling" class="optional validate-selection" title="Choose your department">
            <option value="">请选择...</option>
            <option value="reprocess">重发</option>
            <option value="Interface error,to be checked">接口调用出错，待检查</option>
            <option value="WSO2 error，to be checked">WSO2出错，待检查</option>
          </select>
        </div>
      </div>

      <div class="form-row">
        <div class="field-label"><label for="field-ex1">执行日期</label>:</div>
        <div class="field-widget"><input name="handlingTime" id="field-ex1" class="required" title="Enter date" type="date" /></div>
      </div>

      <div class="form-row">
        <div class="field-label"><label for="field3">简介</label>:</div>
        <div class="field-widget"><textarea name="comments" id="field3" class="optional"></textarea></div>
      </div>

    </fieldset>
    <fieldset>
      <legend>用户信息</legend>

      <div class="form-row">
        <div class="field-label"><label for="field4">姓名</label>:</div>
        <div class="field-widget"><input id="field4" class="optional" title="Enter your name" /></div>
      </div>

      <div class="form-row">
        <div class="field-label"><label for="field5">邮件</label>:</div>
        <div class="field-widget"><input id="field5" class="optional validate-email" title="Enter your name" /></div>
      </div>

      <div class="form-row">
        <div class="field-label"><label for="field6">国家</label>:</div>
        <div class="field-widget">
          <select id="field6" class="optional validate-selection" title="Choose your department">
            <option>请选择...</option>
            <option>Accounts</option>
            <option>Human Resources</option>
            <option>Information Technology</option>
            <option>Animal Management</option>
            <option>Ultimate Frisby</option>
          </select>
        </div>
      </div>

    </fieldset>
    <fieldset>
      <legend class="optional">选项信息</legend>

      <div class="form-row">
        <div class="field-label"><label for="field9">城市</label>:</div>
        <div class="field-label">
          <input id="field9" class="optional" title="Enter your employee number, please use only alphanumeric characters" />
        </div>
      </div>

      <div class="form-row">
        <div class="field-label"><label for="field10">电话</label>:</div>
        <div class="field-label"><input id="field10" class="optional" title="Optional: Enter your age" /></div>
      </div>
      <div class="form-row-select">

        <fieldset>
          <legend class="optional">职业</legend>
          <label class="left">
            <input type="radio" class="radio_input" id="field11-male" value="1" />艺术家 <br />
            <input type="radio" class="radio_input" id="field12-female" value="2"/>商人<br />
            <input type="radio" class="radio_input" id="field13-female" value="2"/>工人<br />
            <input type="radio" class="radio_input" id="field14-female" value="2"/>工程师<br />
            <input type="radio" class="radio_input" id="field15-female" value="2"/>记者<br />

          </label>
          <label class="left">
            <input type="radio" class="radio_input" id="field16-female" value="2"/>医生<br />
            <input type="radio" class="radio_input" id="field17-female" value="2"/>军人<br />
            <input type="radio" class="radio_input" id="field18-female" value="2"/>政府官员<br />
            <input type="radio" class="radio_input" id="field19-female" value="2"/>科学家<br />
            <input type="radio" class="radio_input" id="field20-female" value="2"/>殡仪业者
          </label>

          <label class="left">
            <input type="radio" class="radio_input" id="field21-male" value="1" />艺术家 <br />
            <input type="radio" class="radio_input" id="field22-female" value="2"/>商人<br />
            <input type="radio" class="radio_input" id="field23-female" value="2"/>工程师<br />
            <input type="radio" class="radio_input" id="field24-female" value="2"/>记者<br />

          </label>

        </fieldset>

      </div>
      <div class="form-row">
        <div class="field-label"><label for="field12">其他</label>:</div>
        <div class="field-widget"><textarea id="field12" class="optional"></textarea></div>
      </div>

    </fieldset>
    <input type="submit" class="submit" onclick="valid.reset(); return false" value="Submit" />
    <input type="submit" class="submit" value="Edit" />
    <input class="reset" type="button" value="Reset" onclick="valid.reset(); return false" />
  </form>
</div>
<script type="text/javascript">
    // 新增WSO2接口数据
    function addWso2Interface(){

    }

    function formCallback(result, form) {
        window.status = "valiation callback for form '" + form.id + "': result = " + result;
    }

    var valid = new Validation('test', {immediate : true, onFormValidate : formCallback});
    Validation.addAllThese([
        ['validate-password', '> 6 characters', {
            minLength : 7,
            notOneOf : ['password','PASSWORD','1234567','0123456'],
            notEqualToField : 'field1'
        }],
        ['validate-password-confirm', 'please try again.', {
            equalToField : 'field8'
        }]
    ]);
</script>

</body>
</html>
