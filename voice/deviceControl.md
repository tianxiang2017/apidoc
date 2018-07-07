## AIUI验证服务器Token

#### 功能说明

AIUI验证服务器Token。aiui根据rand，timestamp和分配给oomi服务器的token，使用sha1加密算法生成一个签名。服务器同样生成已经签名，然后比较签名是否是aiui期待的签名。如果不是aiui期待的签名，则token无效，返回failed。
此接口已开放出去。但没有使用。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/aiui/ |
| 请求头部 | Content-Type:application/json;charset=UTF-8 |
| HTTP方式 | POST|

* ### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| SessionParams| String| 是 | 会话参数。进过Base64编码。从这个参数里面获得access_token|
| Msg| String| 否 |  |

SessionParams明文示例：


```json
{
	"pers_param": {
		"access_token": "access_tokenaccess_token"
	}
}
```
SessionParams明文示例：



```json
{
	"intent": {
		"semantic": [{
		}]
	}
}
```

* #### HTTP 请求示例


```json
{
	"SessionParams":"eyJwZXJzX3BhcmFtIjp7ImFjY2Vzc190b2tlbiI6ImFjY2Vzc190b2tlbmFjY2Vzc190b2tlbiJ9fQ==",
	"Msg":{
		"Content":"ewoJImludGVudCI6IHsKCQkic2VtYW50aWMiOiBbXQoJfQp9"
	}
}
```


* #### 返回参数



* #### 响应示例：



* #### 异常返回值



