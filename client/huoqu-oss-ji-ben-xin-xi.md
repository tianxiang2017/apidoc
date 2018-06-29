# 获取OSS基本信息

#### 功能说明
获取OSS基本信息。这个接口开放出去了，但是没地方调用。


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/oss/ossBaseInfo|
| 请求头部 |  |
| HTTP方式 | GET |

* #### 输入参数说明

无


* #### HTTP 请求示例

* #### 返回参数

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| guid | String&lt;32&gt; | 是 | D3F6A83723D84E96A7BB5C2B3CDCF057 | 请求的guid |
| ptopUid | String\(64\) | | TFRXEHJXDMPEEC3X111A | cube的p2p uid |
| ptopConnectMethod | String&lt;E&gt; | 是 | v2 | p2p的连接方式，v1或者v2 |
| type | String\(10\) | 是 | oomi\_cube | 固定值oomi\_cube |


* #### 响应示例：

  ```json
{
    "code": "1",
    "note": "操作成功",
}
```



* #### 异常返回值
无








