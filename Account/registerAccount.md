# 注册账号

#### 功能说明

touch使用此接口注册用户，国内版手机有新的注册用户接口  
用于用户注册账号，目前只支持使用邮箱注册。  
用户名区分大小写，用户名必须唯一。  
一个邮箱只能注册一个用户。  
用户注册成功后，会发送账号激活的邮箱到用户注册所使用的邮箱中，用户需要通过邮件来完成账号激活操作。  
邮箱激活后方可登录。  
在发送验证邮件到用户邮箱后，此邮箱不能再用来注册；如果用户再次使用此邮箱注册时，提示用户进行邮箱验证。  
邮箱邮件有效时间均为24小时，24小时后邮箱验证过期，用户可以使用此邮箱再次注册。  
后台接收到的密码是前端用Md5进行加密后的32长度的字符串（不直接传输原始密码），后端使用sha256对密码串进行加密。  
所有密码都必须在客户端使用MD5加密后再传给服务器.

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/accounts |
| 请求头部 | application/x-www-form-urlencoded |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| username | String\(255\) | 是 | 用户名，区分大小写，不能重复 |
| email | String\(255\) | 是 | 邮箱，由数字字母 以及@-\_.构成，以数字或者字母开头，以数字或者字母结束 |
| password | String\(255\) | 是 | 用户密码，调用接口时，需要先对密码进行一次md5加密。否则无法登录 |
| rePassword | String\(255\) | 是 | 确认密码，必须和password的值一样 |
| displayName | String\(255\) | 否 | 用户昵称 |
| sex | String&lt;E&gt; | 否 | 性别。只能取0，1，male，female，man，women，男或者女 |
| birthday | String&lt;10&gt; | 否 | 生日，yyyy/MM/dd格式，例如：1996/07/22 |
| address | String\(255\) | 否 | 家庭地址 |
| language | String&lt;E&gt; | 否 | 系统语言。默认值en，只能取en，es，zh\_CN或者ch\_TW |

* #### HTTP 请求示例

```
curl -X POST \
  http://openapi.fantem-gateway.com/accounts \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'email=826426309%40qq.com&username=ausername&password=e10adc3949ba59abbe56e057f20f883e&rePassword=e10adc3949ba59abbe56e057f20f883e'
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| accountId | Integer\(11\) | 是 | 1 | 注册成功后，生成的用户的id |

响应示例：

```json
 {
    "code": 1,
    "note": "OPERATE_SUCCESS",
    "data": {
        "accountId": 920
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 3 | 必填参数为空 | username 、email、password或者rePassword 为空都会返回这个值. |
| 104 | 参数格式错误 | 邮箱格式错误 |
| 108 | 密码错误 | password和rePassword的值不一样 |
| 101 | 邮箱已被注册（已激活） |  |
| 102 | 邮箱已注册，但未激活 | 可以重发邮件激活邮箱 |
| 4 | 参数格式错误 | 性别超出范围。生日格式错误 |
| 112 | 用户名已存在 |  |
| 2 | 注册用户失败 |  |
| 6012 | 发送邮件失败 |  |







