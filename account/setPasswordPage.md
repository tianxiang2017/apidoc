## 激活账户

#### 功能说明
系统给用户发送找回密码邮件后。用户点击邮件中“修改密码”链接后，请求这个接口，这个接口会返回一个设置密码的页面


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/user/findLostEmail|
| 请求头部 |   |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| email| String\(255\) | 是 | 待重置密码的邮箱地址|
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

* #### 邮件内容

1 成功 输入并确定你的新密码
2 抱歉，未找到邮件
3 抱歉，此链接已经超时
4 操作失败 


