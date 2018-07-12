## 创建大版本

#### 功能说明

创建一个大版本。一个大版本是多个固件包版本的集合

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmware-package-kit/create|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| version| String\(255\) | 否 |版本 |
| cnDescription| String\(255\) | 否 | 备注|
| subVersion|Map[]|是|各产品版本|
| upgradeMethod| String\(255\) | 否 | 上传方式，固定值query|
| permissionIds|Map[]|是| 访问大版本所需权限|






* #### HTTP 请求示例


```json
{
	"version": "7.2.00",
	"cnDescription": "1sdfsdfsd",
	"subVersion": [{
		"id": 11,
		"version": "V0.1.0.1",
		"checked": false
	}, {
		"id": 10,
		"version": "V2.0.0.33",
		"checked": false
	}, {
		"id": 13,
		"version": "V1.0.0.19",
		"checked": false
	}, {
		"id": 12,
		"version": "V2.0.4.31",
		"checked": false
	}, {
		"id": 8,
		"version": "V1.1.0.0",
		"checked": false
	}, {
		"id": 16,
		"version": "V1.02.0.0",
		"checked": false
	}],
	"upgradeMethod": "query",
	"permissionIds": [79]
}
```



* #### 返回参数
无

* #### 响应示例：
ok



* #### 异常返回值

无



