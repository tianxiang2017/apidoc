## 修改大版本

#### 功能说明

修改大版本



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmware-package-kit/update|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| id | Integer\(10\) | 否 |id |
| version| String\(255\) | 否 |版本 |
| cnDescription| String\(255\) | 否 | 备注|
| subVersion|Map[]|是|各产品版本|
| upgradeMethod| String\(255\) | 否 | 上传方式，固定值query|
| permissionIds|Map[]|是| 访问大版本所需权限|








* #### HTTP 请求示例


* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| | | 否 | |


* #### 响应示例：

无

* #### 异常返回值

无



