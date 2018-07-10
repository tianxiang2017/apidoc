## 业务系统的用户组

#### 功能说明

系统把权限分为两类。
一个是后台管理界面的权限，叫Manager System，编码是MANAGER
一个是接口的权限，叫Oomi System，编码是OOMI_SYSTEM。
这个接口获取OOMI_SYSTEM系统定义的所有权限

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/account_group/query_all|
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

返回一个元素为Permission的数组，Permission如下：

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
|id| Integer(10) | 否 |菜单ID |
|name |String\(255\) | 否 | 菜单名|
| code| String\(255\)| 否 | 菜单code，唯一标识|
| parentId| Integer(10)| 否 | 父菜单|
| cnDescription|String\(\) | 否 | 中文详情|
| enDescription| String\(\)| 否 | 英文详情|







* #### 响应示例：

无

* #### 异常返回值

无



