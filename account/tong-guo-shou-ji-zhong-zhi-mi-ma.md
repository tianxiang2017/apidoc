# 通过手机重置密码

#### 功能说明

通过手机号重置密码时，首先用户输入手机号，调用发送手机验证码接口（/sms/code）发送验证码给用户，用户输入验证码后，调用验证验证接口（/accounts/validatePhoneCode）验证手机验证码，最后用户输入密码，调用此接口（/accounts/resetPasswordByPhone）完成重置密码

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/accounts/resetPasswordByPhone |
| 请求头部 | application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| phone | String\(15\) | 是 | 手机号。不包括国家码。数字。例如：18812345678 |
| countryCode | String\(16\) | 是 | 手机号所属国家的国家码， 和手机号唯一标识全球的手机号，已+开头。加号和数字，最多16个字符。例如：+86 |
| code | String&lt;6&gt; | 是 | 手机验证码，6位数字 |
| password | String\(32\) | 是 | 用户密码，需要先进行MD5加密 |
| confirmPassword | String\(32\) | 是 | 用户密码确认，需要先进行MD5加密。值和password一样 |

* #### HTTP 请求示例

```json
{
  "phone":"15220201523",
  "countryCode":"+86",
  "code":"875185",
  "password":"e10adc3949ba59abbe56e057f20f883e",
  "confirmPassword":"e10adc3949ba59abbe56e057f20f883e"
}
```

#### 

* #### 返回参数

  无

* #### 响应示例：

```json
{
    "code": "1",
    "note": "操作成功"
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 3 | 必填参数为空。 | 必填参数为空，或者参数错误 |
| 4 | 参数格式错误 |  |
| 4050 | 两次密码不匹配 |  |
| 8001 | 验证码不正确 |  |
| 8002 | 验证码已被使用 |  |
| 8003 | 验证码过期 |  |
| 4055 | 手机未注册 |  |



