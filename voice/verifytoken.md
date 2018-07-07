## AIUI验证服务器Token

#### 功能说明

AIUI验证服务器Token。aiui根据rand，timestamp和分配给oomi服务器的token，使用sha1加密算法生成一个签名。服务器同样生成已经签名，然后比较签名是否是aiui期待的签名。如果不是aiui期待的签名，则token无效，返回failed

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/aiui/ |
| 请求头部 |  |
| HTTP方式 | GET |

* ### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| rand| String| 否 | 随机数，种子 |
| timestamp| String| 否 | 时间戳 |
| signature| String | 是 | 签名 |



* #### HTTP 请求示例

```
GET /aiui/?signature=Dfsdfsdfsdfge5234sdtq43dfetf&amp;timestamp=12342342342&amp;rand=dfsdf HTTP/1.1
Host: localhost:8081

```

* #### 返回参数

返回一个字符串。失败时返回“failed”。成功时返回类似b1ed2c14ee39a00c95eaf1c58eadfe1204c970a2

* #### 响应示例：

b1ed2c14ee39a00c95eaf1c58eadfe1204c970a2

* #### 异常返回值

* #### Http异常返回

| Http返回码 | 返回内| 
| --- | --- |
|200 |failed|


