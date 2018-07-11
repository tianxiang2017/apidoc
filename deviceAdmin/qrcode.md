## 生成指定设备的二维码

#### 功能说明

生成指定设备的二维码

请求地址中的guid，guid替换为实际值

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/client/{guid}/qrcode|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明


* #### HTTP 请求示例


* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| qrcode| String| 否 | 二维码|


* #### 响应示例：

```json
{
	"code": "1",
	"note": "Operate success",
	"data": {
		"qrcode": "xxxxxxxxxxxxxxxxxxxxxxxxxxxx"
	}
}
```

* #### 异常返回值

无



