## 某个产品详情

#### 功能说明

根据产品ID查询产品信息。
请求地址中设置productId

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/products/one/{productId}|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| | String\(255\) | 否 | |


* #### HTTP 请求示例
```
curl -X POST \
  http://openapi.fantem-gateway.com/products/one/2 \
  -H 'Cache-Control: no-cache' \
```


* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| id| Integer\(10\) | 是 | 产品ID |
| product| String\(255\) | 否 | c产品名   |
| model | String\(255\) | 否 |   |
| hwVersion | String\(255\) | 否 | 产品版本  |
| feature | String\(255\) | 否 | 特性   |
| versionFormat | String\(255\) | 否 | 版本号格式  |


* #### 响应示例：


```json
{
    "id": 2,
    "product": "OMMICUBE",
    "model": "1",
    "hwVersion": "1.0",
    "feature": null,
    "versionFormat": "#N.#N"
}
```



* #### 异常返回值

400 productId错误



