## google home对接

#### 功能说明

google home对接的调用接口。
执行intent值和对应操作关系：
1.action.devices.QUERY：查询操作
2.action.devices.EXECUTE:执行设备控制
2.action.devices.SYNC 设备同步

accessToken放在Authorization请求头中

#### Alexa设备控制

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]//google/smarthome |
| 请求头部 | Content-Type:application/json;charset=UTF-8 |
| HTTP方式 | GET|

* ### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|requestId | String | 是 |本次请求的唯一标识 |
|inputs | Array | 是|包含本次请求的意图.inputs是一个Array，里面的每一个Object都包含一个请求的意图intent，但实际上目前仅支持一个intent。 |



* #### HTTP 请求示例



* #### 返回参数

无

* #### 响应示例：

```json

```



* #### 异常返回值



