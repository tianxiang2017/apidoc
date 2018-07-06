## 修改固件包

#### 功能说明
根据固件包ID修改固件包


涉及文件上传，设置请求头 :
Content-Type:multipart/form-data
请求不是json格式。





#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmwares/update|
| 请求头部 | Content-Type:multipart/form-data |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
|id |Integer\(10\) | Integer\(10\) | 否 | 固件包ID |
| productId | Integer\(10\) | 否 | 固件包所属产品ID |
| oldSwVersion| String\(255\) | 否 | 差分包的前置版本。差分包从oldSwVersion升级到swVersion版本 |
| swVersion| String\(255\) | 否 | 当前版本 |
| fullPackage| Boolean | 否 | 是否是完整包 |
| cnDescription | String\(255\) | 否 | 更新说明（中文） |
| enDescription | String\(255\) | 否 | 更新说明（英文） |
| permissionIds| Integer[] | 否 | 访问固件包需要的权限 |
| publicStatus| Boolean | 否 | 是否发布） |
| remark| String\(255\) | 否 | 备注 |




* #### HTTP 请求示例

```

	"cnDescription": "qqqqqqqqq",
	"enDescription": "qqqqqqqqqqqqqqqqqq",
	"fullPackage": true,
	"oldSwVersion": "null",
	"permissionIds": [],
	"productId": 14,
	"publicStatus": true,
	"remark": "qqqqqqqq",
	"swVersion": "V2.0.5.4"


```



* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| | | 否 | |


* #### 响应示例：

无

* #### 异常返回值

无



