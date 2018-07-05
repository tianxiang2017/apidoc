## 获取固件信息

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/client/findFirmwareInfo|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
|guid | String\(32\) | 是 | |


* #### HTTP 请求示例
```json
{
	"guid": "xxxxxxxxxxxxxxxxxxxxxdsdf"
}
```



* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| zwave_version| String\(100\)| 否 | |
|ir_version|String\(100\)|||
|stm8_version|String\(100\)|||


* #### 响应示例：

{
    "code": "1",
    "note": "Operate success",
    "data": null
}

* #### 异常返回值

无



