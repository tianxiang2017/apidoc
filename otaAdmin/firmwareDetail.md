## 固件包详细

#### 功能说明
根据固件包ID获取固件包详细信息

在后台界面点击修改时，需要获取一次固件包详情
请求路径中的id是值固件包id

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmwares/{id}|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | GET |

* #### 输入参数说明
无

* #### HTTP 请求示例


```
curl -X GET \
http://openapi.fantem-gateway.com/firmwares/129
```



* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| id | Integer\(10\) | 是 | 固件包ID |
| productId | Integer\(10\) | 是 | 产品ID |
| oldSwVersion | String\(255\) | 否 | 差分包的源升级前版本。差分包时会用上这个字段 |
| swVersion | String\(255\) | 否 | 版本号 |
| firmwareUrl | String\(255\) | 否 | 下载ota地址 |
| protocol | String\(255\) | 否 | '数据传输方式，默认是http |
| protocolVersion | String\(255\) | 否 | 协议版本，默认还是1.1 |
| cnDescription | String\(255\) | 否 | 更新说明（中文） |
| enDescription | String\(255\) | 否 | 更新说明（英文） |
| remark | String\(255\) | 否 |  |
| publicStatus | String\(255\) | 否 | 发布状态 |




* #### 响应示例：



```
{
	"id": 129,
	"productId": 12,
	"product": {
		"id": 12,
		"product": "OOMI_Touch_APP",
		"model": "1",
		"hwVersion": "V1.0.0.0",
		"feature": null,
		"versionFormat": "V#N.#N.#N.#N"
	},
	"oldSwVersion": "V0.0.0.0",
	"swVersion": "V2.0.7.3",
	"firmwareUrl": "http://ota.fantem-gateway.com/firmware/OOMI_Touch_APP/1/V1-0-0-0/OOMI_Touch_APP-V0.0.0.0-V2.0.7.3.apk",
	"protocol": "http",
	"protocolVersion": "1.1",
	"username": "Awx0YRuq8LNzrn21",
	"password": "R37z96hdh53a8oG9A52s",
	"cnDescription": "",
	"enDescription": "",
	"remark": "",
	"size": 55469589,
	"md5Code": "DC6208BC6E1A91C984047AA964971682",
	"publicStatus": true,
	"updateAt": 1517483828000,
	"createAt": 1517483828000,
	"fullPackage": true
}
```



* #### 异常返回值

无



