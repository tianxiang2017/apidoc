## 天猫对接

#### 功能说明

天猫平台与Oomi服务器的对接的接口。这个使用天猫精灵音箱控制OOMI智能设备。

- 1、实现设备信息同步
- 2、实现智能插座、智能开关类设备的开关控制
- 3、实现智能灯泡设备的开关、亮度、颜色和色温控制
- 4、实现窗帘、电机类设备的开关、百分比控制
- 5、实现设备状态的查询  

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/tmall/smarthome |
| 请求头部 | Content-Type:application/json;charset=UTF-8 |
| HTTP方式 | POST |

* #### 服务器通过发送相应的指令实现相应的功能。请求参数中的header中的namespace的值体现指令。namespace值和对应功能关系：

|序号| namespace | 功能描述 |
|-----| --- | --- | 
|1 |AliGenie.Iot.Device.Discovery|设备同步，设备发现|
|2 |AliGenie.Iot.Device.Control|设备控制|
|3 |AliGenie.Iot.Device.Query |设备查询|

下面分别描述设备同步、设备控制和设备查询参数。

* ### 1. 设备同步

   设备同步的namespace为AliGenie.Iot.Device.Discovery

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| header| Header| 是 | 请求头部|
| payload| Payload| 是 | 请求消息参数|

##### Header描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|namespace |是  |string |消息命名空间，设备同步时为AliGenie.Iot.Device.Discovery   |
|name |是  |string |消息名称，设备同步时为DiscoveryDevices   |
|messageId |是  |string |消息id，本次消息的唯一标识，用于跟踪消息  |
|payLoadVersion |是  |int |payload版本，目前为1  |

##### Payload描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|accessToken |是  |string |授权访问码   |


* #### HTTP 请求示例


```json
{
	"header":{
		"namespace":"AliGenie.Iot.Device.Discovery",
		"name":"DiscoveryDevices",
		"messageId":"1bd5d003-31b9-476f-ad03-71d471922820",
		"payLoadVersion":1
	},
	"payload":{
		"accessToken":"access token"
	}
}
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| header| Header| 是 | 响应头部|
| payload| Payload| 是 | 响应数据|

##### Header描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|namespace |是  |string |消息命名空间，与请求相同|
|name |是  |string |消息名称，设备同步时为DiscoveryDevices   |
|messageId |是  |string |消息id，与请求相同|
|payLoadVersion|是  |int |payload版本，目前为1  |

##### Payload描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|devices |是  |Device[] |同步设备列表  |

##### Device参数说明：  

|  参数名 | 必选  | 类型  |  说明 |
| ------------ | ------------ | ------------ | ------------ |
| deviceId  |  是 | string  | 设备id，唯一标识  |
| deviceType  |  是 | string  | 设备类型  |
| deviceName  |  是 | string  |  设备名称 |
| brand  | 是  |  string | 设备品牌  |
| model  | 是  |  string | 设备型号  |
| zone  |  否 | string  |  位置信息 |
| icon  |  是 | string  | 产品标志，像素大小160×160，连接必须是https协议的  |
| properties  | 是  | Array  |  参数属性列表 |
| actions  | 是  | Array  |  设备支持的动作 |
|  extensions | 否  | Object  | 扩展属性，可自定义  |



* #### 响应示例：

```json
{
	"header":{
		"namespace":"AliGenie.Iot.Device.Discovery",
		"name":"DiscoveryDevicesResponse",
		"messageId":"1bd5d003-31b9-476f-ad03-71d471922820",
		"payLoadVersion":1
	},
	"payload":{
		"devices":[{
			"deviceId":"123",
			"deviceName":"Bulb1",
			"deviceType":"light",
			"zone":"",
			"brand":"OOMI",
			"model":"FT098",
			"icon":"https://api.proprod.fantem-gateway.com/deviceIcon/bulb.png",
			"properties":[{
				"name":"color",
				"value":"Red"
			}],
			"actions":[
				"TurnOn",
				"TurnOff",
				"SetBrightness",
				"AdjustUpBrightness",
				"AdjustDownBrightness",
				"SetColor",
				"Query"
			],
			"extensions":{
				"extension1":"",
				"extension2":""
			}
		}]
	}
}
```

天猫精灵支持的设备类型（deviceType）： 

| 设备类型（deviceType）  |  说明 |  支持动作（actions） |
| ------------ | ------------ | ------------ |
| light | 灯泡类设备 | TurnOn, TurnOff, SetBrightness, AdjustUpBrightness, AdjustDownBrightness, SetColor, SetMode |
| outlet | 插座类设备 | TurnOn, TurnOff |
| switch | 开关类设备 | TurnOn, TurnOff |
| curtain | 窗帘设备 | TurnOn, TurnOff(百分比控制暂未知，待验证) |

其他的暂未支持。


动作(action)说明：  

| 动作  |  说明 | 
| ------------ | ------------ |
| TurnOn  |打开设备  |
| TurnOff |关闭设备 |
| SetBrightness | 亮度调节 |
| SetColor | 颜色调节 |
| SetMode | 设置模式 |
| AdjustUpBrightness | 亮度调亮 |
| AdjustDownBrightness | 亮度调暗 |  




* ### 2. 设备控制

  设备控制的namespace为AliGenie.Iot.Device.Control

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| header| Header| 是 | 请求头部|
| payload| Payload| 是 | 请求消息参数|

##### Header描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|namespace |是  |string |消息命名空间，设备控制时为AliGenie.Iot.Device.Control   |
|name |是  |string |消息名称，设备同步时为DiscoveryDevices   |
|messageId |是  |string |消息id，本次消息的唯一标识，用于跟踪消息  |
|payLoadVersion |是  |int |payload版本，目前为1  |

##### Payload描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|accessToken |是  |string |授权访问码   |
|deviceId |是  |string |设备id，唯一标识  |
|deviceType |是  |string |设备类型  |
|attribute |是  |string |控制参数名称  |
|value |是  |string |控制参数的值   |
|extension |否  |Object |设备自定义扩展信息，与设备同步上传的信息相同   |

* #### HTTP 请求示例


```json
{
	"header":{
		"namespace":"AliGenie.Iot.Device.Control",
		"name":"TurnOn",
		"messageId":"1bd5d003-31b9-476f-ad03-71d471922820",
		"payLoadVersion":1
	},
	"payload":{
		"accessToken":"access token",
		"deviceId":"123",
		"deviceType":"light",
		"attribute":"powerstate",
		"value":"on",
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
| header| Header| 是 | 响应头部|
| payload| Payload| 是 | 响应数据|

##### Header描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|namespace |是  |string |消息命名空间，与请求相同|
|name |是  |string |消息名称，在请求的消息名称后面追加一个Response  |
|messageId |是  |string |消息id，与请求相同|
|payLoadVersion|是  |int |payload版本，目前为1  |

##### Payload描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|deviceId |是  |String |同步设备列表  |
|errorCode |否  |String |错误码  |
|message |否  |String |错误信息  |

* #### 响应示例：

```json
{
	"header":{
		"namespace":"AliGenie.Iot.Device.Control",
		"name":"TurnOnResponse",
		"messageId":"1bd5d003-31b9-476f-ad03-71d471922820",
		"payLoadVersion":1
	},
	"payload":{
		"deviceId":"123"
	}
}
```
#### 设备的动作(header中的name)与参数的说明：  

|  设备动作 | 参数  | 参数说明  |
| ------------ | ------------ | ------------ |
|  TurnOn |  "attribute":"powerstate", "value":"on" |  on:开 |
|  TurnOff | "attribute":"powerstate", "value":"off"  | off:关 |
| SetBrightness | "attribute":"brightness", "value":"30" | 这里value的取值有几种情况：1、max/min，设置最大/最小亮度；2、百分比，设置百分比；3、整数，设置整数|
| SetColor | "attribute":"color", "value":"Red" | 这里会根据识别到的颜色名称直接发颜色名称过来，而不是颜色的RGB值 |
|SetMode | "attribute":"mode", "value":"auto" | 支持的模式的名称，可自定义，非固定，值为模式的名称|
|AdjustUpBrightness | "attribute":"brightnessStep", "value":"10" | 返回的参数是步长，默认值为10 |
|AdjustDownBrightness | "attribute":"brightnessStep", "value":"10" |返回的参数是步长，默认值为10 |

#### AliGenie支持控制的颜色  

| 颜色名称  | 对应的中文  |
| ------------ | ------------ |
| Red  |  红色 |
| Yellow  | 黄色  |
| Blue  | 蓝色  |
| Green | 绿色  |
| White  | 白色  |
| Black  | 黑色  |
| Cyan  |  青色 |
| Purple  | 紫色  |
| Orange  | 橙色  |



* ### 3. 设备查询

  设备查询的namespace为AliGenie.Iot.Device.Query

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| header| Header| 是 | 请求头部|
| payload| Payload| 是 | 请求消息参数|

##### Header描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|namespace |是  |string |消息命名空间，设备查询为AliGenie.Iot.Device.Query   |
|name |是  |string |消息名称，设备查询为Query   |
|messageId |是  |string |消息id，本次消息的唯一标识，用于跟踪消息  |
|payLoadVersion |是  |int |payload版本，目前为1  |

##### Payload描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|accessToken |是  |string |授权访问码   |
|deviceId |是  |string |设备id，唯一标识  |
|deviceType |是  |string |设备类型  |
|extension |否  |Object |设备自定义扩展信息，与设备同步上传的信息相同   |

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
| header| Header| 是 | 响应头部|
| payload| Payload| 是 | 响应数据|
| properties| Propertie[]| 是 | 设备属性列表|

##### Header描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|namespace |是  |string |消息命名空间，与请求相同|
|name |是  |string |消息名称，在请求的消息名称后面追加一个Response  |
|messageId |是  |string |消息id，与请求相同|
|payLoadVersion|是  |int |payload版本，目前为1  |

##### Payload描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|deviceId |是  |String |同步设备列表  |
|errorCode |否  |String |错误码  |
|message |否  |String |错误信息  |

##### Propertie描述：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
|name |否  |String |s属性名  |
|value |否  |String |属性值  |



* #### 响应示例：

```json
{
	"properties":[
		{
			"name":"powerstate",
			"value":"on"
		}, 
		{
			"name":"color",
			"value":"Red"
		}, 
		{
			"name":"brightness",
			"value":"16"
		}
	]
	"header":{
		"namespace":"AliGenie.Iot.Device.Control",
		"name":"TurnOnResponse",
		"messageId":"1bd5d003-31b9-476f-ad03-71d471922820",
		"payLoadVersion":1
	},
	"payload":{
		"deviceId":"123"
	}
}
```
#### 设备的动作(header中的name)与参数的说明：  

|  设备动作 | 参数  | 参数说明  |
| ------------ | ------------ | ------------ |
|  TurnOn |  "attribute":"powerstate", "value":"on" |  on:开 |
|  TurnOff | "attribute":"powerstate", "value":"off"  | off:关 |
| SetBrightness | "attribute":"brightness", "value":"30" | 这里value的取值有几种情况：1、max/min，设置最大/最小亮度；2、百分比，设置百分比；3、整数，设置整数|
| SetColor | "attribute":"color", "value":"Red" | 这里会根据识别到的颜色名称直接发颜色名称过来，而不是颜色的RGB值 |
|SetMode | "attribute":"mode", "value":"auto" | 支持的模式的名称，可自定义，非固定，值为模式的名称|
|AdjustUpBrightness | "attribute":"brightnessStep", "value":"10" | 返回的参数是步长，默认值为10 |
|AdjustDownBrightness | "attribute":"brightnessStep", "value":"10" |返回的参数是步长，默认值为10 |

#### AliGenie支持控制的颜色  

| 颜色名称  | 对应的中文  |
| ------------ | ------------ |
| Red  |  红色 |
| Yellow  | 黄色  |
| Blue  | 蓝色  |
| Green | 绿色  |
| White  | 白色  |
| Black  | 黑色  |
| Cyan  |  青色 |
| Purple  | 紫色  |
| Orange  | 橙色  |




* #### 错误响应（全局适用）  

错误响应示例:
```
{
	"header":{
		"namespace":"AliGenie.Iot.Device.XXX",
		"name":"ErrorResponse",
		"messageId":"1bd5d003-31b9-476f-ad03-71d471922820",
		"payLoadVersion":1
	},
	"payload":{
		"deviceId":"123",
		"errorCode":"DEVICE_NOT_SUPPORT_FUNCTION",
		"message":"device not support"
	}
}
```
| 错误码  |  对应的message | 说明  |
| ------------ | ------------ | ------------ |
|  INVALIDATE_CONTROL_ORDER | invalidate control order  | 控制指令不正确  |
| SERVICE_ERROR  |  服务错误原因（自定义） | 服务异常  |
| DEVICE_NOT_SUPPORT_FUNCTION  | device not support  | 设备不支持该操作  |
| INVALIDATE_PARAMS  | invalidate params  | 请求参数有误  |
|  DEVICE_IS_NOT_EXIST | device is not exist  | 设备未找到  |
|  IOT_DEVICE_OFFLINE | device is offline  |  设备离线 |
| ACCESS_TOKEN_INVALIDATE  | access_token is invalidate  | access_token无效  |

