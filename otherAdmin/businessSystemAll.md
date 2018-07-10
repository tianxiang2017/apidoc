## 所有系统类型

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/business-system/query-all|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明
无

* #### HTTP 请求示例


* #### 返回参数

返回一个元素为BusinessSystem数组。BusinessSystem内容如下：

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| id            | Integer\(10\) | 否 | id|
| name| String\(255\) | 否 | 系统名称 例如：Manager System。 Oomi System|
| code| String\(255\) | 否 | 系统编码。例如：MANAGER OOMI_SYSTEM|



* #### 响应示例：

```
[{
		"id": 1,
		"name": "Manager System",
		"code": "MANAGER"
	},
	{
		"id": 2,
		"name": "Oomi System",
		"code": "OOMI_SYSTEM"
	}
]

```


* #### 异常返回值

无



