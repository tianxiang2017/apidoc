## 蓝牙地址修复-查询

#### 功能说明

蓝牙地址修复-查询

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/clients/macAddressRepairQuery|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| username| String\(255\) | 否 | |
| sn| String\(64\) | 是 | |


* #### HTTP 请求示例
```json
{
    "sn":"A01011725020927"
}
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
|registered | Client | 否 | 已注册的信息|
|forMacRepair| Client| 否 | 待修复的目的信息|
|cubeByAccountId| | 否| cube已经绑定的用户| 
|bound|Boolean |否|如果同时输入sn和username，这个参数描述这两者是否是绑定关系|


* #### 响应示例：

无

* #### 异常返回值

无



