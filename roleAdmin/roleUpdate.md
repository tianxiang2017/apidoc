## 修改角色

#### 功能说明

修改角色

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/role/update|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
|roleId|Integer\(10\) | 否 | 角色ID|
|name |String\(255\) | 否 | 角色名|
| cnDescription|String\(255\)  | 否 | 中文详情|
| enDescription|String\(255\) | 否 | 英文详情|
|permissionIds|Integer[]|修改角色后，这个角色拥有的权限，之前的权限会被清空|


* #### HTTP 请求示例
```json
{
	"roleId": 17,
	"name": "roel1",
	"enDescription": "ssssssssssssswerwe",
	"cnDescription": "sdfssssss",
	"permissionIds": [1, 69]
}
```

* #### 返回参数
无


* #### 响应示例：

```json
{
    "code": "1000",
    "note": "Operate success",
}
```
* #### 异常返回码
无













