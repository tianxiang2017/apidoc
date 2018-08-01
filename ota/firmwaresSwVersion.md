## 版本查询\(1.x版本升级到2.x\)

#### 功能说明

此接口是为了让1.x的设备升级到2.x上。

1.x的cube的product名称是OMMICUBE和prosyst

- 如果根据oomiCubeVersion查到OMMICUBE的固件包，则返回结果中有oomiCubeUrl这类返回参数。此时，如果没有prosyst固件包，就不会返回prosystUrl这类参数。
- 如果根据prosystVersion查询到prosyst固件包，则返回结果中有prosystUrl这类返回参数。如果没有OMMICUBE固件包，就不会返回oomiCubeUrl这类参数。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmwares/swVersion |
| 请求头部 |  |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| oomiCubeVersion | String\(255\) | 是 | OOMI Cube Firmware 的版本。对应的产品名是OMMICUBE |
| prosystVersion | String\(255\) | 是 | OOMI Cube App 的版本。对应的产品名是prosyst |

* #### HTTP 请求示例

[http://openapi.fantem-gateway.com/firmwares/swVersion?oomiCubeVersion=00.10&prosystVersion=1.0.0.4](http://openapi.fantem-gateway.com/retrieve/firmwares/swVersion?oomiCubeVersion=00.10&prosystVersion=1.0.0.4)

#### 返回参数

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| oomiCubeUser | String\(255\) | 否 |  | Cube Firmware 下载包的用户名 |
| oomiCubePassWord | String\(255\) | 否 |  | Cube Firmware 下载包的密码 |
| oomiCubeSwVersion | String\(255\) | 否 |  | Cube Firmware 更新包的版本 |
| oomiCubeSize | String\(255\) | 否 |  | Cube Firmware 更新包的大小 |
| oomiCubeUrl | String\(255\) | 否 |  | Cube Firmware 下载包的下载地址 |
| oomiCubeMd5 | SString\(255\) | 否 |  | Cube Firmware 下载包的MD5值 |
| oomiCubeDescription | String\(255\) | 否 |  | Cube Firmware 下载包的说明 |
| prosystUser | String\(255\) | 否 |  | Cube App 下载包的用户名 |
| prosystPassWord | String\(255\) | 否 |  | Cube App 下载包的密码 |
| prosystSwVersion | String\(255\) | 否 |  | Cube App 更新包的版本 |
| prosystSize | String\(255\) | 否 |  | Cube App 更新包的大小 |
| prosystUrl | String\(255\) | 否 |  | Cube App 下载包的下载地址 |
| prosystMd5 | String\(255\) | 否 |  | Cube App 下载包的MD5值 |
| prosystDescription | String\(255\) | 否 |  | Cube App 下载包的说明 |

* #### 响应示例：

```json
{
    "code": "1",
    "note": "OPERATE_SUCCESS",
    "data": {
        "prosystPassWord": "R37z96hdh53a8oG9A52s",
        "oomiCubeUrl": "http://ota.fantem-gateway.com/firmware/OMMICUBE/1/0/1-0/OMMICUBE-00.10-01.01.zip",
        "oomiCubeUser": "Awx0YRuq8LNzrn21",
        "oomiCubeSize": 20644189,
        "prosystUrl": "http://ota.fantem-gateway.com/firmware/prosyst/1/2/1-0-0-0/prosyst-0.0.0.0-2.0.0.33.apk",
        "oomiCubePassWord": "R37z96hdh53a8oG9A52s",
        "prosystUser": "Awx0YRuq8LNzrn21",
        "oomiCubeSwVersion": "01.01",
        "oomiCubeMd5": "9D6FEABE5A120E2B7E53152B78960054",
        "prosystMd5": "689EE591272FA692320C73CE49187257",
        "prosystSize": 11769176,
        "prosystDescription": "1. Update the UI and OTA flow; \n\n2. Integrate more Devices.\n\n3. Bugs fixing.",
        "oomiCubeDescription": "",
        "prosystSwVersion": "2.0.0.33"
    }
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 601 | 传入的参数不对，就返回这个值 |  |



