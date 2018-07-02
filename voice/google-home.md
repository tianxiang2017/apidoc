## 设备控制

#### 功能说明

Google Home的Actions on Google平台与Oomi服务器的对接的接口。
执行intent值和对应操作关系：
1.action.devices.SYNC：同步操作，返回google home需要的数据
2.action.devices.QUERY 查询操作
2.action.devices.EXECUTE 执行指令

accessToken放在Authorization请求头中

#### Alexa设备控制

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/google/smarthome |
| 请求头部 | Content-Type:application/json;charset=UTF-8 |
| HTTP方式 | GET|

* ### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| accountToken| String| 是 | access_token|
| intent| String| 是 |  |




* #### HTTP 请求示例



* #### 返回参数

无

* #### 响应示例：

```json
{
    "code":"1",
    "note":"OPERATION_SUCCESS"
}
```



* #### 异常返回值



