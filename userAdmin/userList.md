## 用户列表

#### 功能说明

查询用户列表

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/accounts/query|
| 请求头部 |  Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| searchKey| String\(255\) | 是 | 用户名，邮箱或者手机。手机不填国家码|


* #### HTTP 请求示例


* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| auid| String&lt;32&gt; | 是 | | 用户的auid|
| username| String&lt;255&gt;  |是 | |用户名|
| phone| String&lt;255&gt; | 是 | |手机号|
| registerTime| Long|是 | |注册时间|
| displayName| String&lt;255&gt; | 是 | |显示名称|

 

* #### 响应示例：

无

* #### 异常返回值

无 



