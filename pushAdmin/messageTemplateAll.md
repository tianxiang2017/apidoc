## 查询所有模板

#### 功能说明

查询所有模板

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/message_template/query_all|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明


* #### HTTP 请求示例


* #### 返回参数

返回一个元素为MessageTemplate的数组

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| title| String | 否 |模板标题 |
| text| String  | 否 | 模板文本内容|
| pits|Pit[] | 否 |模板数据 |
| customDataRules|Map[] | 否 | 自定义数据|


* #### 响应示例：

```json
[
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
]
```



* #### 异常返回值

无



