## 主页的四个数据

#### 功能说明
查询主页的四个数据，从左到右一次是：总注册用户数 在线用户数 注册cube数 在线cube数


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/accounts/registeredUserStatistics|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | GET |

* #### 输入参数说明

无  


* #### HTTP 请求示例


* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| user| Long | 否 | 总注册用户数|
|onlineUser | Long | 否 |在线用户数 |
|cube | Long | 否 | 注册cube数|
|onlineCube | Long | 否 |在线cube数 |



* #### 响应示例：

```json
{
    "user":10000,
    "onlineUser":200,
    "cube":12,
    "onlineCube":1
}
```

* #### 异常返回值

无



