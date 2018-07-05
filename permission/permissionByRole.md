## 指定角色的权限信息

#### 功能说明
查询指定角色拥有的权限。包括对manager system和oomi system的权限


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/permission/by_role|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| roleId| Integer\(10\) | 是 | 角色ID|


* #### HTTP 请求示例

```json
{
	"roleId": 12
}
```


* #### 返回参数
翻译一个元素为permission的数组
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
| customData| Map\((255\)| 否 | 自定义数据|






* #### 响应示例：

```json
{
	"code": "1000",
	"note": "Operate success",
	"data": {
		"total": 3,
		"data": [{
			"id": 47,
			"name": "用户管理",
			"code": "MENU_ACCOUNT_ROOT",
			"parentId": 0,
			"sortNo": 2,
			"customData": {
				"menuMame": "Account",
				"isMenu": true,
				"url": "",
				"group": ""
			},
			"cnDescription": "用户管理",
			"enDescription": "",
			"reserve": false,
			"updateAt": 1516388488000,
			"createAt": 1516388441000
		}, {
			"id": 48,
			"name": "设备管理",
			"code": "MENU_CLIENT_ROOT",
			"parentId": 0,
			"sortNo": 3,
			"customData": {
				"menuMame": "Client",
				"isMenu": true,
				"url": "",
				"group": ""
			},
			"cnDescription": "设备管理",
			"enDescription": "",
			"reserve": false,
			"updateAt": 1516388488000,
			"createAt": 1516388441000
		}]
	}
}
```

* #### 异常返回值

无



