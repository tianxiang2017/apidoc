# 用户确认授权

#### 功能说明
用户确认授权，获取code。

第三方跳转到OOMI系统的用户登录页面，用户登录并确认授权后，请求这个接口，这个接口生成一个code返回给页面，页面再重定向到第三方设置的重定向地址。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/oauth/confirm_authorization|
| 请求头部 |Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| accountId| Integer\(10\); | 是 | 用户id |
| clientId| String | 是否 | 第三方客户端Id |
| state| String | 否 | 状态，管理授权操作，服务器做透传，直接返回原来的值。 |



* #### HTTP 请求示例


```json
{
	"state":"xfcgdsfdsssssssssssss",
	"accountId":1,
	"clientId":"xxxxxxxxxxxxxxxxx"
}
```

* #### 返回参数
| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| code| String\(16\) | 是 | | 产生的code |
| state| String | 否 |  | 传入的state |


* #### 响应示例：

 ```json
 {
    "code": "52e441823c2f4e1d",
    "state": "xfcgdsfdsssssssssssss"
}
 ```

* #### 异常返回值
无

* ##### HTTP返回码
400 参数错误


