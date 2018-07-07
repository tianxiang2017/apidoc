## 查询指定id的模板

#### 功能说明

查询指定id的模板

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/message_template/get|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| id| Integer\(10\) | 否 | 模板ID |


* #### HTTP 请求示例
```json
{
    "id": 1
}
```

* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| title| String | 否 |模板标题 |
| text| String  | 否 | 模板文本内容|
| pits|Pit[] | 否 |模板数据 |
| customDataRules|Map[] | 否 | 自定义数据|


* #### 响应示例：

```json
{
    "title": "{-title-}",
    "text": "{-body-}",
    "pits": [
        {
            "type": "STRING",
            "name": "title"
        },
        {
            "type": "STRING",
            "name": "body"
        }
    ],
    "customDataRules": [
        {
            "changed": false,
            "value": "1",
            "type": "STRING",
            "name": "pushType"
        },
        {
            "changed": false,
            "value": 1,
            "type": "INT",
            "name": "typeAttr"
        }
    ]
}
```



* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 3 | 参数为空，参数错误 | |



