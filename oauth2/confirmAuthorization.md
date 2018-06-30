# 用户确认授权

#### 功能说明

用户授权后产生code

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
| accountId| Integer\(10\); | 否 | 用户id |
| clientId| String | 否 | 第三方客户端Id |
| responseType| String | 否 |responseType |
| state| String | 否 | 状态 |



* #### HTTP 请求示例


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



