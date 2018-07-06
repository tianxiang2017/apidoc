## 大版本详细

#### 功能说明

根据大版本ID查询大版本详情

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmware-package-kit/get|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| id| Integer\(10\) | 否 |大版本ID |


* #### HTTP 请求示例


```
{
    id: 68
}
```


* #### 返回参数
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
	"id": 68,
	"productId": null,
	"version": "2.0.9.1",
	"cnDescription": "2.0.9首个正式alpha版本qqq",
	"enDescription": null,
	"upgradeMethod": "query",
	"updateAt": 1524409222000,
	"createAt": 1524409222000
}
```



* #### 异常返回值

http返回码 400 



