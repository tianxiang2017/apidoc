## 授权申请

#### 功能说明

未鉴权的设备无法访问某些接口（例如绑定cube接口）。通过设备鉴权，设备获得访问这些接口的能力。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/authen/apply |
| 请求头部 | GET请求，不用设置 |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| uuid | String\(64\) | 是 | 设备的sn。圆括号内数字是最大程度。下同 |
| devType | String\(10\) | 是 | 设备类型。保留参数。默认值为null |
| supportAlgs | String\(1\) | 是 | 鉴权协议。保留参数。默认使用MD5加密。默认值为null |

* #### HTTP 请求示例

```
curl -X GET \
  'http://openapi.fantem-gateway.com/authen/apply?uuid=touchfjsljdfksdjfksdfsdfsdfsdfs234sdfsd&devType=&supportAlg=1' \
```

* #### 返回参数

| 名称 | 类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| data | String&lt;16&gt; | 是 | m60vyG04VVVmY1ZS | 鉴权种子，调用鉴权确认接口（/authen/confirm）前需要使用这个值。方括号内是固定长度。 |
| algorithmId | Integer&lt;1&gt; | 是 | 1 | 服务器选择的协议。目前服务器只支持使用MD5进行加密，所有固定返回1 |
| secretKeyId | Integer&lt;1&gt; | 是 | 0 | 固定返回0 |

响应示例：

```json
{
    "code": 1,
    "note": "OPERATE_SUCCESS",
    "data": {
        "data": "SsiFs6NxP5V01z3d",
        "algorithmId": 1,
        "secretKeyId": 0
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 3 | 必填参数为空 | uuid、algorithmId或者secretKeyId为空都会返回这个值.注意区分为不传和传空字符串情况 |



