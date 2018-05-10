## 大版本-获取详情

#### 功能说明

此接口主要用于获取某个大版本绑定的子版本的详情

###### 

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmware-package-kit/detail |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| id | Integer\(10\) | 是 | 大版本id |

* #### HTTP 请求示例

```json
{
    "accountId": 111,
    "version": "V0.0.1"
}
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| id | Integer\(10\) | 否 | | 大版本的ID |
| version | String\(255\) | 否 | | 版本号 |
| cnDescription | Text\(6500\) | 是 | | 中文描述 |
| enDescription | Text\(6500\) | 否 | | 英文描述" |
| releaseDatetime | Integer\(14\) | 否 | | 发布时间 |
| firmwarePackage | FpkSubversion\[\] | 否 | | 版本列表 |

#### FpkSubversion

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| id | Integer\(10\) | 否 | | 大版本的ID |
| productId | Integer\(11\) | 否 | | productId |
| version | String\(255\) | 否 | | 版本号 |
| cnDescription | Text\(6500\)| 是 | | 中文描述 |
| enDescription | Text\(6500\)| 否 | | 英文描述" |
| releaseDatetime | Integer\(10\) | 否 | | 发布时间 |
| upgradeMethod | Integer | 否 | | 更新方法，默认为query |
| updateAt | Integer\(10\) | 否 | | 更新时间，为unix时间戳 |
| createAt | Integer\(10\) | 否 | | 更新时间，为unix时间戳 |



* #### 响应示例：

```json
{
    "code": "1",
    "note": "OPERATE_SUCCESS",
    "data": {
        "id": 190,
        "version": "2.0.6.11",
        "cnDescription": "2.0.6.11",
        "enDescription": null,
        "releaseDatetime": null,
        "firmwarePackage": [
            {
                "id": 379,
                "firmwarePackageKitId": 190,
                "productId": 34,
                "productName": "OOMI_Cube_Firmware",
                "productModel": "1",
                "productHwVersion": "V1.0.0.0",
                "productVersion": "V0.2.0.4",
                "createAt": 1515146770000,
                "updateAt": 1515146770000
            },
            {
                "id": 380,
                "firmwarePackageKitId": 190,
                "productId": 31,
                "productName": "OOMI_Cube_APP",
                "productModel": "1",
                "productHwVersion": "V1.0.0.0",
                "productVersion": "V2.0.6.10",
                "createAt": 1515146770000,
                "updateAt": 1515146770000
            },
            {
                "id": 381,
                "firmwarePackageKitId": 190,
                "productId": 30,
                "productName": "OOMI_Touch_Firmware",
                "productModel": "1",
                "productHwVersion": "V1.0.0.0",
                "productVersion": "V1.0.0.19",
                "createAt": 1515146770000,
                "updateAt": 1515146770000
            },
            {
                "id": 382,
                "firmwarePackageKitId": 190,
                "productId": 32,
                "productName": "OOMI_Touch_APP",
                "productModel": "1",
                "productHwVersion": "V1.0.0.0",
                "productVersion": "V2.0.6.6",
                "createAt": 1515146770000,
                "updateAt": 1515146770000
            },
            {
                "id": 383,
                "firmwarePackageKitId": 190,
                "productId": 33,
                "productName": "OOMI_Cube_IR",
                "productModel": "1",
                "productHwVersion": "V1.0.0.0",
                "productVersion": "V1.4.0.0",
                "createAt": 1515146770000,
                "updateAt": 1515146770000
            },
            {
                "id": 384,
                "firmwarePackageKitId": 190,
                "productId": 19,
                "productName": "OOMI_Cube_Zwave",
                "productModel": "1",
                "productHwVersion": "V1.0.0.0",
                "productVersion": "V1.02.0.0",
                "createAt": 1515146770000,
                "updateAt": 1515146770000
            }
        ]
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 3 | 参数缺失 |  |
| 603 | 已经是最新版本 |  |
| 40 | 系统异常 |  |



