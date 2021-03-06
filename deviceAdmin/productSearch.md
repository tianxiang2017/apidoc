## 生产环境搜索

#### 功能说明

这个功能给fae查看，查看设备注册是否正常

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/client/production/search|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
<<<<<<< HEAD
| key| String\(255\) | 否 | 搜索关键字 可以是SN、P2P Id、Wifi Mac、BT Mac和PSN|
=======
| key| String\(255\) | 否 | 搜索关键字 |
>>>>>>> 40adc281e6922c027ef6c669a8619a9a8182730d
| status| String\(64\) | 否 | 设备的状态 |
| registerDate| String\(64\) | 否 | 注册时间，时间戳 |


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
| id| Integer\(10\) | 是 | 设备的id |
| guid| String\(64\) | 是 | 设备的guid |
| sn | String\(64\) | 是 | 设备的sn |
| ptopUid | String\(64\) | 否 | p2puid |
| wifiMac | String\(32\) | 是 | wifi mac地址 |
| bluetoothMac | String\(32\) | 是 | 蓝牙mac地址。 |
| uuid | String\(64\) | 是 | uuid。保留参数，不为空，默认值为0。 |
| name | String\(255\) | 否 | 设备名称 |
| randomCode | String\(32\) | 否 | RandomCode|





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



