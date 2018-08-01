## 更新Client状态

#### 功能说明

cube上报cube的状态， 上报p2p连接方式和cube是否绑定了用户。上报后，服务器保存cube的链接方式，及维护cube和用户的绑定关系

以下三种场景cube会调用此接口：  
1. 设备注册成功后  
2. cube和用户绑定后  
3. cube和用户解绑后

#### 调用接口说明

* ### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/client/update/status |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* ### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :---: | :---: | :--- |
| guid | String\(32\) | 是 | 已注册的cube的guid |
| ptopConnectMethod | String&lt;E&gt; | 是 | p2p连接方式，没有绑定用户的cube是一种连接方式，绑定用户是后另一种连接方式。固定范围 v1或者v2 |
<<<<<<< HEAD
| reset | String&lt;E&gt; | 否 | 是否是重置。 |
| bound | String&lt;E&gt; | 否 | 是否绑定了用户，只能取固定值 字符串true或者字符串false |
=======
| reset | String\(10\) | 否 | 是否是重置。 reset或者空 |
| bound | String&lt;E&gt; | 是 | 是否绑定了用户，只能取固定值 字符串true或者字符串false |
>>>>>>> 40adc281e6922c027ef6c669a8619a9a8182730d

* #### HTTP 请求示例

```
{
    "guid": "D3F6A83723D84E96A7BB5C2B3CDCF057",
    "ptopConnectMethod": "v2",
    "reset": "reset",
    "bound": "false"
}
```

* #### 返回参数

无

* #### 响应示例：

```json
{
    "code": 1,
    "note": "操作成功"
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 160 | 设备未注册 |  |
| 3 | 参数为空，参数错误 | |
| 2 | 操作失败 | 当修改P2P连接方式失败时，返回2 |

当必填参数为空时，服务器会返回HTTP 400

