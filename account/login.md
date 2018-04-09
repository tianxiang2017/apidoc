# 登录

#### 功能说明

使用用户名、手机号或者邮箱登录  
使用邮箱注册的用户，在登录之前需要先激活邮箱。  
使用touch登录时，必须携带cube的sn。这个cube需要提前注册。  
接口不能用于一个用户绑定多个cube后登录。一个用户绑定多个cube后，使用/v2/accounts/login登录

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/accounts/login |
| 请求头部 | application/x-www-form-urlencoded |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| uuid | String\(64\) | 是 | 设备（touch/手机）唯一标识。此设备必须先注册。 |
| username | String\(255\) | 是 | 登录名，可以是用户名、手机号或者邮箱 |
| countryCode | String\(16\) | 否 | 手机号所属国家的国家码。它 和手机号一起，唯一标识全球的手机号。使用手机号时，需要传。由加号和数字组成，最多16个字符。以+开头，例如：+86 |
| password | String&lt;32&gt; | 是 | 用户密码，调用接口时，需要先对密码进行一次md5加密。否则无法登录。32长度的小写 |
| cubeSn | String\(64\) | 否 | cube的sn，传入这个参数时，用户在登录时可以没有绑定cube。这时，服务器自动将这个sn对应的cube和用户绑定。用于touch登录时传这个参数。 |
| devToken | String&lt;32&gt; | 否 | 保留参数。设备访问凭证。 |
| expireTime | String\(64\) | 否 | 保留参数。设备访问凭证过期时间。 |

* #### HTTP 请求示例

```
curl -X POST \
  http://openapi.fantem-gateway.com/accounts/login \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'username=apilogin&password=e10adc3949ba59abbe56e057f20f883e&uuid=touchfjsljdfksdjfksdfsdfsdfsdfs234sdfsd&cubeSn=A01011725020927'
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| accountToken | String&lt;32&gt; | 是 | 9556003c2c7db7da3b9e5396dac46670 | 登录的accessToken，用户登录信息凭证。此token存在有效期。过期后需要使用refreshToken刷新token，或者重新登录。 |
| flushToken | String&lt;32&gt; | 是 | de89376b27596ace5034a133958b5a34 | 登录的refreshToken，用来生产新的accessToken和refreshToken。refreshToken也存在有效期，过期后需要重新登录。 |
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
| accountRank | String\(500\) | 否 |  | 用户组，多个值用&分割 |

* #### 响应示例：

```json
{
    "code": 1,
    "note": "OPERATE_SUCCESS",
    "data": {
        "birthday": null,
        "country": null,
        "address": "",
        "registerTime": 1508479906000,
        "displayName": "",
        "accountRank": null,
        "accountId": 919,
        "emailStatus": 2,
        "phone": null,
        "flushToken": "de89376b27596ace5034a133958b5a34",
        "phoneStatus": 0,
        "accountToken": "9556003c2c7db7da3b9e5396dac46670",
        "creditCard": null,
        "email": "598206408@qq.com",
        "username": "apilogin"
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 3 | 必填参数为空。 | 必填参数为空，或者参数错误 |
| 151 | 设备未注册 | touch或者手机没有注册 |
| 181 | cube未注册 |  |
| 102 | 邮箱未激活 |  |
| 113 | 邮箱超时未激活 |  |
| 106 | 用户不存在 |  |
| 108 | 密码错误 |  |
| 8004 | 国家码为空 |  |
| 8005 | 国家码格式错误 |  |
| 114 | 用户未绑定cube |  |
| 170 | app版本过低 | app版本低于cube支持的最低版本 |



