## 查询产品列表

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/products/query|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| pageNum| Integer\(10\) | 否 | 第几页|
| pageSize| Integer\(10\) | 否 |每页大小 |
| keyword| String\(10\) | 否 | 产品名|


* #### HTTP 请求示例

```json
{
    "pageNum":1,
    "pageSize":10,
    "keyword":null
}
```

* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| | | 否 | |


* #### 响应示例：

无

* #### 异常返回值

无



