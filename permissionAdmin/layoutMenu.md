## 布局-菜单

#### 功能说明

根据用户权限，获取用户的菜单

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/layout/permission|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | GET |

* #### 输入参数说明
无 
但是，在session中需要设置account对象。account如下：

| 参数名称 | 参数类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| auid| String(32) | 是 | | 用户的auid |


* #### HTTP 请求示例

```json
{
	"auid":"ffbb7379c5a94ad3a02759dd6abf5186"
}
```



* #### 返回参数
返回一个元素为Permission的数组，Permission如下：
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
|id| Integer(10) | 否 |菜单ID |
|name |String\(255\) | 否 | 菜单名|
| code| String\(255\)| 否 | 菜单code，唯一标识|
| parentId| Integer(10)| 否 | 父菜单|
| cnDescription|String\(\) | 否 | 中文详情|
| enDescription| String\(\)| 否 | 英文详情|
| sortNo|String\(\) | 否 | 排序编号。影响菜单先后顺序|
|reserve|Boolean|否||



* #### 响应示例：

[	
	{
		"id": 1,
		"name": "用户管理",
		"code": "MENU_ACCOUNT_ROOT"
	},
	{
		"id": 1,
		"name": "角色列表",
		"code": "MENU_ROLE_LIST"
	}
]
* #### 异常返回码
无

* #### HTTP返回码
200 OK
400 account为空




