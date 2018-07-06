## 创建固件包前检查

#### 功能说明

检查固件包版本是否已经上传了。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmwares/check_create|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| productId | Integer\(10\) | 否 | 第几页 |
| oldSwVersion| String\(255\) | 否 | 差分包的前置版本。差分包从oldSwVersion升级到swVersion版本 |
| swVersion| String\(255\) | 否 | 当前版本 |
| fullPackage| Boolean | 否 | 是否是完整包 |


* #### HTTP 请求示例


```json
{
	"productId": 14,
	"oldSwVersion": null,
	"swVersion": "V2.0.5.4",
	"fullPackage": true
}
```

* #### 返回参数
无


* #### 响应示例：

ok

* #### 异常返回值
error 参数错误
Product is not exist 产品已存在
版本格式错误
Firmware_Exist 固件包不存在
ok 操作成功


