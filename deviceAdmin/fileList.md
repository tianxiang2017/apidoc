## 文件列表

#### 功能说明

查询cube、touch上传的日志文件

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/file/list|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| page | Integer\(10\) | 是 |第几页 |
| pageSize | Integer\(10\) | 是 |每页大小 |
| username| Integer\(10\) | 否 |用户|
| sn| String\(64\) | 否 |设备的sn |
| mode| Integer\(10\) | 否 | 文件类型|
|type| String<E> |否|上传方式 log或者db|


* #### HTTP 请求示例
file/list?page=1&size=10&username=nzxxx&sn=snxxxxxxxxx&mode=1&type=log

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| type | String\(E\) | 是 | 类型。取值：log或者db |
| guid | String&lt;32&gt; | 是 | cube注册成功后获得的guid |
| accountId | Integer\(10\) | 否 | 用户的ID |
| version | String\(255\) | 否 | 所属版本 |
| remark | String\(1024\) | 否 | 描述 |
| uploadTime | Long | 否 | 上传时间，时间戳，1970年1月1日00:00:00 GMT以来的毫秒数。没有传递此参数时，默认为系统时间，例如1510196926278。 |
| md5 | String&lt;16&gt; | 是 | 文件的MD5摘要 |



* #### 响应示例：
```json
{
	"code": "1",
	"note": "Operate success",
	"data": {
		"currentPage": 1,
		"totalPage": 1,
		"totalRecord": 10,
		"data": [{
			"id": 12,
			"name": "node.dll",
			"type": "log",
			"guid": "14AC6FE7DE5B40ECBC8E3FDA9B3BAF51",
			"accountId": 919,
			"version": "2.0.5",
			"remark": "测试",
			"uploadTime": 1526464452000,
			"uploadTimeStart": null,
			"uploadTimeEnd": null,
			"md5": "858583C3431ADA12",
			"mode": null,
			"status": 1,
			"bucketName": null,
			"objectKey": null,
			"sn": null,
			"username": null,
			"ossUploadTime": null
		}, {
			"id": 11,
			"name": "node.dll",
			"type": "log",
			"guid": "14AC6FE7DE5B40ECBC8E3FDA9B3BAF51",
			"accountId": 919,
			"version": "2.0.5",
			"remark": "测试",
			"uploadTime": 1526464174000,
			"uploadTimeStart": null,
			"uploadTimeEnd": null,
			"md5": "858583C3431ADA12",
			"mode": null,
			"status": 1,
			"bucketName": null,
			"objectKey": null,
			"sn": null,
			"username": null,
			"ossUploadTime": null
		}]
	}
}
```

* #### 异常返回值

无



