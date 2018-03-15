## 绑定cube（旧）

#### 功能说明

绑定用户和cube的关系。由touch/手机发起，经过cube，cube调用服务器。  
此接口只能绑定一个cube，用户绑定一个cube后，再绑定另一个cube会失败

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/cube/confirm |
| 请求头部 | Content-Type:application/x-www-form-urlencoded |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| sn | String | 是 | cube的sn |
| uuid | String | 否 | cube的uuid，保留参数 |
| accountId | Integer | 否 | 用户的id |
| touchToken | String | 否 | 在touch上登录的用户的accessToken |
| touchUuid | String | 是 | 在touch的sn， 用户在此touch上登录，并发起绑定 |

* #### HTTP 请求示例

```
curl -X POST \
  http://openapi.fantem-gateway.com/cube/confirm \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'uuid=&accountId=173&touchToken=fb2a1e06d418ed7ef6fedeabce273798&touchUuid=touchfjsljdfksdjfksdfsdfsdfsdfs234sdfsd&sn=A01011725020927'
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| code | String | 是 |  | 绑定结果 |

响应示例：

```json
{
    "code": 1
}
```

* #### 返回值

  本接口使用单独的返回码

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 1 | 操作成功 | cube与touch绑定成功 |
| 2 | 此cube已经与其他绑定，但是user并没有绑定 |  |
| 3 | 此user以及与其他绑定，但是cube无绑定 |  |
| 4 | 此user与此cube均已经与其他绑定 |  |
| 5 | 此cube与此user已经是绑定关系 |  |
| 6 | user尚未激活，无法做绑定操作 |  |
| 7 | 操作失败 |  |
| 8 | 参数错误 |  |
| 106 | 用户不存在 |  |
| 181 | cube未注册 |  |



