# 使用手机号注册用户

#### 功能说明

用户使用手机号注册时，输入手机号后，调用获取验证码接口（/sms/code）获取验证码，输入验证码后，调用验证手机验证码接口（/accounts/validatePhoneCode）验证手机验证码，然后用户输入密码，最后调用此接口（/accounts/registerByPhone）完成注册（同时设置密码）

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/accounts/registerByPhone |
| 请求头部 | application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| phone | String | 是 | 手机号。不包括国家码。数字，最多20个字符。例如：18812345678 |
| countryCode | String | 是 | 手机号所属国家的国家码， 和手机号唯一标识全球的手机号，已+开头。加号和数字，最多20个字符。例如：+86 |
| code | String | 是 | 手机验证码，6位数字 |
| password | String | 是 | 用户新密码，需要先进行MD5加密 |
| confirmPassword | String | 是 | 用户新密码确认，需要先进行MD5加密。和password一样 |

* #### HTTP 请求示例

```json
{
    "username": "598206408@qq.com"
}
```

* #### HTTP 请求示例2

```json
{
    "username": "ztx",
    "language":"zh_TW"
}
```

* #### 返回参数

  | 参数名称 | 参数类型 | 是否必须 | 示例 | 描述 |
  | :--- | :--- | :--- | :--- | :--- |
  | email | String | 是 |  | 用户的邮箱。实际发送的邮箱地址。 |
  | language | String | 是 | zh\_CN | 同请求参数。默认使用英文（en） |
* #### 响应示例：

```json
{
    "code": "1",
    "note": "操作成功",
    "data": {
        "language": "zh_TW",
        "email": "598206408@qq.com"
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 3 | 必填参数为空。 | 必填参数为空，或者参数错误 |
| 106 | 用户不存在 |  |
| 4023 | 邮箱不存在 | 用户注册没有邮箱，可能是手机注册 |
| 2 | 发送邮件失败 | 邮件地址未注册等错误 |
| 4 | 参数格式错误 | 包括language的值超出范围 |



