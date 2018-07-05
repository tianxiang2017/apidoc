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



* #### 响应示例：

```json
[
    {
        "id":23,
        "name":"xxxx",
        "code":"XXXX_XX",
        "sortNo":10,
        "parentId":10,
        "cnDescription":"中文描述",
        "enDescription":"en desc"
    }

]
```

* #### 异常返回值

无



