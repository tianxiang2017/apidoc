## 解绑cube（旧）

#### 功能说明

目前用户与cube的关系只能一对一，就是说一个用户只能绑定一个cube。

当且仅到用户和cube是绑定关系是才返回成功。用户绑定多个cube时返回4

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/cube/removeBind |
| 请求头部 | Content-Type:application/x-www-form-urlencoded |
| HTTP方式 | POST |

* #### 输入参数说明

* ##### 解绑输出参数

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| sn | String（64） | 是 | 要解绑的cube的sn |
| uuid | String（64） | 是 | 要解绑的cube的uuid，保留参数 |
| accountId | Integer（10） | 是 | 要解绑的用户的id |
| touchToken | String（32） | 是 | 在touch上登录的用户的accessToken |
| touchUuid | String（64） | 是 | 在touch的sn， 用户在此touch上登录，并发起解绑 |

<<<<<<< HEAD
* ##### 强制绑定输入参数：

  ###### 强制绑定是：

把sn对应的cube和它绑定的用户解绑，把newAccountId对应的用户和它绑定的cube解绑，然后把sn对应的cube和newAccountId对应的用户绑定。最终目的，实现sn和newAccountId绑定
=======
* #### 强制解绑输入参数：
>>>>>>> 40adc281e6922c027ef6c669a8619a9a8182730d

| 名称 | 类型 | 是否必选 | 取值范围 | 描述 |
| :--- | :---: | :---: | :--- | :--- |
| sn | String | 必选 |  | 强制绑定的cube的sn |
| uuid | String | 必选 |  | cube的uuid，保留参数 |
| newAccountId | Integer | 必选 |  | 强制绑定的用户的id |
| newTouchToken | String | 必选 |  | 在touch上登录的用户的accessToken |
| newTouchUuid | String | 必选 |  | 在touch的sn， 用户在此touch上登录，并发起绑定 |
<<<<<<< HEAD
| compelFlag | String | 必选 | yes | 填yes |


=======
| compelFlag | String | 必选 | yes | 只能填yes |

用户已经绑定多个cube返回3
>>>>>>> 40adc281e6922c027ef6c669a8619a9a8182730d

* #### HTTP 请求示例

```
curl -X POST \
  http://openapi.fantem-gateway.com/cube/confirm \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'uuid=&accountId=173&touchToken=fb2a1e06d418ed7ef6fedeabce273798&touchUuid=touchfjsljdfksdjfksdfsdfsdfsdfs234sdfsd&sn=A01011725020927'
```

* #### 返回参数

  无

* #### 响应示例：

```json
{
    "code": 1
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 3 | 参数为空，参数错误 |  |
| 4 | 参数格式错误 | accountId不是数字 |
| 114 | 用户未绑定cube |  |
| 181 | 设备未注册 |  |



