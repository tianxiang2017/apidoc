# 推送信息注册

#### 功能说明

此接口主要是供touch与手机端使用，目的是为了能实现消息推送，此接口会完善数据库中此设备的一些参数。此接口也用于旧版（2.0.3及以前版本）手机app注册。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/push/register |
| 请求头部 | Content-Type:application/x-www-form-urlencoded |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| uuid | String\(64\) | 是 | 设备的sn。 |
| channeId | String\(100\) | 是 | 设备的channelId，此id应该是消息推送商分配给设备的唯一id |
| systemType | String&lt;E&gt; | 是 | 设备的系统类型，touch android 或者 ios |
| systemVersion | String\(32\) | 是 | 设备当前的系统版本 |
| productModel | String\(255\) | 是 | 产品类型，此参数需要根据规定的方式赋值.String型参数，必须传 |

* #### HTTP 请求示例

  curl -X POST \  
  [http://openapi.fantem-gateway.com/push/register](http://openapi.fantem-gateway.com/push/register) \  
  -H 'Content-Type: application/x-www-form-urlencoded' \  
  -d 'productModel=touch&systemType=touch&uuid=5750936E7DC203D1&channelId=3479075079488766101'  
  \`\`\`

* #### 返回参数

  无

* #### 响应示例：

```json
{
    "code":"1",
    "note":"OPERATION_SUCCESS"
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 3 | 参数错误 |  |



