# 获取区域信息

#### 功能说明
根据语言代码获取区域信息

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/region/list|
| 请求头部 |   |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| languageCode| String | 是         | 语言代码。获取语言代码接口（region/languageCode）返回data中的数组中的一个值 |


* #### HTTP 请求示例

```
curl -X GET \
  'http://openapi.fantem-gateway.com/region/list?languageCode=zh-CN'
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| currentPage   | Integer   | 是    | 1 | 当前页，从1开始 |
| totalPage     | Integer   | 是    |  1 | 总也数 |
| totalRecord   | Integer   | 是    |  2 | 总记录数 |
| data          | Region[]  | 是    |  | 返回数据，元素是区域信息|

* #### 响应示例：

```json
{
    "code": "1",
    "note": "操作成功",
    "data": {
        "currentPage": 1,
        "totalPage": 1,
        "totalRecord": 1,
        "data": [
            {
                "name": "中国",
                "phoneCode": "+86"
            },
            {
                "name": "美国",
                "phoneCode": "+1"
            }
        ]
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 3 | 必填参数为空，或者参数错误 |  |









