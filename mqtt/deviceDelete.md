# 删除设备

#### 功能说明
mqtt删除设备

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/device/mqtt/device/delete |
| 请求头部 | |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| clientId| Integer\(10\) | 是 | 设备的id |
| sn| String\(64\) | 是 | 设备的id |


* #### HTTP 请求示例

```
curl -X GET \
'http://openapi.fantem-gateway.com/device/mqtt/device/delete ?clientId=1&sn=xxxxxxxxxxxxxx' \
```

* #### 返回参数

无


* #### 响应示例：



* #### 异常返回值




