# 获取用户绑定的设备的guid

#### 功能说明

返回cube的guid，只会返回一个guid

guid，请求cookie中需要传递设备的guid

aat，请求cookie中需要传递用户的accessToken

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/v2/home/gateway |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

  无，要设置cookie

* #### HTTP 请求示例

  ```json

  ```
* #### 返回参数 返回参数是一个数组

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| 数组 | String\[\] | 是 |  | 注册成功后的guid，32长度字符串 |

* #### 响应示例：

```json
{
    "code": "1",
    "note": "操作成功",
    "data": [
        "E99D5E098D4E49A59CA2A2DA369547D1"
    ]
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 160 | 设备未注册 | guid不在服务器中不存在 |
| 1002 | 必填参数为空 | guid为空 ， aat为空 |
| 1001 | accessToken不存在或者已过期 |  |
| 114 | 用户未绑定cube |  |



