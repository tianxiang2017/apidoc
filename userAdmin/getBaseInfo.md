## 用户基本信息

#### 功能说明

获取用户基本信息

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/accounts/getBaseInfo |
| 请求头部 | Content-Type:application/json;charset=utf-8|
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| auid | String(32) | 是 | 用户的auid |


* #### HTTP 请求示例
```json
{
  "auid":"bf3f4a5bbde04ae083039fccbfbb8214"
}
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| auid| String&lt;32&gt; | 是 | | 用户的auid|
| username| String&lt;255&gt;  |是 | |用户名|
| email| String&lt;255&gt;  |是 | |用户的邮箱|
| phone| String&lt;255&gt; | 是 | |手机号|
| registerTime| Long|是 | |注册时间|
| displayName| String&lt;255&gt; | 是 | |显示名称|




* #### 响应示例：
```json
{
    "code": "1",
    "note": "Operate success",
    "data": {
        "auid": "bf3f4a5bbde04ae083039fccbfbb8214",
        "username": "emborfang",
        "displayName": null,
        "phone": null,
        "email": "emborfang@163.com",
        "sex": 3,
        "birthday": null,
        "address": null,
        "registerTime": null
    }
}
```

* #### 异常返回值

| 3 | 参数为空，参数错误 | auid为空，auid超长，auid不存在 |



