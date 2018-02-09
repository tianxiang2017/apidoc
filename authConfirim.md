## 鉴权确认

#### 功能说明

鉴权确认。接口完成OOMI服务器对设备的鉴权确认，并且获取OOMI服务器提供的devToken，为后续相关接口访问提供鉴权凭证。调用授权申请接口（authen/apply）后调用此接口完成鉴权。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/authen/confirm |
| 请求头部 | Content-Type:application/x-www-form-urlencoded;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| uuid | 字符串\(64\) | 是 | 设备的sn。圆括号类的长度是最大长度，下同 |
| supportAlg | 字符串&lt;32&gt; | 是 | 鉴权签名。 根据服务器返回的鉴权种子（/authen/apply接口返回的data参数），通过特殊算法（MD5加密）生成的。即supportAlg=MD5\(data\)。结果是32长度的字符串。这个参数和鉴权申请接口的supportAlgs参数没有任何关系，只是命名不规范而已 |
| devType | 字符串\(10\) | 是 | 设备类型。保留参数。例如touch |

* #### HTTP 请求示例

```
curl -X POST \
  http://openapi.fantem-gateway.com/authen/confirm \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Postman-Token: e126bc40-cf6c-5f61-6adb-32843b1b3561' \
  -d 'uuid=touchfjsljdfksdjfksdfsdfsdfsdfs234sdfsd&supportAlg=eb23233993bccea4f0fd4bf48f6da1f8&devType='
```

* #### 返回参数

| 名称 | 类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| devToken | 字符串&lt;32&gt; | 是 |  | 设备token，32长度的字符串，设备鉴权后生成的访问凭证，如果某个接口需要鉴权后才能访问，那么，访问这个接口时需要携带这个token |
| expireTime | 长整型&lt;13&gt; | 是 | 1517559894690 | 过期时间，时间戳，1970年1月1日00:00:00 GMT以来的毫秒数。取值范围2的-63次方到2的63次方减一 |
| validPeriod | 字符串&lt;7&gt; | 是 |  | 固定值2592000 |
| authorityLevel | 字符串&lt;1&gt; | 是 |  | 固定值1 |
| authorityScope | 字符串&lt;0&gt; | 是 |  | 固定值空字符串 |
| requestNumber | 整型&lt;1&gt; | 是 |  | 固定值1 |

* #### 响应示例：

```json
{
    "code": "1",
    "note": "操作成功",
    "data": {
        "requestNumber": 1,
        "expireTime": 1517559894690,
        "authorityLevel": "1",
        "authorityScope": "",
        "validPeriod": "2592000",
        "devToken": "b418306ebba01487e29f60c0bbb6ddec"
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 3 | 必填参数为空，参数错误 | uuid、supportAlg或者devType为空都会返回这个值。注意区分为不传和传空字符串情况. 如果在调用这个接口前，没有调用鉴权申请接口（/authen/apply）也会返回这个错误码。 鉴权签名supportAlg错误也会返回这个值 |



