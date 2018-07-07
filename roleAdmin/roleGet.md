## 查询指定角色的详细信息

#### 功能说明

查询指定角色的详细信息

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/role/get-by-id|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
|roleId|Integer\(10\) | 否 | 角色ID|


* #### HTTP 请求示例
```json
{
    "roleId": 12
}

 ```


* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
|id|Integer\(10\) | 否 | 角色ID|
|name |String\(255\) | 否 | 角色名|
| cnDescription|String\(\) | 否 | 中文描述|
| enDescription| String\(\)| 否 | 英文描述|
| reserve| Boolean | 否 | 保留参数 |
| updateAt| Long | 否 | 修改时间|
| createAt| Long | 否 | 创建时间|



* #### 响应示例：

```json
{
	"code": "1000",
	"note": "Operate success",
	"data": {
		"id": 12,
		"name": "R&D",
		"cnDescription": "研发",
		"enDescription": "R&D",
		"reserve": false,
		"updateAt": 1516526981000,
		"createAt": 1516526981000
	}
}

 ```

* #### 异常返回值

无



