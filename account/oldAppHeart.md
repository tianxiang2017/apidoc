# 心跳包（旧）

#### 功能说明

touch和手机调用的心跳包接口

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/accounts/heart|
| 请求头部 | application/x-www-form-urlencoded |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| accountId     | String   | 是  |   用户id |
| accountToken  | String   | 是  | 用户登录后的accessToken|
| uuid          | String   | 是  |touch或者手机的sn|

* #### HTTP 请求示例

```json
{
    "username": "598206408@qq.com"
}
```

* #### HTTP 请求示例2

```json
{
    "username": "ztx",
    "language":"zh_TW"
}
```

* #### 返回参数

无

* #### 响应示例：

```json
{
    "code": "1",
    "note": "操作成功
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 3 | 必填参数为空。 | 必填参数为空，或者参数错误 |
| 106 | 用户不存在 |  |
| 4023 | 邮箱不存在 | 用户注册没有邮箱，可能是手机注册 |
| 2 | 发送邮件失败 | 邮件地址未注册等错误 |
| 4 | 参数格式错误 | 包括language的值超出范围 |


