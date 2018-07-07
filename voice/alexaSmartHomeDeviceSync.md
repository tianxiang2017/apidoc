## Alexa smart home设备控制

#### 功能说明

Alexa同步用户设备信息。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/smart_home/control|
| 请求头部 |  |
| HTTP方式 | GET|

* ### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| accessToken| String\(100\)| 是 | access token|
| action| String| 是 |控制动作。同步数据接口返回的actions中一个|
| applianceId| String| 是 | sn |
| value | String | 否   | 不同的action对应的值类型可能不一样|
| hue| String | 否 |  setColor动作需要用这个值  |
| saturation| String | 否 |  setColor动作需要用这个值 |
| brightness| String | 否 | setColor动作需要用这个值   |
| deltaPercentage| String | 否 | incrementPercentager动作需要用这个值  |
| deltaPercentage| String | 否 | decrementPercentage动作需要用这个值 |



* #### HTTP 请求示例

```
GET  HTTP/1.1
http://openapi.fantem-gateway.com/alexaControl?accountToken=294D412BD5A20464043F2381EC3EB6C7&action=SetValueByName&applianceId=A01011725020927&value=1

```





* #### 返回参数
返回一个字符串。当执行动作失败，返回failed；当执行成功，返回OK


* #### 响应示例：

OK

* #### 异常返回值
无


