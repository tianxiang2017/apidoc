# 云片发送短信回调

#### 功能说明

目前国内发送短信是使用阿里短信平台，但是阿里云短信平台不支持国外手机号。  
这里使用云片给国外手机发送短信。  
当云片发送短信后，会回调此接口通知服务器发送结果。

目前只使用阿里发送国内短信

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/sms/yunpian/status |
| 请求头部 |  |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| sms\_status | String | 否 | 短信状态字符串。字符串内容是一个数组，一个手机号对应一个元素 |

* #### HTTP 请求示例

* #### 返回参数

  无

* #### 响应示例：

  字符串  
  SUCCESS

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 3 | 参数错误 |  |



