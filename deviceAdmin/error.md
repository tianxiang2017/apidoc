## Client Uniqueness右边列表

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/clients/error|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| | String\(255\) | 否 | |


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

无

* #### 异常返回值

无



