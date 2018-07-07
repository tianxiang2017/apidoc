# 获取token

#### 功能说明

Alexa获取token调用这个接口。
grant_type为authorization_code时获取accessToken
grant_type为refresh_token时刷新accessToken

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/oauth/token|
| 请求头部 | |
| HTTP方式 | POST |

* #### 输入参数说明

grant_type为authorization_code时：

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| grant_type| String | 是 | 授权类型。 传authorization_code|
| client_id| String | 否 | Client ID|
| code| String | 否 | 授权码 |
| redirect_uri| String | 否 |重定向地址|

grant_type为refresh_token时：

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| grant_type |String | 是 | 授权类型。 传refresh_token|
| refresh_token| String | 否 |refresh token|
| client_id| String | 否 | Client ID|



* #### HTTP 请求示例


```
curl -X POST \
  http://openapi.fantem-gateway.com/oauth/token \
  -H 'Cache-Control: no-cache' \
  -H 'Postman-Token: f503af8e-d622-1cd0-244d-37de65bf52f2' \
  -H 'content-type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW' \
  -F grant_type=authorization_code \
  -F client_id=xxxxxxxxxxxxxxxxx \
  -F code=bcb09cffbe2c4d31 \
  -F redirect_uri=xxxxxxxxxxx
```



* #### 返回参数
grant_type是authorization_code时，返回

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| access_token| String\(16\) | 是 | | 访问令牌 |
| expires_in| String | 是 |  | 有效时间，单位是秒 |
| refresh_token| String | 是 |  | 刷新令牌 |

grant_type是refresh_token时，返回

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| access_token| String\(16\) | 是 | | 访问令牌 |
| expires_in| String | 是 |  | 有效时间，单位是秒 |




* #### 响应示例：
grant_type是authorization_code时，返回

 ```json
{
  "access_token": "294D412BD5A20464043F2381EC3EB6C7",
  "refresh_token": "567030884C7EA513FB843843859A58C3",
  "expires_in": 36000
}
 ```
 
 grant_type是refresh_token时，返回

 ```json
{
  "access_token": "294D412BD5A20464043F2381EC3EB6C7",
  "expires_in": 36000
}
 ```



* #### 异常返回值
400 grant_type错误。refreshToken不存在。code不存在code
  



