## 大版本-反查

#### 功能说明

Touch获取自身的APP和固件版本、Cube的App、固件、IR、zware版本，然后服务器反查出一个系统版本号，后续就通过系统版本配套升级

###### 

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmware-package-kit/pegging|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| product| String | 是 | 产品类型名  |
|model    | String |是   | 产品类型型号，固定为1(字符串)    |
| hwVersion| String | 是 | 产品的硬件版本号，固定为：V1.0.0.0 |
| feature| String\(11\) | 否 | 产品类型特征值  |
| swVersion| String| 是 | 固件当前版本号   |
| sn| String| 是 | Touch的sn   |


##### Firmware
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
|name     | String|是  | product名    |
|model    | String |是   | 特征值，没有就为空字符串     |
|hwVersion    | String |是   | 硬件版本号，没有就为硬件版本号    |
|feature     | String|是   | 特征值，没有就为空字符串    |
|swVersion     | String|是   | 当前版本号    |

* #### HTTP 请求示例

```json
[
    {
        "feature": "V1.0.0.0",
        "hwVersion": "",
        "model": 1,
        "product": "OOMI_Cube_Firmware",
        "sn": "",
        "swVersion": "V0.0.1.0"
    },
    {
        "feature": "V1.0.0.0",
        "hwVersion": "1.1.0.1",
        "model": 1,
        "product": "OOMI_Cube_APP",
        "sn": "A01011646000130",
        "swVersion": "V2.0.0.18"
    },
    {
        "feature": "V1.0.0.0",
        "hwVersion": "",
        "model": 1,
        "product": "OOMI_Cube_IR",
        "sn": "",
        "swVersion": "V1.1.0.0"
    },
    {
        "feature": "zwave_freq_01",
        "hwVersion": "",
        "model": 1,
        "product": "OOMI_Cube_Zwave",
        "sn": "",
        "swVersion": "V1.02.0.0"
    },
    {
        "feature": "",
        "hwVersion": "V1.0.0.0",
        "model": 1,
        "product": "OOMI_Touch_APP",
        "sn": "dbd6eeadd25ae57d",
        "swVersion": "V2.0.4.15"
    },
    {
        "feature": "",
        "hwVersion": "V1.0.0.0",
        "model": 1,
        "product": "OOMI_Touch_Firmware",
        "sn": "",
        "swVersion": "V1.0.0.16"
    }
]
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
|id | Integer|否| 大版本的ID |
| version| Integer| 否 | 版本号 |
| cnDescription| Integer| 是 | 中文描述|
| enDescription| Integer | 否 | 英文描述"  |
| releaseDatetime| Integer| 否 | 发布时间 |
|firmwarePackage|FpkSubversion[]|否|版本列表|

#### FpkSubversion

|参数名|类型|说明|
|:-----  |:-----|----- |
|id | Integer|否| 大版本的ID |
|productId | String  |否| productId |
| version| Integer| 否 | 版本号 |
| cnDescription| Integer| 是 | 中文描述|
| enDescription| Integer | 否 | 英文描述"  |
| releaseDatetime| Integer| 否 | 发布时间 |
|upgradeMethod | Integer| 否| 更新方法，默认为query |
|updateAt | Integer| 否| 更新时间，为unix时间戳 |
|createAt | Integer| 否| 更新时间，为unix时间戳 |

* #### 响应示例：

```json
{
	"code":"1",
    "note":"OPERATION_SUCCESS"
    "data":{
        "id":1,
		"version":"2.0.7.0",
		"cnDescription":"2.0.7.0",
		"enDescription":"2.0.7.0",
		"firmwarePackage":[{
			"id":id,
			"productId":30,
			"version":"2.0.7.0",
			"cnDescription":"xxx",
			"enDescription":"xxx",
			"upgradeMethod":"",
			"updateAt":1516081741,
			"createAt":1516081741,
		}]
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 7     |反查不到大版本号 ||


