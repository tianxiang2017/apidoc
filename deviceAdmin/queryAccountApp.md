## 用户登录的app列表

#### 功能说明
查询用户登录的手机或者touch注册信息


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/client/queryAccountApp|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
|page | Integer\(10\) | 否 | 第几页，默认1|
| pageSize | Integer\(10\) | 否 |每页大小，默认10 |
| accountId| Integer\(10\) | 否 |用户id |


* #### HTTP 请求示例


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

```
{
	"total": 10690,
	"data": [{
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
		"manufacturer": null
	}]
}
```

* #### 异常返回值

无



