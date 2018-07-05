## 请求cube的p2p uid\(旧\)

#### 功能说明

调用此接口  
获得用户绑定的cube的p2puid，旧接口。旧touch调用此接口获取在touch登录的用户绑定的cube的p2p uid。当用户在touch上登录后，touch调用此接口。登录重启touch，重启后touch会调用此接口。

旧版手机在登录时，系统会返回cube的p2p uid给手机。

新版touch（2.0.5）调用/client/get/info获取cube的p2p uid

请求时需要传递用户的accessToken，需要用户和cube已经绑定。接口返回devToken参数对应的用户绑定的cube的p2p uid

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/cube/confirm |
| 请求头部 |  |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| devToken | String&lt;32&gt; | 是 | 在touch上登录的用户的accessToken |
| uuid | String\(64\) | 是 | touch的sn，不是cube的sn |

* #### HTTP 请求示例

```
curl -X GET \
  'http://openapi.fantem-gateway.com/cube/confirm?devToken=41e5f6bd88eb7dfc3967e9e6aeaf7cbf&uuid=5750936E7DC203D1'
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| p2pUid | String\(64\) | 必选 | TFRXEHJXDMPEEC3X111A | devToken参数对应的用户绑定的cube的p2p uid |

* #### 响应示例：

```json
{
    "code": "1",
    "note": "操作成功",
    "data": {
        "p2pUid": "TFRXEHJXDMPEEC3X111A"
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 2| 操作失败 | uuid或者devToken为空 |
| 3| 参数错误 | accessToken不存在 |
| 114| 用户未绑定cube | |




