## 创建大版本

#### 功能说明



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
| | String\(255\) | 否 | |


* #### HTTP 请求示例


* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| id | Integer\(10\) | 否 | 大版本ID |
| product | Integer\(10\) | 否 | 固件包所属产品ID |
| cnDescription | String\(255\) | 否 | 更新说明（中文） |
| enDescription | String\(255\) | 否 | 更新说明（英文） |
| upgradeMethod| String\(255\) | 否 | 升级方式 |
| createAt| Boolean | 否 | 创建时间 |
| updateAt| String\(255\) | 否 | 修改时间 |





* #### 响应示例：




* #### 异常返回值

无



