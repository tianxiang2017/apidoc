## 绑定Nest用户

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/nest/registerAuthorizationCode/{accountId}|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| code| String\(255\) | 是 | |
|accountId|Intege\(10\)|是|用户id|


* #### HTTP 请求示例


* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| result| | 否 | |
|accessToken|| 否 | nest给的token |
|dataModel|| 否 | Nest设备的数据模型|


* #### 响应示例：

无

* #### 异常返回值

无



