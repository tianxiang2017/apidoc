## Alexa smart home同步数据

#### 功能说明

Alexa同步用户设备信息。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/smart_home/synchrodata |
| 请求头部 |  |
| HTTP方式 | GET|

* ### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| accessToken| String\(100\)| 是 | access token|


* #### HTTP 请求示例

```
GET HTTP/1.1
http://openapi.fantem-gateway.com/smart_home/synchrodata?accountToken=294D412BD5A20464043F2381EC3EB6C7

```


* #### 返回参数
  返回数据一个数组，数组元素内容如下：

  

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| applianceId| String| 是 | | 设备的sn，或者场景id。。sn唯一标识一个设备，多路开关用sn加#加某路开关的序号，例如A01011739000009#1，其中，A01011739000009#0是指多路开关的总开关 |
| manufacturerName| String | 否 |  | 固定值FANTEM|
| modelName| String | 否 |  | 设备的model |
| version| String | 否 |  | 固定字符串“1.0” |
| friendlyName| String | 否 |  | 设备名称，或者场景名称 |
| friendlyDescription| String | 否 |  |  |
| isReachable| Boolean | 否 |  | 固定值true |
| actions| String[] | 否 |  |这个设备支持的action，或者场景支持的action（场景只有turnOn这一个action） |
| type| String | 否 |  |场景时返回scene |
| additionalApplianceDetails| Map| 否 |  |场景时返回 |
| applianceTypes| String[] | 否 | |场景时返回["SCENE_TRIGGER"] |


* #### 响应示例：

##### 设备响应示例
```json
[
    {
        "applianceId": "A99971612000063",
        "modelName": "FT096",
        "isReachable": true,
        "manufacturerName": "FANTEM",
        "friendlyDescription": "Living Room",
        "version": "1.0",
        "actions": [
            "turnOn",
            "turnOff"
        ],
        "friendlyName": "Plug"
    },
    {
        "applianceId": "A01011722015011",
        "modelName": "FT098",
        "isReachable": true,
        "manufacturerName": "FANTEM",
        "friendlyDescription": "Living Room",
        "version": "1.0",
        "actions": [
            "setColorTemperature",
            "setColor",
            "turnOn",
            "turnOff",
            "setPercentage"
        ],
        "friendlyName": "Bulb"
    }
]
```

##### 场景示例
```json
[
    {
        "applianceId":"1",
        "manufacturerName":"FANTEM",
        "modelName":"FT444",
        "version":"1.0",
        "friendlyName":"on away",
        "friendlyDescription":"Oomi Home",
        "isReachable":true,
        "actions":["turnOn"],
        "type":"scene",
        "additionalApplianceDetails":{},
        "applianceTypes":["SCENE_TRIGGER"]
    }
]
```



* #### 异常返回值
无


