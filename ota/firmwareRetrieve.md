## 获取最新版本

#### 功能说明

OomiServer2.0新增获取服务器中产品最新版本接口，接口主要作用是获取cube与prosyst最新版本固件下载地址与相关参数.

亿道的touch不允许升级。

获取版本顺序：最新版本完整包&gt;升级到最近版本的差分包&gt;差分包&gt;完整包

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
| product | String\(255\) | 是 | 产品名，例如prosyst，OMMICUBE，OOMI\_Cube\_APP等 |
| model | String\(255\) | 是 | 型号。默认为字符串1。product为touch时传字符串0 |
| devToken | String\(255\) | 否 | 当前用户token，如用户未登录则无。是用户的token，不是设备的token |
| accountId | Integer\(11\) | 否 | 当前用户id，如用户未登录则无 |
| currentSwVersion | String\(255\) | 是 | 产品当前版本号。 |
| isHSLTouch | Strin&lt;E&gt; | 否 | 老版本的Touch的product叫touch，而不是OOMI\_Touch\_App，所以为了区分是华商龙的touch还是亿道的touch，就加了这个字段。只能是字符串true或者字符串false（但没有验证）。true：是华商龙的touch；false：不是华商龙。 |
| feature | String\(50\) | 否 | 产品特殊特征。zwave在不同地区使用不同的频率，product为OOMI\_Cube\_Zwave时使用这个参数来区分不同频率。例如zwave\_freq\_01。 |

* #### HTTP 请求示例

```json
curl -X GET \
  'http://openapi.fantem-gateway.com/firmwareRetrieve?product=OMMICUBE&model=1&currentSwVersion=00.00'
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| firmwareId | Integer\(11\) | 是 |  | 固件包ID |
| product | String\(255\) | 是 |  | 产品名，与参数中产品名相同 |
| model | String\(255\) | 是 |  | 型号，值和请求参数相同 |
| hwVersion | String\(255\) | 是 |  | 硬件版本号 |
| feature | String\(50\) | 否 |  | product的特征，默认为空字符串 |
| oldSwVersion | String\(255\) | 是 |  | 旧版本号，当此包为全量包时，此参数无效。如果此包为增量包，则表示增量前版本号 |
| swVersion | String\(255\) | 否 |  | 此包当前版本号，当此包为增量包时，表示为增量后版本号 |
| isFullPackage | bool | 否 | true | 是否为全量包，true则表示为全量包，false则表示为增量包 |
| firmwareUrl | String\(255\) | 否 |  | 下载此包的url，get请求下载 |
| protocol | String\(255\) | 否 |  | 下载包的协议，固定为http |
| protocolVersion | String\(255\) | 否 |  | 协议，固定为1.1 |
| username | String\(255\) | 否 |  | 下载包时需要携带的用户名 |
| password | String\(255\) | 否 |  | 下载此包时，需要携带的密码 |
| cnDescription | text | 否 |  | 此包的中文说明 |
| enDescription | text | 否 |  | 包的英文说明 |
| size | Integer\(11\) | 否 |  | 包的大小 |
| md5Code | String\(255\) | 否 |  | md5值，供校验包的真伪 |
| releaseTime | String&lt;19&gt; | 否 | 2017-05-26,11:59:38 | 发布时间，就是管理员在后台上传包的时间。yyyy-MM-dd,hh:mm:ss格式 |
| compel | bool | 否 |  | 是否强制下载，固定为false |
| versionRank | Integer\(E\) | 否 |  | 0表示gamma版本，1表示beta版本，2表示alpha版本，这个字段不再使用，为固定0 |
| firmwareBinds | Array | 否 |  | 和这个更新包绑定的版本，固定为空队列 |

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
| 601 | 对应的product找不到 | 传过来的product参数，在服务器找不到，例如把 OMMICUBE写成 OOMICUBE |
| 603 | 当前设备版本已经是最新 | 传过来的版本比服务器上要高，就会返回这个值。 虽然服务器上的最新的版本比发过来的版本高，但没有对应的包可以更新，例如差分包，还是会返回这个值。 |



