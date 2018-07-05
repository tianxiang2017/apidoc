## 上一个绝对小时指定设备的在线情况

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/client/onlinePreviousHour|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| guid | String\(32\) | 是 | |


* #### HTTP 请求示例
client/onlinePreviousHou?guid=xxxxxxxxxxxxxxx

* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| online | Boolean | 是 | true:在线；false：不在线|
|hour|String|是|时间


* #### 响应示例：

```json
{
    "online":false,
    "hour":2018070211
}
```

* #### 异常返回值

无



