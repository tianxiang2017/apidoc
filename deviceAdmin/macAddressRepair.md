## 蓝牙地址修复-修复

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/client/macAddressRepair|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| id| Integer\(10\) | 是 | 待修复的设备的id|
| bluetoothMac| String\(32\) | 是 | |


* #### HTTP 请求示例
```json
{
    "id":112
    "bluetoothMa":"00:03:7F:21:49:98"
}
```


* #### 返回参数
无


* #### 响应示例：

```json
{
    "code": "1000",
    "note": "Operate success",
}
```


* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 3| 参数为空，参数错误 | |




