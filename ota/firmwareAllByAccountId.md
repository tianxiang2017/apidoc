# 用户的固件包

#### 功能说明

这个接口是返回某一个Product的所有固件包。
touch会调用这个接口


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmwares/all|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| firmwareCondForms | Firmware[]| 是 | 内容参考下面说明 |

Firmware内容如下：

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| accountId | Integer\(10\) | 否 | 用户ID。所有accountId要一样，只看第一个accountId判断权限。现在还没有检查accountId是否一样|
| product| String\(255\) | 是 | 产品名|
| model | String\(255\) | 是 | 型号 |
| feature | String\(50\) | 否 | zwave区分不同频率 |
| currentSwVersion | String\(255\) | 是 | 产品当前版本号。 |
| isHSLTouch | String\(225\)|否|是否是华商龙的touch。字符串true表示是华商龙的touch，华商龙的touch才会升级|


* #### HTTP 请求示例

```json 
{
	"firmwareCondForms": [
          {
          	"accountId":1,
          	"product": "OOMI_Cube_APP",
           	"model": "1",
            "feature": "",            
            "currentSwVersion": "V2.0.5.8"
        }
	]
}
```


* #### 返回参数

这个接口特殊，操作成功时必须返回一个元素Ffirmware数组

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| firmwareId | Integer\(11\) | 是 |  | 固件包ID |
| product | String\(255\) | 是 |  | 产品名，与参数中产品名相同 |
| model | String\(255\) | 是 |  | 型号，值和请求参数相同 |
| hwVersion | String\(255\) | 是 |  | 硬件版本号 |
| feature | String\(50\) | 否 |  | product的特征，默认为空字符串 |
| oldSwVersion | String\(255\) | 是 |  | 旧版本号，当此包为全量包时，此参数无效。如果此包为增量包，则表示增量前版本号 |
| swVersion | String\(255\) | 否 |  | 此包当前版本号，当此包为增量包时，表示为增量后版本号 |
| fullPackage| bool | 否 | true | 是否为全量包，true则表示为全量包，false则表示为增量包 |
| isFullPackage | bool | 否 | true | 和fullPackage一样 |
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

成功时返回示例：

```json
[{
        "firmwareId": 58,
        "product": "prosyst",
        "model": "1",
        "hwVersion": "1.0.0.0",
        "oldSwVersion": "0.0.0.0",
        "swVersion": "2.0.0.33",
        "fullPackage": true,
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
    }]
```

失败是返回示例：

```json
{
    "code": "2",
    "note": "PARAMETER_MISSING"
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 3 | 参数为空，参数错误| |




