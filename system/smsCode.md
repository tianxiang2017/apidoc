# 发送短信验证码

#### 功能说明

短信发送频率限制

* 短信验证码 ：使用同一个签名，对同一个手机号码发送短信验证码，1条/分钟，5条/小时，10条/天；
* 短信通知： 使用同一个签名和同一个短信模板ID，对同一个手机号码发送短信通知，支持50条/日；
* 推广短信：使用同一个签名和同一个短信模板ID，对同一个手机号码发送短信通知，支持50条/日；

短信验证码有效时间为10分钟。重复发送只有最后一条验证码有效。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/sms/code |
| 请求头部 | application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| phone | String{6,15} | 是 | 手机号。不包括国家码。8-15个数字。例如：18812345678 |
| countryCode | String\(20\) | 是 | 手机号所属国家的国家码， 和手机号唯一标识全球的手机号。加号和数字。以+开头。例如：+86 |
| status | Integer\(E\) | 否 | 注册时传入1，重置密码时不传 |

* #### HTTP 请求示例

```json
{
    "phone": "15812345678",
    "countryCode":"+86"
}
```

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
| 8000 | 发送验证码失败 | 包括超出频率限制情况 |
| 4051 | 手机号码已经注册 |  |
| 8004 | 国家码为空 |  |
| 8005 | 国家码错误 |  |



