## 设备控制

#### 功能说明
mqtt设备控制


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/device/mqtt/device/control|
| 请求头部 | |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| clientId| Integer\(10\) | 是 | 设备的sn |
| sn| String | 是 | 没错，还是sn |
| index| String | 是 | 设置开关状态的设备通路 |
| action| String | 是 | 执行动作， setPowerState，setColor，setPercentage等 |
| value| String | 是 | 设置的值 |

* #### HTTP 请求示例

```
curl -X POST \
  http://openapi.fantem-gateway.com \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'clientId=A01011725020927&sn=A01011725020927&index=1&action=setPowerState&value=1'
```

* #### 返回参数
无


* #### 响应示例：

无


* #### 异常返回值

无


