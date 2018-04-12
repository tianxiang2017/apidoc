## 获取Client信息

#### 功能说明

获取cube信息。这里获取cube的p2p uid和p2p连接方式。touch或手机调用

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/client/get/info |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :---: | :---: | :--- |
| guid | String\(32\) | 是 | 已注册的cube的guid |
| dat | String\(32\) | 是 | 设备鉴权接口返回的token |
| aat | String\(32\) | 是 | 用户登录后产生的token。 |

* #### HTTP 请求示例

```
{
    "guid": "D3F6A83723D84E96A7BB5C2B3CDCF057",
    "dat": "sdf3rser32fsdfse34tty46rgerg",
    "aat": "41e5f6bd88eb7dfc3967e9e6aeaf7cbf"
}
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| guid | String&lt;32&gt; | 是 | D3F6A83723D84E96A7BB5C2B3CDCF057 | 请求的guid |
| ptopUid | String\(64\) |  | TFRXEHJXDMPEEC3X111A | cube的p2p uid |
| ptopConnectMethod | String&lt;E&gt; | 是 | v2 | p2p的连接方式，v1或者v2 |
| type | String\(10\) | 是 | oomi\_cube | 固定值oomi\_cube |

* #### 响应示例：

```json
{
    "code": "1",
    "note": "操作成功",
    "data": {
        "ptopUid": "TFRXEHJXDMPEEC3X111A",
        "guid": "D3F6A83723D84E96A7BB5C2B3CDCF057",
        "type": "oomi_cube",
        "ptopConnectMethod": "v2"
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 160 | 设备未注册 | guid不存在 |



