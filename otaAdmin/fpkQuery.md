## 查询大版本列表

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmware-package-kit/query|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| pageNum| Integer\(10\) | 否 |  |
| pageSize | Integer\(10\) | 否 |  |
| productId| Integer\(10\) | 否 |  |
| sortName| String | 否 |按什么排序 |
| sortOrder| String| 否 |升序(asc)还是降序(desc) |





* #### HTTP 请求示例


```json
{
	"pageNum": 1,
	"pageSize": 5,
	"sortName": "id",
	"sortOrder": "desc"
}
```



* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| | | 否 | |


* #### 响应示例：

无

* #### 异常返回值

无



