## Alexa设备控制

#### 功能说明

Alexa Customer Skill设备控制。


#### Alexa设备控制

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/alexaControl |
| 请求头部 | Content-Type:application/json;charset=UTF-8 |
| HTTP方式 | GET|

* ### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| accountToken| String| 是 | access_token|
| intent| String| 是 | Intent，例如OnOffByName  |
| deviceName| String| 否 | 设备名称 |
| roomName| String| 否 | 房间名称 |
| value| String| 否 | 参数值 |
| action| String| 否 | 动作 |
| deviceType| String| 否 | 设备类型 |
| sceneName| String| 否 | 场景名 |


* #### HTTP 请求示例



```
GET  HTTP/1.1
http://openapi.fantem-gateway.com/alexaControl?accountToken=294D412BD5A20464043F2381EC3EB6C7&intent=SetValueByName&deviceName=bub1&value=1&roomName=bedroom

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

无

