## 天猫smarthome

#### 功能说明

Google Home的Actions on Google平台与Oomi服务器的对接的接口。
执行namespace值和对应操作关系：
1.AliGenie.Iot.Device.Discovery：设备发现，即设备同步
2.AliGenie.Iot.Device.Control:设备控制
3.AliGenie.Iot.Device.Query 设备查询，目前尚不支持

accessToken放在Authorization请求头中

#### Alexa设备控制

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/tmall/smarthome |
| 请求头部 | Content-Type:application/json;charset=UTF-8 |
| HTTP方式 | GET|

* ### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| header| String| 是 | {"namespace":"","name":""}|
| payload| String| 是 | {“accessToken”} |




* #### HTTP 请求示例



* #### 返回参数

无

* #### 响应示例：

```json

```



* #### 异常返回值



