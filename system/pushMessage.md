# 推送

#### 功能说明
消息推送接口

######

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/push/client/message|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
|sender|String|是  | 发送端平台名：touch/cube/ios_app等等 |
|senderUuid|String|是  | 设备uuid     |
|receiverBy|String|是  | 根据什么方式，account_id:根据用户ID，device_uuid:根据设备uuid，platform:根据platform|
|filter|String|否|过滤方式，会在另外一个表详细说明，暂不填|
|pushType|String|是|具体参考表：2.1|
|subPushType|String|是|具体参考表：2.2|
|title|String|是|推送消息的Title|
|message|String|是|具体的消息内容|
|sendTime|String|是|推送时间类型：马上推送（now），定时推送（timing），延时推送（delay），循环推送（loop），默认是now|
|time|String|是|发送时间，单位为秒（s），unix时间戳，如果是now，填Cube当前时间戳，其他后面再补充。|
|additionalParam|String|否|附加参数, Map<String, Object>类型|
|receiverPlatform|String|否|接收客户端平台类型。1：touch；2：Android；3：ios。多个平台用逗号链接。例如 1,2 默认全部推送。|


##### 2.4.1 详细说明
##### pushType 的取值类型
| key | value | Touch | Type |
| ------| ------ | ------ | ------ |
| Notifications | 0 | 0 | String |
| OTA | 1 | 1 | String |
| Security  | 2 | 2 | String |
| Automations | 3| 3 | String |
| Devices | 4 | 4 | String |
表2.1

##### subPushType 的取值类型
| category | key | value | Type |
| ------| ------| ------ | ------ |
| Notifications | Notifications | 0x000001 | String |
| ------| | | |
| systemSecurity  | System set to Arm Stay  | 0x020001| String |
| systemSecurity  | System set to Arm Away  | 0x020002 | String |
| systemSecurity  | Disarming system  | 0x020003 | String |
| systemSecurity  | Alarm Triggering  | 0x020004 | String |
| ------| | | |
| Automations | Automation starts  | 0x030001 | String |
| ------| | | |
| Devices | Doors opened/closed | 0x040001 | String |
| Devices | Motion sensors detecting motion | 0x040002 | String |
| Devices | Devices added to system | 0x040003 | String |
| Devices | Dead battery | 0x040004 | String |
表2.2
##### additional的值是一个map，key表示参数名，value表示参数值，支持以下key：
|key|value类型|描述|
|-|-|-|
|alterType|String|显示类型，是由AlertType构成的字符串，多个值用半角逗号分割，例如"1"，再如"1,2"。一个AlertType的值是一个整数，AlertType的值为1表示pop-up，2表示notification|



* #### HTTP 请求示例
curl -X POST \
  http://openapi.fantem-gateway.com/push/register \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'productModel=touch&systemType=touch&uuid=5750936E7DC203D1&channelId=3479075079488766101'
```

* #### 返回参数
无

* #### 响应示例：

```json
{
    "code":"1",
    "note":"OPERATION_SUCCESS"
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
|  3| 参数错误 | |



