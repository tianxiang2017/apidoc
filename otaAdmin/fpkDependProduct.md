## 查询大版本相关产品列表

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmware-package-kit/dependent/product|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

无


* #### HTTP 请求示例
无

* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| id| Integer\(10\) | 是 |产品ID |
| product | String\(255\) | 否 | 产品名|
| model| String\(255\) | 否 | model|
| hwVersion| String\(255\) | 否 | 版本号|
| versionFormat| String\(255\) | 否 | 版本格式|
| feature| String\(255\) | 否 | 特性值产品为|



* #### 响应示例：

```json
[{
	"id": 11,
	"product": "OOMI_Cube_Firmware",
	"model": "1",
	"hwVersion": "V1.0.0.0",
	"feature": null,
	"versionFormat": "V#N.#N.#N.#N"
}, {
	"id": 10,
	"product": "OOMI_Cube_APP",
	"model": "1",
	"hwVersion": "V1.0.0.0",
	"feature": null,
	"versionFormat": "V#N.#N.#N.#N"
}, {
	"id": 13,
	"product": "OOMI_Touch_Firmware",
	"model": "1",
	"hwVersion": "V1.0.0.0",
	"feature": null,
	"versionFormat": "V#N.#N.#N.#N"
}, {
	"id": 12,
	"product": "OOMI_Touch_APP",
	"model": "1",
	"hwVersion": "V1.0.0.0",
	"feature": null,
	"versionFormat": "V#N.#N.#N.#N"
}, {
	"id": 8,
	"product": "OOMI_Cube_IR",
	"model": "1",
	"hwVersion": "V1.0.0.0",
	"feature": null,
	"versionFormat": "V#N.#N.#N.#N"
}, {
	"id": 16,
	"product": "OOMI_Cube_Zwave",
	"model": "1",
	"hwVersion": "V1.0.0.0",
	"feature": "zwave_freq_01",
	"versionFormat": "V#N.#N.#N.#N"
}]
```

* #### 异常返回值

无



