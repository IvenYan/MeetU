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

  <link title="style1" rel="stylesheet" href="style2.css" type="text/css" />
  <link title="style2" rel="alternate stylesheet" href="style.css" type="text/css" />
  <link title="style3" rel="alternate stylesheet" href="style3.css" type="text/css" />
</head>
<body>
<div class="style_changer">
  <div class="style_changer_text">主题:</div>
  <input type="submit" value="1" onclick="setActiveStyleSheet('style1');" />
  <input type="submit" value="2" onclick="setActiveStyleSheet('style2');" />
  <input type="submit" value="3" onclick="setActiveStyleSheet('style3');" />
</div>

<div class="form_content">
  <form id="test" name="test" action="#" method="get">
    <fieldset>
      <legend>WSO2 接口运维管理</legend>
      <div class="form-row">
        <div class="field-label"><label for="field1">程序名称</label>:</div>
        <div class="field-widget"><input name="field1" id="field1" class="required" title="Enter your name" /></div>
      </div>

      <div class="form-row">
        <div class="field-label"><label for="field2">开发者</label>:</div>
        <div class="field-widget"><input name="field2" id="field2" class="required" title="Enter your name" /></div>
      </div>

      <div class="form-row">
        <div class="field-label"><label for="field-ex1">执行日期</label>:</div>
        <div class="field-widget"><input name="field-ex1" id="field-ex1" class="required" title="Enter date" type="date" /></div>
      </div>

      <div class="form-row">
        <div class="field-label"><label for="field3">简介</label>:</div>
        <div class="field-widget"><textarea class="optional"></textarea></div>
      </div>

    </fieldset>
    <fieldset>
      <legend>用户信息</legend>

      <div class="form-row">
        <div class="field-label"><label for="field4">姓名</label>:</div>
        <div class="field-widget"><input name="field4" id="field4" class="optional" title="Enter your name" /></div>
      </div>

      <div class="form-row">
        <div class="field-label"><label for="field5">邮件</label>:</div>
        <div class="field-widget"><input name="field5" id="field5" class="optional validate-email" title="Enter your name" /></div>
      </div>

      <div class="form-row">
        <div class="field-label"><label for="field6">国家</label>:</div>
        <div class="field-widget">
          <select id="field6" name="field6" class="optional validate-selection" title="Choose your department">
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
          <input name="field3" id="field9" class="optional" title="Enter your employee number, please use only alphanumeric characters" />
        </div>
      </div>

      <div class="form-row">
        <div class="field-label"><label for="field10">电话</label>:</div>
        <div class="field-label"><input name="field10" id="field10" class="optional" title="Optional: Enter your age" /></div>
      </div>
      <div class="form-row-select">

        <fieldset>
          <legend class="optional">职业</legend>
          <label class="left">
            <input type="radio" class="radio_input" name="field11" id="field11-male" value="1" />艺术家 <br />
            <input type="radio" class="radio_input" name="field11" id="field11-female" value="2"/>商人<br />
            <input type="radio" class="radio_input" name="field11" id="field11-female" value="2"/>工人<br />
            <input type="radio" class="radio_input" name="field11" id="field11-female" value="2"/>工程师<br />
            <input type="radio" class="radio_input" name="field11" id="field11-female" value="2"/>记者<br />

          </label>
          <label class="left">
            <input type="radio" class="radio_input" name="field11" id="field11-female" value="2"/>医生<br />
            <input type="radio" class="radio_input" name="field11" id="field11-female" value="2"/>军人<br />
            <input type="radio" class="radio_input" name="field11" id="field11-female" value="2"/>政府官员<br />
            <input type="radio" class="radio_input" name="field11" id="field11-female" value="2"/>科学家<br />
            <input type="radio" class="radio_input" name="field11" id="field11-female" value="2"/>殡仪业者
          </label>

          <label class="left">
            <input type="radio" class="radio_input" name="field11" id="field11-male" value="1" />艺术家 <br />
            <input type="radio" class="radio_input" name="field11" id="field11-female" value="2"/>商人<br />
            <input type="radio" class="radio_input" name="field11" id="field11-female" value="2"/>工程师<br />
            <input type="radio" class="radio_input" name="field11" id="field11-female" value="2"/>记者<br />

          </label>

        </fieldset>

      </div>
      <div class="form-row">
        <div class="field-label"><label for="field12">其他</label>:</div>
        <div class="field-widget"><textarea class="optional"></textarea></div>
      </div>

    </fieldset>
    <input type="submit" class="submit" value="Submit" />
    <input type="submit" class="submit" value="Edit" />
    <input class="reset" type="button" value="Reset" onclick="valid.reset(); return false" />
  </form>
</div>
<script type="text/javascript">
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
