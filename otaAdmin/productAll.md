## 查询所有产品

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/products/all|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

无


* #### HTTP 请求示例


* #### 返回参数

一个元素为product的数组。product内容如下：

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| id | Integer\(10\) | 否 |  产品ID |
|  product| String\(255\) | 否 | c产品名   |
| model | String\(255\) | 否 |   |
| hwVersion | String\(255\) | 否 | 产品版本  |
| feature | String\(255\) | 否 | 特性   |
| versionFormat | String\(255\) | 否 | 版本号格式  |


* #### 响应示例：

```json
[{
	"id": 1,
	"product": "prosyst",
	"model": "1",
	"hwVersion": "1.0.0.0",
	"feature": null,
	"versionFormat": "#N.#N.#N.#N"
}, {
	"id": 2,
	"product": "OMMICUBE",
	"model": "1",
	"hwVersion": "1.0",
	"feature": null,
	"versionFormat": "#N.#N"
}, {
	"id": 3,
	"product": "touch",
	"model": "0",
	"hwVersion": "1.0",
	"feature": null,
	"versionFormat": "V#N.#N.#N.#N"
}, {
	"id": 6,
	"product": "AndroidPhone",
	"model": "1",
	"hwVersion": "1.0.0.0",
	"feature": null,
	"versionFormat": "#N.#N.#N.#N"
}]
```

* #### 异常返回值

无



