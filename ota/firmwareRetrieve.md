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
| model | String\(11\) | 否 | 默认为1 |
| devToken | String | 否 | 当前用户token，如用户未登录则无 |
| accountId | String | 否 | 当前用户id，如用户未登录则无 |
| currentSwVersion | String | 是 | 产品当前版本号 |
| isHSLTouch | String | 否 | 老版本的Touch的product叫touch，而不是OOMI\_Touch\_App，所以为了区分华商龙还是亿道的，就加了这个字段。true/false |
| feature | String | 否 | 产品特殊特征，拥有特征的产品，必传参数 |

* #### HTTP 请求示例

```json
{
    "code": "1",
    "note": "OPERATE_SUCCESS",
    "data": {
        "enDescription": "R37z96hdh53a8oG9A52s",
        "product": "OOMI_Touch_APP",
        "password": "R37z96hdh53a8oG9A52s",
        "protocol": "http",
        "firmwareId": 104,
        "compel": false,
        "oldSwVersion": "V0.0.0.0",
        "swVersion": "V2.0.6.5",
        "isFullPackage": true,
        "releaseTime": "2017-12-28,05:55:47",
        "md5Code": "601A08521F7BE35D6FD3A44411A468DE",
        "firmwareUrl": "http://ota.fantem-gateway.com/firmware/OOMI_Touch_APP/1/2/V1-0-0-0/OOMI_Touch_APP-V0.0.0.0-V2.0.6.5.apk",
        "hwVersion": "V1.0.0.0",
        "firmwareBinds": [],
        "username": "Awx0YRuq8LNzrn21",
        "cnDescription": "R37z96hdh53a8oG9A52s",
        "model": "1",
        "size": "55968394",
        "feature": "",
        "versionRank": 0,
        "protocolVersion": "1.1"
    }
}
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| firmwareId | Integer | 否 |  | 固件包ID |
| product | String | 否 |  | 产品名，与参数中产品名相同 |
| model | String | 否 |  | 型号，固定为"1" |
| hwVersion | String | 否 |  | 硬件版本号 |
| feature | bool | 否 |  | product的特征，默认为空字符串 |
| oldSwVersion | String | 否 |  | 旧版本号，当此包为全量包时，此参数无效。如果此包为增量包，则表示增量前版本号 |
| swVersion | String | 否 |  | 此包当前版本号，当此包为增量包时，表示为增量后版本号 |
| isFullPackage | String | 否 |  | 是否为全量包，true则表示为全量包，false则表示为增量包 |
| firmwareUrl | String | 否 |  | 下载此包的url，get请求下载 |
| protocol | String | 否 |  | 下载包的协议，固定为http |
| protocolVersion | String | 否 |  | 协议，固定为1.1 |
| username | String | 否 |  | 下载包时需要携带的用户名 |
| password | String | 否 |  | 下载此包时，需要携带的密码 |
| cnDescription | String | 否 |  | 此包的中文说明 |
| enDescription | String | 否 |  | 包的英文说明 |
| size | String | 否 |  | 包的大小 |
| md5Code | String | 否 |  | md5值，供校验包的真伪 |
| releaseTime | String | 否 |  | 发布时间，就是管理员在后台上传包的时间 |
| compel | bool | 否 |  | 是否强制下载，固定为false |
| versionRank | String | 否 |  | 0表示gamma版本，1表示beta版本，2表示alpha版本，这个字段不再使用，默认为0 |
| firmwareBinds | array | 否 |  | 和这个更新包绑定的版本，一般为空队列 |

* #### 响应示例：

```json
{
    "code": "1",
    "note": "OPERATE_SUCCESS",
    "data": {
        "firmwareId": 58,
        "product": "prosyst",
        "model": "1",
        "hwVersion": "1.0.0.0",
        "oldSwVersion": "0.0.0.0",
        "swVersion": "2.0.0.33",
        "isFullPackage": true,
        "firmwareUrl": "http://ota.fantem-gateway.com/firmware/prosyst/1/2/1-0-0-0/prosyst-0.0.0.0-2.0.0.33.apk",
        "firmwareName": null,
        "protocol": "http",
        "protocolVersion": "1.1",
        "username": "xxx",
        "password": "xxx",
        "cnDescription": null,
        "enDescription": "1. Update the UI and OTA flow; \n\n2. Integrate more Devices.\n\n3. Bugs fixing.",
        "size": "11769176",
        "md5Code": "689EE591272FA692320C73CE49187257",
        "testMode": null,
        "releaseTime": "2017-05-26,11:59:38",
        "compel": false,
        "versionRank": 0,
        "feature": null,
        "firmwareBinds": null,
        "fullPackage": true
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 601 | 对应的product找不到 | 传过来的product参数，在服务器找不到，例如把 OOMI\_Cube\_App 写成 OOMI\_Cube\_AAA |
| 603 | 当前设备版本已经是最新 | 传过来的版本比服务器上要高，就会返回这个值。 虽然服务器上的最新的版本比发过来的版本高，但没有对应的包可以更新，例如差分包，还是会返回这个值。 |



