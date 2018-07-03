## 获取topic

#### 功能说明

设备获取一个topic

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/clientTopic/topic/get |
| 请求头部 | GET请求，不用设置 |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| guid | String\(32\) | 是 | 设备的guid |

* #### HTTP 请求示例

```
curl -X GET \
  'http://openapi.fantem-gateway.com/clientTopic/topic/get?guid=myguid' \
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| guid | String&lt;16&gt; | 是 |  | 请求参数中的guid |
| algorithmId | Integer&lt;1&gt; | 是 | 1 | 服务器选择的协议。目前服务器只支持使用MD5进行加密，所有固定返回1 |
| secretKeyId | Integer&lt;1&gt; | 是 | 0 | 固定返回0 |

* #### 响应示例：

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
| 3 | 必填参数为空 | uuid、devType或者supportAlgs为空都会返回这个值. |



