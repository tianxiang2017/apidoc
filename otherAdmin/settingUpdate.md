## 修改Setting

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/setting/{id}|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | PUT|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| id            | Integer\(10\) | 否 | id|
| code          | String\(255\) | 否 | code |
| flag          | String\(255\) | 否 | 标志|
| cnDescription | String\(255\) | 否 | 中文描述|
| enDescription | String\(255\) | 否 | 英文描述|
| createTime      | String\(255\) | 否 |创造时间 |


* #### HTTP 请求示例


* #### 返回参数
无

* #### 响应示例：

无

* #### 异常返回值

无



