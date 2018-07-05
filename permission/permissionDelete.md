## 删除权限

#### 功能说明

根据权限id删除权限


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/permission/delete|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| permissionId| Integer\(10\) | 否 | 权限ID|


* #### HTTP 请求示例
{
    "permissionId":1
}

* #### 返回参数
返回一个字符串


* #### 响应示例：
ok


* #### HTTP返回

返回400 Error
返回200 ok




