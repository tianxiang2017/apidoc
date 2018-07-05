## 修改密码确认

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/user/updateInfo|
| 请求头部 |   |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| email| String\(255\) | 是 | 待重置密码的邮箱地址|
| password| String | 是 | 旧密码 |
| newPw| String | 是 | 新密码 |



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


