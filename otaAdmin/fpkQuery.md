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
| total| Long | 否 | 记录总数|
| data| FirmwarePackageKit[]| 否 | 查询数据 |

FirmwarePackageKit内容如下
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| id | Integer\(10\) | 否 | 大版本ID |
| productId | Integer\(10\) | 否 | 固件包所属产品ID |
| version| String\(255\) | 否 | 版本 |
| cnDescription | String\(255\) | 否 | 更新说明（中文） |
| enDescription | String\(255\) | 否 | 更新说明（英文） |
| upgradeMethod| String\(255\) | 否 | 升级方式 |
| createAt| Boolean | 否 | 创建时间 |
| updateAt| String\(255\) | 否 | 修改时间 |


* #### 响应示例：

```json
{
	"total": 19,
	"data": [{
		"id": 68,
		"productId": null,
		"version": "2.0.9.1",
		"cnDescription": "2.0.9首个正式alpha版本qqq",
		"enDescription": null,
		"upgradeMethod": "query",
		"updateAt": 1524409222000,
		"createAt": 1524409222000
	}, {
		"id": 67,
		"productId": null,
		"version": "2.0.8.2",
		"cnDescription": "Alpha测试",
		"enDescription": null,
		"upgradeMethod": "query",
		"updateAt": 1520535085000,
		"createAt": 1520535085000
	}]
}
```



* #### 异常返回值

无



