# 修改邮箱的密码

#### 功能说明

修改邮箱的密码。用户在touch上点击忘记密码，系统发送邮件到用户邮箱。用户在邮件中输入新密码，确认后提交调用此接口

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/accounts/updatepw |
| 请求头部 | application/x-www-form-urlencoded |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- | :--- |
| email | String&lt;255&gt; | 是  | 用户邮箱，用户在做用户注册时填写的邮箱 |
| password | String&lt;32&gt; | 是  | 用户新密码，MD5加密后的 |

* #### HTTP 请求示例

```
curl -X POST \
  http://openapi.fantem-gateway.com/accounts/login \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'email=598206408@qq.com&password=e10adc3949ba59abbe56e057f20f883e'
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| str | String&lt;E&gt; | 是 | 1 | 修改结果 1 表示验证成功，用户可以进行密码修改；2 表示邮箱不存在；4 表示操作失败，一般情况是服务器后台报错，重新操作即可。注：此处返回码分多种情况，为前后端协商的返回码，不能与服务器公共返回码对照 |

响应示例：

```json
{
    "str": "1"
}
```

* #### 异常返回值

无




