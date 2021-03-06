# 用户绑定的网关列表

#### 功能说明

获取用户绑定的网关。返回内容包括每个网关的名字、p2pUid等。

此接口**必须**在请求cookie传入用户的accessToken。（Cookie中的aat）

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/client/accountGatewayList |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| accountId | Integer\(11\) | 否 | 用户id。 |

* #### HTTP 请求示例

  ```json
    {
        "accountId":268
    }
  ```
* #### 返回参数

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| gateway | List&lt;Client&gt; | 是 |  | 元素为Client的数组。如果没有数据，返回空数组 |

##### Client

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| guid | String&lt;32&gt; | 是 |  | 注册成功后的guid，32长度字符串 |
| name | String | 否 |  | 设备名称 |
| sn | String\(64\) | 是 |  | 设备的sn。 |
| p2pUid | String\(64\) | 否 |  | p2p的uid |
| p2pConnectMethod | String&lt;E&gt; | 否 | v2 | p2p连接方式。如果有值，只可能是v1或者v2 |
| type | Integer&lt;E&gt; | 是 | 4 | 设备类型。4：cube；6：hub |

* #### 响应示例：

```json
{
    "code": "1",
    "note": "操作成功",
    "data": {
        "gateway": [
            {
                "p2pUid": "T1U2WYNX32MPBRSG111A",
                "p2pConnectMethod": "v2",
                "name": "Cube",
                "guid": "4F54F4248304498EA913548BE954611B",
                "sn": "A01011604010000",
                "type": 4
            },
            {
                "p2pUid": "TMFH9V79DB7GWVY1111A",
                "p2pConnectMethod": "v1",
                "name": "Cube",
                "guid": "B174EE025A4A4EB6B53B6948C76BEF42",
                "sn": "A01011736000001",
                "type": 4
            },
            {
                "p2pUid": "XE3CH4XHSNDF3C5C111A",
                "p2pConnectMethod": "v1",
                "name": "Cube",
                "guid": "CD41EEF836644EE8ABE7756FE7206992",
                "sn": "A01011646000121",
                "type": 4
            },
            {
                "p2pUid": "4M1FUDU7HGECU5V8111A",
                "p2pConnectMethod": "v2",
                "name": "ROOMCube",
                "guid": "DB4AF7BE50FE4CD685F73F1B16127A00",
                "sn": "A01011749010002",
                "type": 4
            }
        ]
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 1002 | 必填参数为空 |  |
| 1001 | 参数错误 |  |
| 2000 | accessToken为空 |  |
| 20001 | accessToken不存在或者已过期 |  |
| 2022 | 用户ID无效 | accessToken的用户id和参数中accountId不是同一个值 |



