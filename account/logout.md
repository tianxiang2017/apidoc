# 登出

#### 功能说明

修改用户在设备上的状态为登出状态。
如果请求cookie中有guid，使用guid查询设备，不使用uuid参数

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/accounts/logout |
| 请求头部 | application/x-www-form-urlencoded |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| accountId | Integer\(10\) | 是 | 用户ID |
| uuid | String\(64\) | 是 | app的sn，唯一标识app登录所使用的客户端。如果请求cookie中有guid，使用guid查询设备，不使用uuid参数
 |
| accountToken | String&lt;32&gt; | 是 | accessToken，用户登录凭证，标识accountId对应的用户在uuid对应的设备上登录 |

* #### HTTP 请求示例

```
curl -X POST \
  http://openapi.fantem-gateway.com/accounts/logout \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'accountId=919&uuid=touchfjsljdfksdjfksdfsdfsdfsdfs234sdfsd&accountToken=9556003c2c7db7da3b9e5396dac46670%0A'
```

* #### 返回参数

无

* #### 响应示例：

```json
{
    "code": 1,
    "note": "OPERATE_SUCCESS",
    "data": null
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 3 | 必填参数为空。 | 必填参数为空，或者参数错误 |
| 151 | 设备未注册 | touch或者手机没有注册 |



