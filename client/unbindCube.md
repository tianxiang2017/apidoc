# 绑定cube

#### 功能说明

1. 如果用户绑定的cube包含需要解绑的cube，解绑用户和此cube的关系。用户和其它cube的绑定关系不受影响。

2. 如果用户绑定的cube不包含需要解绑的cube，查询guid指定的cube是否绑定了用户，如果没有绑定用户，返回解绑成功；cube绑定了用户返回用户和cube不是绑定关系

3. 一次只能解绑一个用户

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/cube/unbindCube |
| 请求头部 | Content-Type:application/json;charset=utf-8|
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| guid | String&lt;32&gt; | 是 | 已注册的cube的guid |
| accountId | Integer\(11\) | 是 | 用户id |

* #### HTTP 请求示例

  ```json
    {
        "guid":"3CF82C47206D4D4EA05FCA03D2CF5BF3",
        "accountId":268
    }
  ```
* #### 返回参数

无  
响应示例：

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
| 1001 | 参数错误 |  |
| 2020 | guid无效 | 找不到guid对应的cube。或者不是cube |
| 106 | 用户不存在 |  |
| 114 | 用户未绑定cube |  |
| 4059 | cube已被绑定 | cube绑定了一个用户，但是这个用户不是我们要绑定的 |
| 4062 | 用户和cube不是绑定关系 | cube未绑定 |



