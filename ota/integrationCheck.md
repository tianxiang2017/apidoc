## 手机查询所有版本

#### 功能说明

此接口用户手机搜集Cube的版本信息后，发送给服务器查询是否有新版本

###### 

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/ota/integration/check |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| guid | String\(32\) | 是 | 手机APP的guid |
| model | String\(11\) | 否 | 固定为："1" |
| product | String\(255\) | 否 | 产品名，固定为：OOMI\_CUBE |
| firmwares | Firmware\[\] | 否 |  |

##### Firmware

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| name | String\(255\) | 是 | product名 |
| model | String\(255\) | 是 | 特征值，没有就为空字符串 |
| hwVersion | String\(255\) | 是 | 硬件版本号，没有就为硬件版本号 |
| feature | String\(50\) | 是 | 特征值，没有就为空字符串 |
| swVersion | String\(255\) | 是 | 当前版本号 |

* #### HTTP 请求示例

```json
{
    "firmwares": [
        {
            "feature": "",
            "hwVersion": "",
            "model": "1",
            "name": "OOMI_Cube_Firmware",
            "swVersion": "V0.2.0.4"
        },
        {
            "feature": "",
            "hwVersion": "1.1.0.2",
            "model": "1",
            "name": "OOMI_Cube_APP",
            "swVersion": "V2.0.5.8"
        },
        {
            "feature": "",
            "hwVersion": "",
            "model": "1",
            "name": "OOMI_Cube_IR",
            "swVersion": "V1.1.0.0"
        },
        {
            "feature": "zwave_freq_29",
            "hwVersion": "",
            "model": "1",
            "name": "OOMI_Cube_Zwave",
            "swVersion": "V1.02.0.0"
        }
    ],
    "guid": "",
    "model": "1",
    "product": "OOMI_CUBE"
}
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
|  | product | String | 否 | 产品名，固定为：OOMI\_CUBE |
|  | guid | String | 是 | 手机APP的guid |
|  | model | String\(11\) | 否 | 固定为："1" |
|  | firmwares | Firmware\[\] | 否 | 可更新的固件包列表 |

##### Firmware

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| name | String | 是 | product名 |
| model | String | 是 | 特征值，没有就为空字符串 |
| hwVersion | String | 是 | 硬件版本号，没有就为硬件版本号 |
| feature | String | 是 | 特征值，没有就为空字符串 |
|  | oldSwVersion | String | 旧版本号，当此包为全量包时，此参数无效。如果此包为增量包，则表示增量前版本号 |
| swVersion | String | 是 | 此包当前版本号，当此包为增量包时，表示为增量后版本号 |
|  | isFullPackage | String | 是否为全量包，true则表示为全量包，false则表示为增量包 |
|  | needUpgrade | String | 下载此包的url，get请求下载 |
|  | size | Integer | 文件大小 |

* #### 响应示例：

```json
{
    "code": "1",
    "note": "OPERATE_SUCCESS",
    "data": {
        "product": "OOMI_CUBE",
        "guid": "8C26D21152544D3DB8555055D9A949E9",
        "model": "1",
        "firmwares": [
            {
                "model": "1",
                "oldSwVersion": "V0.0.0.0",
                "hwVersion": "V1.0.0.0",
                "name": "OOMI_Cube_APP",
                "feature": null,
                "needUpgrade": true,
                "size": 10261237,
                "isFullPackage": true,
                "swVersion": "V2.0.6.9"
            },
            {
                "model": "1",
                "oldSwVersion": "V0.0.0.0",
                "hwVersion": "V1.0.0.0",
                "name": "OOMI_Cube_IR",
                "feature": null,
                "needUpgrade": true,
                "size": 9785,
                "isFullPackage": true,
                "swVersion": "V1.1.0.0"
            },
            {
                "model": "1",
                "oldSwVersion": "V0.0.0.0",
                "hwVersion": "V1.0.0.0",
                "name": "OOMI_Cube_Zwave",
                "feature": "zwave_freq_29",
                "needUpgrade": true,
                "size": 261365,
                "isFullPackage": true,
                "swVersion": "V1.02.0.0"
            }
        ]
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 3 | 参数缺失 | 参数不全，这种情况极有可能是没有在http header 上添加cookie，要注意。 |
| 2001 | 用户登录的access token 无效 |  |
| 160 | Client未注册 |  |



