## 设备控制

#### 功能说明
mqtt设备控制


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/device/mqtt/device/add|
| 请求头部 | |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| clientId| Integer\(10\) | 是 | 设备的id |
| sn| String | 是 |  |
| index| String | 是 |  |
| action| String | 是 |  |
| value| String | 是 |  |

* #### HTTP 请求示例

```
curl -X GET \
  'http://openapi.fantem-gateway.com/device/mqtt/device/add?clientId=1&connectMethod=xxxxxxxxxxxxxx' \
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| guid| String| 否 | 传入的guid|
| inTopic| String | 否 |输入topic |
| outTopic| String | 否 | 输出topic|


* #### 响应示例：

```
{
	"code": 11000,
	"message": "OPERATE_SUCCESS",
	"data": {
		"guid": "344AA453FDE44024A2AE6A7671A4A32C",
		"inTopic": "Oomi/5344AA453FDE44024A2AE6A7671A4A32C",
		"outTopic": "OOMI_CUBE_REPORT_TOPIC"
	}
}
```
11000 表示操作成功

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 11002 | 操作失败| |


