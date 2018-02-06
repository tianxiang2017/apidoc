## 设备注册

#### 功能说明

服务器的客户端调用设备注册接口完成设备注册，服务器保存设备信息，并生成一个guid唯一标识该设备。后续设备请求接口使用这个guid

* 设备注册让服务器有能力知道平台已发出cube、touch的信息，知道用户登录的手机信息，以及用户正在使用- 的APP的版本等。设备注册后，系统能够统计用户在各设备使用情况，为后续功能提供支持。
* 设备注册处理考虑正常的注册功能外，需要支持重置、升级、多次注册等功能
* 设备注册功能，除了方便服务器统计设备使用情况，同时，用户和设备绑定，使设备之间信息可以互通。
* 设备注册是很多功能的基础，比如设备鉴权、用户和cube的绑定关系维护、设备状态维护、消息推送等。
* 设备注册主要涉及四个接口 /client/register /push/register /cube/register /client/update/status。
  新的注册接口使用guid唯一标识每个设备，脱离sn的依赖

cube、touch和手机都需要注册。

设备注册时，怎么区分不同的设备？  
1. cube用sn，p2puid，wifi mac地址，蓝牙mac地址和randomCode唯一标识一个cube。注册时不能用sn区分一个cube，因为sn可能重复  
2. app用sn区分不同的设备，sn重复时先休眠sn对应的旧设备。休眠指sn对应的旧设备暂时不可见，需要心跳包激活。这个方法能解决app重置或重装的问题。

设备注册支持重置后注册

设备注册支持旧版本设备升级后注册

设备注册支持同一设备已注册后再次支持（携带guid）

###### 设备的几个状态

删除状态（deleted=1）：设备注册信息已被删除，数据不能再修改

正常状态（status=1）：设备首次注册

重置状态（status=2）：设备重置

占用状态（status=30\)：设备占用某个sn，此sn不能再被注册。当sn冲突时，已注册设备会被修改为这个状态

休眠状态（status=31）：设备处于休眠状态。休眠状态可能是因为app重置（清除缓存）

cube首次注册：新建注册，状态为正常  
cube重置：旧数据为删除，新建注册，状态为重置  
cube注册时sn、p2pUid/wifiMac/蓝牙mac/randomCode冲突：旧数据状态改为占用，新cube无法注册  
app首次注册：新建注册，状态为正常  
app注册sn冲突（或app重置后注册）：旧数据修改为休眠，新建注册，状态为正常

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/client/register |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 名称 | 类型 | 是否必须 | 取值范围 | 描述 |
| :--- | :---: | :---: | :--- | :--- |
| guid | 字符串\(32\) | 否 |  | 初始注册时为空，重复注册时携带guid |
| sn | 字符串 | 是 | 最多64个字符 | 设备的sn。cube的sn不能重复。重复时返回162。 |
| ptopUid | 字符串 | 否 | 最多64个字符 | p2p的uid，cube必填，app不填 |
| wifiMac | 字符串 | 是 | 最多32个字符 | wifi mac地址。cube要求唯一，app没要求 |
| bluetoothMac | 字符串 | 是 | 最多32个字符 | 蓝牙mac地址。cube要求唯一，app没要求 |
| uuid | 字符串 | 是 | 最多64个字符 | uuid。废弃 |
| name | 字符串 | 否 | 最多32个字符 | 设备名称 |
| type | 字符串 | 是 | "oomi\_touch", "oomi\_cube", "android\_phone", "ios\_phone" | 设备类型 |
| acfCode | 字符串 | 否 | 最多64个字符 | acfCode |
| randomCode | 字符串 | 否 | 最多32个字符 | RandomCode |
| imei | 字符串 | 否 | 最多255个字符 | IMEI |
| imsi | 字符串 | 否 | 最多255个字符 | IMSI |
| manufacturer | 字符串 | 是 | 最多255个字符 | 制造商 |
| model | 字符串 | 是 | 最多255个字符 | model |
| systemType | 字符串 | 是 | "android", "ios", "linux", "window", "windows\_phone" | 客户端系统 |
| systemVersion | 字符串 | 是 | 最多32个字符 | 固件版本号 |
| hardwareVersion | 字符串 | 否 | 最多32个字符 | 硬件版本号 |
| applicationVersion | 字符串 | 是 | 最多32个字符 | apk版本号 |
| psn | 字符串 | 否 | 最多64个字符 | cube的psn |
| zwaveVersion | 字符串\(100\) | 否 |  | cube才有的参数 |
| irVersion | 字符串\(100\) | 否 |  | cube才有的参数 |
| stm8Version | 字符串\(100\) | 否 |  | cube才有的参数 |

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

| 名称 | 类型 | 是否必选 | 描述 |
| :--- | :---: | :---: | :--- |
| guid | 字符串 | 是 | 注册成功后的guid，32长度字符串 |
| field1 | 字符串 | 否 | 预留的返回值，暂时不返回内容 |
| field2 | 字符串 | 否 | 预留的返回值，暂时不返回内容 |
| field3 | 字符串 | 否 | 预留的返回值，暂时不返回内容 |

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



