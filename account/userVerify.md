## 激活账户

#### 功能说明
用户在激活邮件中点击激活，跳转掉这里，返回返回激活成功页面


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/user/verify|
| 请求头部 |   |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| email| String\(255\) | 是 | 待激活邮箱地址|
| code| String | 是 | 邮件code。验证邮件链接有效性 |

* #### HTTP 请求示例

```
curl -X GET \
  'http://openapi.fantem-gateway.com/user/verify?email=xx@xx.xxx&code=xxxxxxxxxxxxxxxxxxxxxxxxx' \
```

* #### 返回参数

返回一个页面

* #### 响应示例：

无

* #### 异常返回值

无 


