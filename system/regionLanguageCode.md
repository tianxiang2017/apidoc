# 获得语言代码

#### 功能说明

获取系统支持的语言代码，后续可用更加语言代码获取区域信息。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/region/languageCode |
| 请求头部 | |
| HTTP方式 | GET|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| page      | Integer   | 否         | 查询第几页，从1开始。默认值1 |
| pageSize  | Integer   | 否        | 每页记录数，默认值20 |

* #### HTTP 请求示例

```
curl -X GET \
  'http://openapi.fantem-gateway.com/region/languageCode?page=1' 
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| currentPage   | Integer   | 是    |  正整数 | 当前页，从1开始 |
| totalPage     | Integer   | 是    |  正整数 | 总也数 |
| totalRecord   | Integer   | 是    |  正整数 | 总记录数 |
| data          | String[]  | 是    |  语言代码 | 返回数据，字符串数组，数组中的元素是语言代码 |

* #### 响应示例：

```json
{
    "code": 1,
    "note": "OPERATE_SUCCESS",
    "data": {
        "currentPage": 1,
        "totalPage": 1,
        "totalRecord": 1,
        "data": [
            "zh-CN",
            "en-US"
        ]
    }
}
```

* #### 异常返回值

暂无


