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
| intent| String| 是 |  |



* #### HTTP 请求示例



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

