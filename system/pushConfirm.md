# 推送消息确认

#### 功能说明

这个接口主要用于在APP收到推送消息后，向服务器确认消息收到。保留接口。如果stakId或者channelId为null，返回3；其他情况返回成功

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/push/confirmPush |
| 请求头部 |  |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| stakId | String | 是 | 任务ID，APP收到推送消息时，会收到stakID,回传过来就可以 |
| channelId | String | 是 | 百度推送的channelId。 |

* #### HTTP 请求示例

  curl -X POST \  
  [http://openapi.fantem-gateway.com/push/confirmPush?stakId=w4rf23rsdfd&channelId=dr3wefrdfdf](http://openapi.fantem-gateway.com/push/confirmPush?stakId=w4rf23rsdfd&channelId=dr3wefrdfdf)  
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



