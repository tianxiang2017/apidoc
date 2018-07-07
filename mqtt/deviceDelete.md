# 删除设备

#### 功能说明
mqtt删除设备

目前还适合cube调用

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
| clientId| Integer\(10\) | 是 | 设备的sn，待确认 |
| sn| String\(64\) | 是 | 设备的sn|


* #### HTTP 请求示例

```
curl -X GET \
'http://openapi.fantem-gateway.com/device/mqtt/device/delete ?clientId=A01011725020927&sn=xxxxxxxxxxxxxx' \
```

* #### 返回参数

无


* #### 响应示例：
无


* #### 异常返回值
无



