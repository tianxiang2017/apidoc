## 查询设备详情

#### 功能说明

查询设备详情

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/client/findDetailByGuid|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| guid| String\(32\) | 是 | |


* #### HTTP 请求示例
```
\[域名\]/client/findDetailByGuid?guid=xxxxxxxxxxxx
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
|client | Client | 否 | |


* #### 响应示例：
```json
{
	"client": {
		"sn": "97D3A855CE3E2377",
		"ptopUid": "",
		"wifiMac": "00:03:7f:21:49:98",
		"bluetoothMac": "00:03:7F:21:49:98",
		"id": 1735,
		"guid": "6C4224CD2E974CE8968B43F4C9D9557A",
		"uuid": "BBC74206AC199AF2",
		"name": "",
		"type": 3,
		"ptopConnectMethod": null,
		"acfCode": "",
		"randomCode": "",
		"imei": "012345678912345",
		"imsi": "",
		"manufacturerId": 10,
		"model": "rk30sdk",
		"systemType": 3,
		"systemVersion": "4.4.4",
		"hardwareVersion": "V1.0.0.19",
		"applicationVersion": "2.0.4.8",
		"psn": "2.0.4.8",
		"status": 31,
		"remark": null,
		"deleted": 0,
		"deleteAt": null,
		"sleepTime": 1515326747000,
		"manufacturer": null
	}
}
```

* #### 异常返回值

无



