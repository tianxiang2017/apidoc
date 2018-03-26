# 用户绑定的cube列表

#### 功能说明

获取用户绑定的cube。每个cube返回名字、p2pUid等。

此接口**必须**在请求cookie传入用户的accessToken。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/accounts/myCubeList |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| accountId | Integer\(11\) | 否 | 用户id。 |

* #### HTTP 请求示例

  ```json
    {
        "accountId":268
    }
  ```
* #### 返回参数

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
|cube | Array| 是 | | 如果没有数据，返回空数组| 

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| guid | String&lt;32&gt; | 是 | BFCEB59DEAF44BE2A004FB1B8A5E5507 | 注册成功后的guid，32长度字符串 |
| name | String | 否 |  | cube名称 |
| sn | String\(64\) | 是 |  | 设备的sn。cube的sn不能重复。重复时返回162。 |
| p2pUid | String\(64\) | 否 | TFRXEHJXDMPEEC3X111A | p2p的uid |
| p2pConnectMethod | String&lt;E&gt; | 否 | v2 | p2p连接方式。如果有值，只可能是v1或者v2 |

* #### 响应示例：

```json
{
    "code": "1",
    "note": "操作成功"
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 1002 | 必填参数为空 |  |
| 2022 | 用户ID无效 | accessToken的用户id和参数中accountId不是同一个值 |



