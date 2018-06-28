# 绑定网关

#### 功能说明

一个用户支持绑定多个cube/hub。请求参数包括用户id和cube/hub的guid。

一个cube/hub只能绑定一个用户

如果用户和cube已经是绑定关系，不能重复绑定

一次请求只能绑定一个cube，绑定多个cube需要多次绑定

绑定cube时，需要用户已登录，在请求cookie中转入aat（用户的accessToken，从touch/手机获得）

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/accounts/bindGateway |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| guid | String&lt;32&gt; | 是 | 已注册的cube的guid |
| accountId | Integer\(11\) | 否 | 用户id。accountId和auid两个参数中，必须传一个参数，且只能传一个参数。 |
| auid | String&lt;32&gt; | 否 | 保留参数，不处理。为用户生成的唯一代码.accountId和auid两个参数中，必须传一个参数，且只能传一个参数。 |

* #### HTTP 请求示例

  ```json
    {
        "guid":"3CF82C47206D4D4EA05FCA03D2CF5BF3",
        "accountId":268
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
| :--- | :--- | :--- |
| 106 | 用户不存在 |  |
| 1002 | 必填参数为空 | guid或者accountId |
| 1001 | 参数错误 | guid或者auid超长 |
| 2020 | guid无效 | guid不存在 |
| 4059 | cube已被绑定 |  |
| 4061 | 用户和cube已经是绑定关系 |  |
| 2010 | email状态异常 | 邮件未激活或者邮件激活链接已超时 |
| 2000 | 缺少accessToken | 用户登录生成的accessToken，同touch或者手机处获得 |
| 2001 | accessToken过期（或未找到） | 目前没人accessToken过期机制，只有accessToken未找到才会返回 |
| 2022 | 用户ID无效 | accessToken的用户id和参数中accountId不是同一个值 |
| 1311 | 设备未注册 |  |



