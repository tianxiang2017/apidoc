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
| total| Long | 是 | 总记录数 |
| data| Product[]| 是 | 具体数据 |

product内容如下：

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| id| Integer\(10\) | 是 | 产品ID |
| productId| Integer\(10\)| 是 | 具体数据 |










* #### 响应示例：

```json
{
    "total": 91,
    "data": [
        {
            "id": 2,
            "productId": 2,
            "product": {
                "id": 2,
                "product": "OMMICUBE",
                "model": "1",
                "hwVersion": "1.0",
                "feature": null,
                "versionFormat": "#N.#N"
            },
            "oldSwVersion": "00.00",
            "swVersion": "00.03",
            "firmwareUrl": "http://ota.fantem-gateway.com/firmware/OMMICUBE/1/1-0/OMMICUBE-00.03.apk",
            "protocol": "http",
            "protocolVersion": "1.1",
            "username": "admin",
            "password": "admin",
            "cnDescription": null,
            "enDescription": "Fixed some bugs.",
            "remark": null,
            "size": 8091130,
            "md5Code": "5F615237BA80B5D550C8BF7E01E5CE11",
            "publicStatus": true,
            "updateAt": 1509047566000,
            "createAt": 1509047566000,
            "fullPackage": true
        },
        {
            "id": 3,
            "productId": 3,
            "product": {
                "id": 3,
                "product": "touch",
                "model": "0",
                "hwVersion": "1.0",
                "feature": null,
                "versionFormat": "V#N.#N.#N.#N"
            },
            "oldSwVersion": "V0.0.0.0",
            "swVersion": "V1.0.0.15",
            "firmwareUrl": "http://ota.fantem-gateway.com/firmware/touch/0/1-0/touch-V1.0.0.15.apk",
            "protocol": "http",
            "protocolVersion": "1.1",
            "username": "Awx0YRuq8LNzrn21",
            "password": "R37z96hdh53a8oG9A52s",
            "cnDescription": null,
            "enDescription": "Fixed some bugs.",
            "remark": null,
            "size": 38159852,
            "md5Code": "350c6acf2128c72778ad92cd22acc75b",
            "publicStatus": true,
            "updateAt": 1509047566000,
            "createAt": 1509047566000,
            "fullPackage": true
        }
    ]
}
```

* #### 异常返回值

无



