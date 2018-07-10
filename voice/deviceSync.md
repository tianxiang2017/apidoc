## 设备同步

#### 功能说明

请求同步数据

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/device/sync |
| 请求头部 |  |
| HTTP方式 | GET|

* ### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| accessToken| String\(100\)| 是 | access token|





* #### HTTP 请求示例



* #### 返回参数

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| code| String| 是 | | |
| message| String | 否 |  | |
| data| Object| 否 |  |  |

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| deviceUid| String| 是 | | |
| manufacturer| String | 否 |  |固定值OOMI |
| model| Object| 否 |  |  |
| name| String| 是 | | |
| type| String | 否 |  | |
| supportActions| Object| 否 |  |  |
| online| Object| 否 |  |固定值true  |




* #### 响应示例：



* #### 异常返回值
无


