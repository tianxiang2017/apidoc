# 获取token2

#### 功能说明

天猫精灵和google home调用，获取token。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/google/token|
| 请求头部 | |
| HTTP方式 | POST |

* #### 输入参数说明

grant_type是authorization_code时，


| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| grant_type| String | 是 | 授权类型。 传authorization_code refresh_token|
| client_id| String | 否 | Client ID|
| code| String | 否 | 授权码 |
| redirect_uri| String | 否 |重定向地址|


grant_type是refresh_token时，

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| grant_type| String | 是 | 授权类型。 传refresh_token|
| refresh_token| String | 否 |refresh token|
| client_id| String | 否 | Client ID|


* #### HTTP 请求示例


* #### 返回参数
grant_type是authorization_code时，返回

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| access_token| String\(16\) | 是 | | 访问令牌 |
| expires_in| String | 是 |  | 有效时间，单位是秒 |
| refresh_token| String | 是 |  | 刷新令牌 |
| token_type| String | 否 |  | google home返回固定值bearer。天猫精灵不返回。 |


grant_type是refresh_token时，返回

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| access_token| String\(16\) | 是 | | 访问令牌 |
| expires_in| String | 是 |  | 有效时间，单位是秒 |
| token_type| String | 否 |  | google home返回固定值bearer。天猫精灵不返回。 |


* #### 响应示例：

 ```json
 {
    "code": "52e441823c2f4e1d",
    "state": "xfcgdsfdsssssssssssss"
}
 ```

* #### 异常返回值
400 grant_type错误。refreshToken不存在。code不存在code
  



