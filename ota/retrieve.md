# 获取最新版本（旧）

#### 功能说明

获取服务器中产品最新版本接口，这个接口加了特殊化的处理，例如华商龙的Touch和亿道的Touch，具体传值参考下面例子.新版本的Touch和Cube都没有调用这个接口

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/retrieve |
| 请求头部 |  |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| product | String\(255\) | 是 | 产品名，例如prosyst,OOMICUBE |
| model | String\(255\) | 否 | 型号。默认为字符串1。product为touch时传字符串0 |
| devToken | String\(255\) | 否 | 当前用户token，如用户未登录则无 |
| accountId | Integer\(11\) | 否 | 当前用户id，如用户未登录则无 |
| currentSwVersion | String\(255\) | 否 | 产品当前版本号。为空时，系统根据格式生成默认的初始版本 |

**由于历史原因，旧版本的Cube和Touch还会传下面参数**

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| sign | String\(255\) | 否 | 保留参数。签名 |
| sn | String\(64\) | 否 | 保留参数。fantem\_sn |
| hwVersion | String\(255\) | 否 | 保留参数。1.0等 |
| testMode | String\(255\) | 否 | 保留参数。false |
| macAddress | String\(32\) | 否 | 保留参数。mac地址 |
| isHSLTouch | String&lt;E&gt; | 否 | 保留参数。老版本的Touch的product叫touch，而不是OOMI\_Touch\_App，所以为了区分华商龙还是亿道的，就加了这个字段。true/false |

* #### HTTP 请求示例

##### 老版本Cube App

[http://openapi.fantem-gateway.com/retrieve?sign=sign&product=prosyst&model=1&sn=prosyst\_init\_sn&currentSwVersion=1.1.0.1&hwVersion=1.0.0.0&macAddress=11:22:33:44:55:66](http://openapi.fantem-gateway.com/retrieve?sign=sign&product=prosyst&model=1&sn=prosyst_init_sn&currentSwVersion=1.1.0.1&hwVersion=1.0.0.0&macAddress=11:22:33:44:55:66)

##### 老版本Cube固件

[http://openapi.fantem-gateway.com/retrieve?sign=sign&product=OMMICUBE&model=1&sn=fantem\_sn&hwVersion=1.0&currentSwVersion=00.06&testMode=false&macAddress=0e:50:0f:be:d3:bc](http://openapi.fantem-gateway.com/retrieve?sign=sign&product=OMMICUBE&model=1&sn=fantem_sn&hwVersion=1.0&currentSwVersion=00.06&testMode=false&macAddress=0e:50:0f:be:d3:bc)

##### 华商龙Touch

[http://openapi.fantem-gateway.com/retrieve?sign=sign&product=touch&model=0&sn=4139ff881b50d0d&accountId=351&hwVersion=1.0&devToken=55fcd802ff88c787dbf4ab9b9da9c3b3&isHSLTouch=true&macAddress=00:03:7f:21:48:7a](http://openapi.fantem-gateway.com/retrieve?sign=sign&product=touch&model=0&sn=4139ff881b50d0d&accountId=351&hwVersion=1.0&devToken=55fcd802ff88c787dbf4ab9b9da9c3b3&isHSLTouch=true&macAddress=00:03:7f:21:48:7a)

##### Android

[http://openapi.fantem-gateway.com/retrieve?product=AndroidPhone&model=1&accountId=85&devToken=616c3a35341dd027acce05e42d726020&currentSwVersion=1.0.2.14](http://openapi.fantem-gateway.com/retrieve?product=AndroidPhone&model=1&accountId=85&devToken=616c3a35341dd027acce05e42d726020&currentSwVersion=1.0.2.14)

[http://openapi.fantem-gateway.com/retrieve?sn=prosyst\_init\_sn&product=prosyst&hwVersion=1.0.0.0&model=1&currentSwVersion=2.0.3.11&macAddress=11:22:33:44:55:66&sign=sign](http://openapi.fantem-gateway.com/retrieve?sn=prosyst_init_sn&product=prosyst&hwVersion=1.0.0.0&model=1&currentSwVersion=2.0.3.11&macAddress=11:22:33:44:55:66&sign=sign)

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
| 3| 参数错误||
| 601 | 对应的product找不到 | 传过来的product参数，在服务器找不到，例如把 OOMI\_Cube\_App 写成 OOMI\_Cube\_AAA |
| 603 | 当前设备版本已经是最新 | 传过来的版本比服务器上要高，就会返回这个值。 虽然服务器上的最新的版本比发过来的版本高，但没有对应的包可以更新，例如差分包，还是会返回这个值。 |



