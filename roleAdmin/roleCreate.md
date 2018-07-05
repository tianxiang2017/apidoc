## 创建角色

#### 功能说明
创建角色


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/role/create|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
|name |String\(255\) | 否 | 角色名|
| cnDescription|String\(\) | 否 | 中文详情|
| enDescription| String\(\)| 否 | 英文详情|
|permissionIds|Integer[]|角色拥有的权限列表|



* #### HTTP 请求示例

```json
{
	"name": "role1",
	"cnDescription": "角色1",
	"enDescription": "role 1 desc",
	"permissionIds": [1, 23, 4]
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






