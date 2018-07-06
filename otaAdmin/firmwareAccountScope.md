## 获得业务系统的所有权限

#### 功能说明

获得业务系统的所有权限


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmwares/account_scope|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明
无


* #### HTTP 请求示例
无

* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| total| Long| 是 | 总数|
|data|Permission[]|否|权限列表。permission数组|

permission内容如下：

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| id | Integer\(255\) | 是 | 权限ID|
|name |String\(255\) | 是 | 菜单名|
| code| String\(255\)| 是 | 菜单code，唯一标识|
| sortNo|Integer\(10\) | 否 | 排序编号。影响菜单先后顺序|
| parentId| Integer(10)| 否 | 父菜单|
| cnDescription|String\((255\) | 否 | 中文详情|
| enDescription| String\((255\)| 否 | 英文详情|



* #### 响应示例：

```json
[{
	"id": 79,
	"name": "Gamma用户",
	"code": "GAMMA",
	"parentId": 0,
	"sortNo": 3,
	"customData": null,
	"cnDescription": "GAMMA",
	"enDescription": "GAMMA",
	"reserve": false,
	"updateAt": 1516388461000,
	"createAt": 1516388461000
}]
```



* #### 异常返回值

无



