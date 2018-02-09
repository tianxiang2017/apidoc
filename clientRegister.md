## 设备注册

#### 功能说明

服务器的客户端调用设备注册接口完成设备注册，服务器保存设备信息，并生成一个guid唯一标识该设备。后续设备请求接口使用这个guid

* 设备注册处理考虑正常的注册功能外，需要支持重置、升级、多次注册（携带guid）等功能。

* cube、touch和手机都需要注册。

设备注册时，怎么区分不同的设备？  
1. cube用sn，p2puid，wifi mac地址，蓝牙mac地址和randomCode唯一标识一个cube。注册时不能用sn区分一个cube，因为sn可能重复  
2. app用sn区分不同的设备，sn重复时先休眠sn对应的旧设备。休眠指sn对应的旧设备暂时不可见，需要心跳包激活。

###### 

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/client/register |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| guid | String\(32\) | 否 | 初始注册时为空，重复注册时携带guid |
| sn | String\(64\) | 是 | 设备的sn。cube的sn不能重复。重复时返回162。 |
| ptopUid | String\(64\) | 否 | p2p的uid，cube必填，app不填 |
| wifiMac | String\(32\) | 是 | wifi mac地址。cube要求唯一，app没要求 |
| bluetoothMac | String\(32\) | 是 | 蓝牙mac地址。cube要求唯一，app没要求 |
| uuid | String\(64\) | 是 | uuid。废弃 |
| name | String\(32\) | 否 | 设备名称 |
| type | String&lt;E&gt; | 是 | 设备类型。长度为&lt;E&gt;表示只能取固定值。只能取以下几个值中的一个值：oomi\_touch，oomi\_cube，android\_phone，ios\_phone" |
| acfCode | String\(64\) | 否 | acfCode |
| randomCode | String\(32\) | 否 | RandomCode |
| imei | String\(255\) | 否 | IMEI |
| imsi | String\(255\) | 否 | IMSI |
| manufacturer | String\(255\) | 是 | 制造商 |
| model | String\(255\) | 是 | model |
| systemType | String&lt;E&gt; | 是 | 客户端系统。长度为&lt;E&gt;表示只能取固定值。只能取以下几个值中的一个值：android， ios， linux， window， windows\_phone |
| systemVersion | String\(32\) | 是 | 固件版本号 |
| hardwareVersion | String\(32\) | 否 | 硬件版本号 |
| applicationVersion | String\(32\) | 是 | apk版本号。cube的apk版本号，或者touch的apk的版本号，或者手机的apk版本号 |
| psn | String\(64\) | 否 | cube的psn |
| zwaveVersion | String\(100\) | 否 | zwave版本。cube才有的参数 |
| irVersion | String\(100\) | 否 | ir版本。cube才有的参数 |
| stm8Version | String\(100\) | 否 | stm8编程。cube才有的参数 |

* #### HTTP 请求示例

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

  ```
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



