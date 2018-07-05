## 创建权限

#### 功能说明

创建权限


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/permission/create|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| businessSystemId| Integer\(10\) | 否 | 业务系统ID。manager system 或者oomi system对应的ID|
|name |String\(255\) | 否 | 菜单名|
| code| String\(255\)| 否 | 菜单code，唯一标识|
| sortNo|String\(\) | 否 | 排序编号。影响菜单先后顺序|
| parentId| Integer(10)| 否 | 父菜单|
| cnDescription|String\(\) | 否 | 中文详情|
| enDescription| String\(\)| 否 | 英文详情|

* #### HTTP 请求示例
{
    "businessSystemId":2,
    "name":"xxxx",
    "code":"XXXX_XX",
    "sortNo":10,
    "parentId":10,
    "cnDescription":"中文描述",
    "enDescription":"en desc"
}




* #### 返回参数
返回一个字符串


* #### 响应示例：
ok


* #### HTTP返回

返回400 
内容   Error Code_Exist
返回200
ok



