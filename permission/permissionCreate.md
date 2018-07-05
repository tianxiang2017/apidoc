## 创建权限

#### 功能说明



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
| businessSystemId| Integer\(10\) | 否 | 业务系统ID。manager system 或者oomi system|
|name |String\(255\) | 否 | 菜单名|
| code| String\(255\)| 否 | 菜单code，唯一标识|
| sortNo|String\(\) | 否 | 排序编号。影响菜单先后顺序|
| parentId| Integer(10)| 否 | 父菜单|
| cnDescription|String\(\) | 否 | 中文详情|
| enDescription| String\(\)| 否 | 英文详情|

|reserve|Boolean|否||




* #### HTTP 请求示例


* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
|id| Integer(10) | 否 |菜单ID |







* #### 响应示例：

无

* #### 异常返回值

无



