## 获取最新版本

#### 功能说明

OomiServer2.0新增获取服务器中产品最新版本接口接口主要作用是供cube获取cube与prosyst最新版本固件下载地址与相关参数.

###### 

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmwareRetrieve |
| 请求头部 |  |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| product | String | 是 | 产品名，例如prosyst,OOMICUBE |
| model | String\(11\) | 否 | 用户id。accountId和auid两个参数中，必须传一个参数，且只能传一个参数。 |
| devToken | String | 否 | 当前用户token，如用户未登录则无 |
| accountId | String | 否 | 当前用户id，如用户未登录则无 |
| currentSwVersion | String | 是 | 产品当前版本号 |


* #### HTTP 请求示例
* ##### 初始注册

```
{

    "uuid": "05EE8C4B6DD33CFC",
    "name": "Cube",
    "type": "oomi_cube",
    "acfCode": "161414593d42bd844b9a5240916c87a91bde7f72bcd7462372e2f03fe2ade6ca",
    "randomCode": "RD000000",
    "imei": "",
    "imsi": "",
    "manufacturer": "oomi",
    "model": "oomi_cube_1",
    "systemType": "android",
    "systemVersion": "V0.1.0.1",
    "hardwareVersion": "V1.1.0.1",
    "applicationVersion": "V2.0.4.15",
    "psn": "PSN00000000",
    "additional": {
        "zwaveVersion": "V1.02.0.0",
        "irVersion": "V1.1.0.0",
        "stm8Version": "V1.01.0.0"
    },
    "sn": "A01011725020927",
    "ptopUid": "TFRXEHJXDMPEEC3X111A",
    "wifiMac": "00:03:7F:12:11:2C",
    "bluetoothMac": "00:03:7F:12:11:2C"
}
```

* #### HTTP 请求示例2
* ##### 重复注册
* ```
  {
    "guid": "D3F6A83723D84E96A7BB5C2B3CDCF057",
    "uuid": "05EE8C4B6DD33CFC",
    "name": "Cube",
    "type": "oomi_cube",
    "acfCode": "161414593d42bd844b9a5240916c87a91bde7f72bcd7462372e2f03fe2ade6ca",
    "randomCode": "RD000000",
    "imei": "",
    "imsi": "",
    "manufacturer": "oomi",
    "model": "oomi_cube_1",
    "systemType": "android",
    "systemVersion": "V0.1.0.1",
    "hardwareVersion": "V1.1.0.1",
    "applicationVersion": "V2.0.4.15",
    "psn": "PSN00000000",
    "additional": {
        "zwaveVersion": "V1.02.0.0",
        "irVersion": "V1.1.0.0",
        "stm8Version": "V1.01.0.0"
    },
    "sn": "A01011725020927",
    "ptopUid": "TFRXEHJXDMPEEC3X111A",
    "wifiMac": "00:03:7F:12:11:2C",
    "bluetoothMac": "00:03:7F:12:11:2C"
  }
  ```
* #### 返回参数

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| guid | String&lt;32&gt; | 是 | BFCEB59DEAF44BE2A004FB1B8A5E5507 | 注册成功后的guid，32长度字符串 |
| field1 | String | 否 |  | 预留的返回值，暂时不返回内容 |
| field2 | String | 否 |  | 预留的返回值，暂时不返回内容 |
| field3 | String | 否 |  | 预留的返回值，暂时不返回内容 |

* #### 响应示例：

```json
{
    "code": 1,
    "note": "操作成功",
    "data": {
        "guid": "BFCEB59DEAF44BE2A004FB1B8A5E5507",
        "field1": "",
        "field3": "",
        "field2": ""
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 162 | 设备信息冲突 | sn、ptopUid、wifiMac、bluetoothMac或者randomCode（默认值除外）中的一个冲突或者多个同时冲突 |
| 3 | 重要参数为空 | sn、ptopUid、wifiMac、bluetoothMac或者randomCode任何一个为空， 只有cube，ptopUid才是必传的。参数超长 |
| 1000 | 数据错误 | guid不存在。cube已经在服务器注册了，并且有guid，但是由于cube获取底层数据发生变化，导致**服务器认为这个已不是原来的cube** |
| 1001 | 其他参数错误 | 参数超长等 |



