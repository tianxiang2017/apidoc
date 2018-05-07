# 发送Arm消息

#### 功能说明
获取服务器中产品最新版本接口，接口主要作用是供cube获取cube与prosyst最新版本固件下载地址与相关参数.
很久以前的版本在用，现在没有用，停止维护了。

######

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/push/arm|
| 请求头部 | Content-Type:application/x-www-form-urlencoded |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
|title|String|是  | 消息的Title |
|message|String|是  | 消息的内容     |
|accountId|String|是  | 接受的用户ID |


* #### HTTP 请求示例
curl -X POST \
  http://openapi.fantem-gateway.com/push/register \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'productModel=touch&systemType=touch&uuid=5750936E7DC203D1&channelId=3479075079488766101'
```

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
|  3| 参数错误 | |


