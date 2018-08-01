# V2登录

#### 功能说明

使用用户名、手机号或者邮箱登录  
手机号登录时，默认是中国手机号+86

guid，请求cookie中需要传递设备的guid

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/v2/accounts/login |
| 请求头部 | application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| username | String\(255\) | 是 | 登录名，可以是用户名、手机号或者邮箱 |
| countryCode | String\(16\) | 否 | 手机号所属国家的国家码。它 和手机号一起，唯一标识全球的手机号。使用手机号时，需要传。由加号和数字组成，最多16个字符。以+开头，例如：+86。默认是+86 |
| password | String&lt;32&gt; | 是 | 用户密码，调用接口时，需要先对密码进行一次md5加密。否则无法登录。32长度的小写 |

* #### HTTP 请求示例

```
{
    "username":"apilogin",
    "password":"e10adc3949ba59abbe56e057f20f883e"
}
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| accountId | Integer\(11\) | 是 | 1 | 用户ID。ft\_account.id |
| username | String\(255\) | 是 |  | 用户名 |
| displayName | String\(255\) | 否 |  | 用户昵称 |
| email | String\(255\) | 否 | 598206408@qq.com | 邮件 |
| emailStatus | Integer\(E\) | 否 | 2 | 邮件状态,， 1：未验证邮箱；2：已验证邮箱；3：超时未验证邮箱 |
| phone | String\(255\) | 否 |  | 电话号码 |
| phoneStatus | String\(4\) | 否 |  | 电话号码状态 |
| birthday | String（10） | 否 |  | 生日 |
| address | String\(255\) | 否 |  | 地址 |
| registerTime | String\(32\) | 否 |  | 注册时间 |
| country | String\(11\) | 否 |  | 国家 |
| creditCard | String\(30\) | 否 |  | creditCard |
| accountAccessToken | String&lt;32&gt; | 是 |  | 登录的accessToken，用户登录信息凭证。此token存在有效期。过期后需要使用refreshToken刷新token，或者重新登录。 |
| accessTokenExpireTime | Long | 是 |  | accessToken过期时刻，毫秒数 |
| accountRefreshToken | String&lt;32&gt; | 是 |  | 登录的refreshToken，用来生产新的accessToken和refreshToken。refreshToken也存在有效期，过期后需要重新登录。 |
| refreshTokenExpireTime | Long | 是 |  | refreshToken过期时刻，毫秒数 |

* #### 响应示例：

```json
{
    "code": "1",
    "note": "操作成功",
    "data": {
        "birthday": null,
        "country": null,
        "accountRefreshToken": "8377d3dc4a84b3bf9c5d3be91057e3e5",
        "address": null,
        "registerTime": 1528354974000,
        "displayName": null,
        "accountAccessToken": "aa50c1fd6d923cff3272707a8fe66406",
        "accessTokenExpireTime": 1528884705919,
        "accountId": 50021,
        "emailStatus": 2,
        "refreshTokenExpireTime": 1531469505919,
        "phone": null,
        "phoneStatus": null,
        "creditCard": null,
        "email": "598206408@qq.com",
        "username": "apilogin"
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 3 | 必填参数为空。 | 用户名为空，密码为空 |
| 160 | 设备未注册 | cookie中的guid为空，guid不在服务器中不存在 |
| 113 | 邮箱超时未激活 |  |
| 106 | 用户不存在 |  |
| 108 | 密码错误 |  |
| 8005 | 国家码格式错误 |  |



