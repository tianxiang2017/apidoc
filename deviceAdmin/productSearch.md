## 生产环境搜索

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/clients/production/search|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| key| String\(255\) | 否 | |
| status|  | 否是 |true |
| registerDate|  | Long | |


* #### HTTP 请求示例
```json
{
	"key": null,
	"status": true,
	"registerDate": "1530633600"
}
```

* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| | | 否 | |


* #### 响应示例：

```json
[{
	"sn": "cubeRegisterOld000",
	"ptopUid": "cubeRegisterOld00000000",
	"wifiMac": null,
	"bluetoothMac": null,
	"id": 100221,
	"guid": "9523400A49844387B11F1B2FD292A77F",
	"uuid": "exsitUUID",
	"name": null,
	"type": 4,
	"ptopConnectMethod": null,
	"acfCode": null,
	"randomCode": null,
	"imei": null,
	"imsi": null,
	"manufacturerId": null,
	"model": null,
	"systemType": 3,
	"systemVersion": null,
	"hardwareVersion": null,
	"applicationVersion": null,
	"psn": null,
	"status": 1,
	"remark": null,
	"deleted": 0
}]
```

* #### 异常返回值

无



