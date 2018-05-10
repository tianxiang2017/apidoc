## 大版本-检查更新

#### 功能说明

如果touch内部已经保存了一个系统版本（大版本）号时，调用此接口查询是否有更新的系统版本（大版本）。

###### 

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmware-package-kit/check\_update |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| accountId | Integer\(10\) | 是 | 用户ID |
| version | String\(255\) | 是 | 当前大版本的版本号 |

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
| id | Integer | 否 || 大版本的ID |
|  version | Integer | 否 || 版本号 |
| cnDescription | Integer | 是| | 中文描述 |
| enDescription | Integer | 否| | 英文描述" |
|  releaseDatetime | Integer | 否 || 发布时间 |
|  firmwarePackage | FpkSubversion\[\] | 否| | 版本列表 |

#### FpkSubversion

|  参数名 | 类型 | 是否必须|说明 |
| :--- | :--- | :--- | :--- |
| id | Integer | 否 | 大版本的ID |
| productId | String | 否 | productId |
| version | Integer | 否 | 版本号 |
| cnDescription | Text| 是 | 中文描述 |
| enDescription | Text| 否 | 英文描述" |
| releaseDatetime | Integer(13) | 否 | 发布时间 |
| upgradeMethod | Integer | 否 | 更新方法，默认为query |
| updateAt | Integer | 否 | 更新时间，为unix时间戳 |
| createAt | Integer | 否 | 更新时间，为unix时间戳 |

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



