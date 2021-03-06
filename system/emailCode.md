# 发送邮箱验证码

#### 功能说明

用户需要验证邮箱时，调用此接口发送验证码到指定的邮箱，用户查看邮箱里的验证码然后使用。

短信验证码有效时间为1天。重复发送只有最后一条验证码有效。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/email/code |
| 请求头部 | application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| email | String\(255\) | 是 | 邮箱，可使用字母、数字、下划线、横线，需以字母开头。正则表达式：^\[a-zA-Z0-9_-\]+@\[a-zA-Z0-9_-\]+\(.\[a-zA-Z0-9\_-\]+\)+$。邮箱唯一，同一个邮箱只能注册一次 |
| language | String&lt;E&gt; | 否 | 邮件使用的语言，默认值en。可以使用的值有zh\_CN，en |
| status | Integer\(E\) | 否 | 注册时传入1，重置密码时不传 |

* #### HTTP 请求示例

```json
{
    "email": "970779815@qq.com",
    "status":1
}
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| email | String{5,255} | 是 |  | 同请求参数 |
| language | String&lt;E&gt; | 是 |  | 邮件实际使用的语言，一般和传入值一样，没传入是返回默认值。 |

* #### 响应示例：

```json
{
    "code": 1,
    "note": "OPERATE_SUCCESS",
    "data": {
        "email": "598206408@qq.com",
        "language": "en"
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 3 | 必填参数为空。 | 必填参数为空，或者参数错误 |
| 4 | 参数格式错误 |  |
| 6012 | 发送邮件失败 | 包括邮件不存在情况 |
| 4023 | 邮箱未注册 | 重置密码时，需要邮箱已经注册 |
| 113 | 邮箱未激活 |  |
| 4053 | 邮箱已被注册 | 注册时，邮箱不能不注册 |



