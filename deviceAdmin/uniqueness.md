## Client Uniqueness左边列表

#### 功能说明

Client Uniqueness左边列表

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/client/uniqueness|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
|registerTime | String\(10\) | 否 | 注册时间，时间戳，单位秒 |


* #### HTTP 请求示例


```json
{
	"registerTime": "1531287974"
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
{
    "total": 10690,
    "data": [{
        "sn": "A01011643005003",
        "ptopUid": "92VK4TSBNFWX5VH5111A",
        "wifiMac": "00:03:7F:12:06:EC",
        "bluetoothMac": "00:03:7F:12:06:EC",
        "id": 1760,
        "guid": "E99D5E098D4E49A59CA2A2DA369547D1",
        "uuid": "dev01_ld_1",
        "name": "Cube",
        "type": 4,
        "ptopConnectMethod": "v1",
        "acfCode": "",
        "randomCode": "RD000000",
        "imei": "",
        "imsi": "",
        "manufacturerId": 11,
        "model": "oomi_cube_1",
        "systemType": 3,
        "systemVersion": "V0.2.0.3",
        "hardwareVersion": "V1.1.0.1",
        "applicationVersion": "V2.0.4.18",
        "psn": "PSN00000000",
        "status": 1,
        "remark": null,
        "manufacturer": null
    }]
}
```

* #### 异常返回值

无



