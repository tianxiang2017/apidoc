# 发送nest邮件

#### 功能说明

此接口用于用户使用Cube接入nest设备时，发送邮件给nest用户

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/sendEmail/nest |
| 请求头部 | application/x-www-form-urlencoded |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| context | String | 是 | 一个URL，nest连接 |
| email | String\(255\) | 是 | 用户的邮箱 |
| uuid | String\(64\) | 否 | 保留参数。Cube的sn |
| language | String&lt;E&gt; | 否 | 邮件使用的语言，默认值en。可以使用的值有zh\_CN，en |

* #### HTTP 请求示例

```
curl -X POST \
  http://openapi.fantem-gateway.com/sendEmail/nest \
  -H 'content-type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW' \
  -F email=598206408qq.com \
  -F context=https://nest.com/choose-your-country/ \
  -F uuid=A01011725020927 \
  -F language=
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
| 104 | 邮件格式错误 |  |
<<<<<<< HEAD
| 104 | 邮件格式错误 |  |
=======

>>>>>>> 40adc281e6922c027ef6c669a8619a9a8182730d


