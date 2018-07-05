## 邮件列表

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/email/list|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| | String\(255\) | 否 | |


* #### HTTP 请求示例


* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| id|String| 否 | 记录ID|
|email |String| 否 | 邮箱地址|
|language |String| 否 | 语言|
|status |String| 否 | 状态。1：已发送；2：发送失败|
| sendAccountId|String| 否 | 邮件发送者。暂时没有使用 |
| template|String| 否 |邮件模板文件名 |
| subject|String| 否 |邮件主题 |
|variable |String| 否 |模板中使用的变量和值，存入json字符串 |
| sendTime|String| 否 | 发送时 |
| reason|String| 否 | 发送邮件失败原因|


* #### 响应示例：

```json
{
	"code": "1",
	"note": "Operate success",
	"data": {
		"currentPage": 1,
		"totalPage": 15,
		"totalRecord": 150,
		"data": [{
			"email": "598206408@qq.com",
			"language": "zh_CN",
			"status": 1,
			"id": 323,
			"sendAccountId": null,
			"template": "verificationCode",
			"subject": "OOMI账号--验证邮箱",
			"variable": "{\"emailCode\":\"392863\"}",
			"sendTime": 1530355935000,
			"reason": null
		}, {
			"email": "970779815@qq.com",
			"language": "zh_CN",
			"status": 1,
			"id": 322,
			"sendAccountId": null,
			"template": "verificationCode",
			"subject": "OOMI账号--验证邮箱",
			"variable": "{\"emailCode\":\"097263\"}",
			"sendTime": 1530348273000,
			"reason": null
		}]
	}
}
```

* #### 异常返回值

无



