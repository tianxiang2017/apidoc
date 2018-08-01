## 查询产品列表

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/products/query|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| pageNum| Integer\(10\) | 是 | 第几页|
| pageSize| Integer\(10\) | 是 |每页大小 |
| keyword| String\(255\) | 否 | 产品名|


* #### HTTP 请求示例

```json
{
    "pageNum":1,
    "pageSize":10,
    "keyword":null
}
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| total| Long | 是 | 总记录数 |
| data| Product[]| 是 | 具体数据 |

product内容如下：

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| id| Integer\(10\) | 是 | 产品ID |
| product| String\(255\) | 否 | c产品名   |
| model | String\(255\) | 否 |   |
| hwVersion | String\(255\) | 否 | 产品版本  |
| feature | String\(255\) | 否 | 特性   |
| versionFormat | String\(255\) | 否 | 版本号格式  |



* #### 响应示例：

```json
{
	"total": 1,
	"data": [{
		"id": 1,
		"product": "prosyst",
		"model": "1",
		"hwVersion": "1.0.0.0",
		"feature": null,
		"versionFormat": "#N.#N.#N.#N"
	}]
}
```

* #### 异常返回值

无



