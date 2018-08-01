## google home对接

#### 功能说明
google home与Oomi服务器的对接的接口。接入Google Home智能音箱，实现语音控制Bulb、Plug等智能设备。

1. 实现设备信息的同步
2. 可实现Plug类设备的开关控制
3. 实现Bulb类设备的开关控制、亮度调节、颜色以及色温的设置
4. 实现场景的激活
5. 实现设备状态信息的查询

accessToken放在Authorization请求头中

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]//google/smarthome |
| 请求头部 | Content-Type:application/json;charset=UTF-8 |
| HTTP方式 | GET|

* #### 服务器通过发送相应的指令实现相应的功能。请求参数中的header中的namespace的值体现指令。namespace值和对应功能关系：

|序号| intent | 功能描述 |
|-----| --- | --- |
|1 |action.devices.SYNC|设备同步|
|2 |action.devices.EXECUTE|设备控制|
|3 |action.devices.QUERY|设备查询|

下面分别描述设备同步、设备控制和设备查询参数。


* ### 1. 设备同步

   设备同步的intent为action.devices.SYNC

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| requestId |  String | 是| 本次请求的唯一标识 |
| inputs| Input[]| 是 | 请求参数，是一个元素为Input的数组。目前OOMI服务器仅支持一个Input|

##### Input描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|intent |是  |String | 请求意图。设备同步时，值为action.devices.SYNC|

* #### HTTP 请求示例


```json
{
    "requestId":"1bd5d003-31b9-476f-ad03-71d471922820",
    "inputs":[
        {
            "intent":"action.devices.SYNC"
        }
    ]
	
}
```

* #### 返回参数

返回是一个json数据。

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|requestId  | String  | 是| 请求中的requestId |
|payload |  Payload | 是 |响应数据 |

##### Payload描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|devices |是  |Device[] |同步设备列表  |
|agentUserId |是  |String |OOMI用户ID  |
##### DeviceInfo描述：  



| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| ------------ | ------------ | ------------ | ------------ |
|id  | String | 是| 设备ID。 设备的sn，或者场景id。唯一标识一个设备，多路开关用sn加#加某路开关的序号，例如A01011739000009#1，其中，A01011739000009#0是指多路开关的总开关 |
|type | String | 是| 设备类型。如果是场景取固定值action.devices.types.SCENE。设备类型Bulb和ColorStrip返回action.devices.types.LIGHT；Plug返回action.devices.types.OUTLET；WallSwitch返回action.devices.types.SWITCH； |
|traits |String[] | 是 |设备特征，即设备所支持的动作。目前支持的取值有action.devices.traits.OnOff、action.devices.traits.ColorSpectrum、action.devices.traits.Brightness、action.devices.traits.ColorTemperature和action.devices.traits.Scene |
|name | Name | 是| 设备的名称(用来识别设备)，或者场景名称 |
|willReportState | Boolean | 是 | 是否实时更新状态，固定值false |
|roomHint | String|否|  房间名称 |
|attributes|Attribute[]|否| 设备（或场景）的特殊参数 |
|deviceInfo|Device|否| 设备厂商及软硬件信息|
|customData|Object|否| 设备的自定义信息，平台无法识别，命令会携带此信息|

##### Name描述： 

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| ------------ | ------------ | ------------ | ------------ |
|name | String | 否| 设备（或场景）名称 |
|defaultNames | String[] | 否| 默认名称列表，与name和nicknames必须至少存在一种 |
|nicknames |  String[] | 否| 设备的昵称列表 |

##### DeviceInfo描述： 

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| ------------ | ------------ | ------------ | ------------ |
|manufacture|String|否| 生产商|
|model|String|否| 系统型号|
|hwVersion|String|否| 硬件版本|
|swVersion|String|否| 软件版本|


* #### 响应示例：

```json
{
	"requestId":"4kdlfi23kdfi23kdu982nkvlk09dfw09uff",
	"payload":{
		"devices":[{
			"id":"123sidfsdfsd",
			"type":"Bulb1",
			"traits":["light"],
			"name":{
			    "name":"myName",
			    "nicknames":["mynicknames1", "mynicknames2"],
			    "defaultNames":["defaultNames1", "defaultNames2"]
			}
			"willReportState":false,
			"roomHint":"Bed Room",
			"attributes":[],
			"deviceInfo:{
			    "manufacture":"OOMIO",
			    "model":"1",
			    "hwVersion":"1.0.0",
			    "swVersion":2.2"
			},
			"customData":{
			}
		}
	}
}
```


* ### 2. 设备控制

  设备控制的intent为action.devices.EXECUTE

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| requestId |  String | 是| 本次请求的唯一标识 |
| inputs| Input[]| 是 | 请求参数，是一个元素为Input的数组。目前OOMI服务器仅支持一个Input|

##### Input描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|intent |是  |String | 请求意图。设备控制的intent为action.devices.EXECUTE |
|payload |是  |Payload | 请求参数|


##### Payload描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|commands |Command[] |是  |控制命令的信息，一次只支持一个控制命令。存在多个命令时，只值执行第一个命令|
|executions |是  |Execution |设备类型  |

##### Command描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|devices |是  |Device[] |设备列表|

##### Device描述： 

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| ------------ | ------------ | ------------ | ------------ |
|id     |String|是| 设备id（同步设备信息的时候上传的）|
|customData  |String|否| 设备的自定义信息，同步的时候有，现在就会原样返回|

##### Execution描述： 

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| ------------ | ------------ | ------------ | ------------ |
|command   |String|是| 动作命令|
|params  |Object|是|控制参数(开关、颜色、色温、亮度等信息)|


* #### HTTP 请求示例


```json
{
	"requestId": "xdfg4u8kdfu80934jidfu3ujtiodfu8923jhrdpaz",
	"inputs": [{
		"intent": "action.devices.SYNC",
		"payload": {
			"commands": [{
				"devices": [{
					"id": "",
					"customData": ""
				}]
			}],
			"executions": {
				"command": "",
				"params": ""
			}
		}
	}]
}
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| requestId| String| 是 | 请求的requestId|
| payload| Payload| 是 | 响应信息|

##### Payload描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|commands |是  |String |动作执行的结果|
|errorCode |否  |String |作执行出错的错误码  |

##### Command描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|ids |是  |String[] |设备的id列表|
|result |是  |String |动作执行的结("success"or"error")|
|status |是  |Device[] |动作执行后的设备状态|
|debugString |是 |Device[] |设备列表|

* #### 响应示例：

```json
{
	"requestId": "xdfg4u8kdfu80934jidfu3ujtiodfu8923jhrdpaz",
	"inputs": [{
		"intent": "action.devices.SYNC",
		"payload": {
				"devices": [{
					"id": "",
					"customData": ""
				}]
		}
	}]
}
```



* ### 3. 设备查询

设备查询的intent为action.devices.QUERY

google传入一组设备列表，查询设备当前状态。
这里包括四个状态：
*  1. 在线状态（online参数）
服务器发送查询设备 是否在线指令给网关，然后获取结果返回，如果网关访问设备不在线，返回设备不在线给google home
另外，如果根据设备的sn在服务器中无法找到这个设备的信息，也返回设备不在线给google home
只有网关返回在线并且sn在服务器中也存在时，才返回在线（online参数）
* 2. 开关状态（on参数）
* 3. 亮度 （brightness参数）
* 4. 颜色（color参数）
  

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| requestId |  String | 是| 本次请求的唯一标识 |
| inputs| Input[]| 是 | 请求参数，是一个元素为Input的数组。目前OOMI服务器仅支持一个Input|

##### Input描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|intent |是  |String | 请求意图。设备同步时，值为为action.devices.QUERY|
|payload |是  |Payload | 请求参数|


##### Payload描述：
| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|devices |是  |Device[] |设备列表|

##### Device描述： 

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| ------------ | ------------ | ------------ | ------------ |
|online     |String|是| 设备id（同步设备信息的时候上传的）|
|customData  |String|否| 设备的自定义信息，同步的时候有，现在就会原样返回|


* #### HTTP 请求示例


```json
{
	"header":{
		"namespace":"AliGenie.Iot.Device.Query",
		"name":"Query",
		"messageId":"1bd5d003-31b9-476f-ad03-71d471922820",
		"payLoadVersion":1
	},
	"payload":{
		"accessToken":"access token",
		"deviceId":"123",
		"deviceType":"light",
		"extensions":{
			"extension1":"",
			"extension2":""
		}
	}
}
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| requestId| String| 是 | 请求的requestId|
| payload| Payload| 是 | 响应信息|

##### Payload描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|devices |是  |Device[] |设备的状态信息列表|
|errorCode |否  |String |错误码  |
|debugString |否  |String |调试信息 |

##### Device描述： 

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| ------------ | ------------ | ------------ | ------------ |
|online     |Boolean|是| 设备在线状态，true或者false|
|on |Boolean|否| 设备开关状态，true或者false|
|brightness |Integer |否|亮度 |
|color |Map |否|颜色， 颜色里面spectrumRGB表示RGB颜色的值 |
* #### 响应示例：

```json
{
	"requestId": "xdfg4u8kdfu80934jidfu3ujtiodfu8923jhrdpaz",
	"inputs": [{
		"intent": "action.devices.SYNC",
		"payload": {
				"devices": [{
					"id": "",
					"customData": ""
				}]
		}
	}]
}
```
