## 心跳包

#### 功能说明

客户端（cube、touch和手机）每一分钟发送一个心跳包到服务器，服务器处理心跳请求后返回。

心跳包维持客户端的在线状态

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/client/heart |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :---: | :---: | :--- |
| guid | String\(32\) | 是 | 已注册的设备的guid |
| dat | String\(32\) | 否 | 设备鉴权接口返回的token |
| aat | String\(32\) | 否 | 用户登录后产生的token |

* #### HTTP 请求示例

```
{
    "guid": "D3F6A83723D84E96A7BB5C2B3CDCF057",
    "dat": "sdf3rser32fsdfse34tty46rgerg2234",
    "aat": "41e5f6bd88eb7dfc3967e9e6aeaf7cbf"
}
```

* #### 返回参数

无

* #### 响应示例：

```json
{
    "code": "1",
    "note": "操作成功"
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 3 | 必填参数为空 | guid为空时返回 |



