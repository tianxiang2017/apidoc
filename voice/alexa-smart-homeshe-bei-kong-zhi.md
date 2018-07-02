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
| accessToken| String| 是 | access token|
| action| String| 是 |控制动作。同步数据接口返回的actions中一个|
| applianceId| String| 是 | sn |
| value | String | 否   | 不同的action对应的值类型可能不一样|

| hue| String | 否 |  setColor动作需要用这个值  |
| saturation| String | 否 |  setColor动作需要用这个值 |
| brightness| String | 否 | setColor动作需要用这个值   |
| deltaPercentage| String | 否 | incrementPercentager动作需要用这个值  |
| deltaPercentage| String | 否 | decrementPercentage动作需要用这个值 |









* #### HTTP 请求示例



* #### 返回参数
| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| applianceId| String| 是 | | sn |
| manufacturerName| String | 否 |  | 固定值FANTEM|
| modelName| String | 否 |  |  |
| version| String | 否 |  | 固定字符串“1.0” |
| friendlyName| String | 否 |  |  |
| friendlyDescription| String | 否 |  |  |
| isReachable| String | 否 |  | 固定值true |
| actions| String[] | 否 |  | |
| type| String | 否 |  |场景时返回scene |
| additionalApplianceDetails| Map| 否 |  |场景时返回 |
| applianceTypes| String | 否 | |场景时返回["SCENE_TRIGGER"] |


* #### 响应示例：



* #### 异常返回值



