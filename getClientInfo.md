## 获取Client信息

#### 功能说明

获取cube信息。这里获取cube的p2p uid和p2p连接方式

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/client/get/info |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 名称 | 类型 | 是否必须 | 描述 |
| :--- | :---: | :---: | :--- |
| guid | 字符串\(32\) | 是 | 已注册的cube的guid |
| dat | 字符串\(32\) | 是 | 设备鉴权接口返回的token |
| aat | 字符串\(32\) | 是 | 用户登录后产生的token |

* #### HTTP 请求示例

```
{
    "guid": "D3F6A83723D84E96A7BB5C2B3CDCF057",
    "dat": "sdf3rser32fsdfse34tty46rgerg",
    "aat": "41e5f6bd88eb7dfc3967e9e6aeaf7cbf"
}
```

* #### 返回参数

| 名称 | 类型 | 是否必选 | 描述 |
| :--- | :---: | :---: | :--- |
| guid | 字符串&lt;32&gt; | 是 | 请求的guid |
| ptopUid | 字符串\(64\) | 是 | cube的p2p uid |
| ptopConnectMethod | 字符串&lt;E&gt; | 是 | p2p的连接方式，v1或者v2 |
| type | 字符串\(10\) | 是 | 固定值oomi\_cube |

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



