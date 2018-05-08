# 获取单个固件包信息

#### 功能说明

获取固件包信息

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmwares/detail |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| product | String\(255\) | 是 | 产品名 |
| feature | String\(255\) | 否 | 目前只有OOMI\_Cube\_Zwave才有 |
| oldSwVersion | String\(255\) | 是 | 暂时固定为：V0.0.0.0 |
| currentSwVersion | String\(255\) | 是 | 产品当前版本号 |
| accountId | Integer\(11\) | 否 | 保留参数。 |

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
| firmwareId | int | 否 |  | 固件包ID |
| product | String | 否 |  | 产品名，与参数中产品名相同 |
| model | String | 否 |  | 型号，固定为"1" |
| hwVersion | String | 否 |  | 硬件版本号 |
| feature | bool | 否 |  | product的特征，默认为空字符串 |
| oldSwVersion | String | 否 |  | 旧版本号，当此包为全量包时，此参数无效。如果此包为增量包，则表示增量前版本号 |
| swVersion | String | 否 |  | 此包当前版本号，当此包为增量包时，表示为增量后版本号 |
| isFullPackage | String | 否 |  | 是否为全量包，true则表示为全量包，false则表示为增量包 |
| firmwareUrl | String | 否 |  | 下载此包的url，get请求下载 |
| protocol | String | 否 |  | 下载包的协议，固定为http |
| protocolVersion | String | 否 |  | 协议，固定为1.1 |
| username | String | 否 |  | 下载包时需要携带的用户名 |
| password | String | 否 |  | 下载此包时，需要携带的密码 |
| cnDescription | String | 否 |  | 此包的中文说明 |
| enDescription | String | 否 |  | 包的英文说明 |
| size | String | 否 |  | 包的大小 |
| md5Code | String | 否 |  | md5值，供校验包的真伪 |
| releaseTime | String | 否 |  | 发布时间，就是管理员在后台上传包的时间 |

* #### 响应示例：

```json
{
"code": "1",
"note": "OPERATE_SUCCESS",
"data": {
"product": "OOMI_Touch_APP",
"swVersion": "V2.0.0.15",
"releaseTime": 1506329816000,
"isFullPackage": true,
"firmwareUrl": "http://test.fantem-gateway.com/firmware/OOMI_Touch_APP/1/0/V1-0-0-0/OOMI_Touch_APP-V0.0.0.0-V2.0.0.15.apk",
"cnDescription": "V2.0.0.15",
"hwVersion": "V1.0.0.0",
"protocol": "http",
"password": "test_firmware_password",
"feature": null,
"size": 31024240,
"oldSwVersion": "V0.0.0.0",
"enDescription": "V2.0.0.15",
"model": "1",
"protocolVersion": "1.1",
"id": 317,
"fullPackage": true,
"md5Code": "EDBA4ED527007FADD96606CBC17AE124",
"username": "test_firmware"
}
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 601 | 出入的product参数不对，就返回这个值 | 传过来的product参数，在服务器找不到，例如把 OOMI\_Cube\_App 写成 OOMI\_Cube\_AAA |
| 630 | 固件包已经是最新了 | 传过来的版本比服务器上要高，就会返回这个值。虽然服务器上的最新的版本比发过来的版本高，但没有对应的包可以更新，例如差分包，还是会返回这个值。 |
| 602 | 固件不存在 |  |



