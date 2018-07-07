## 查询推送Task

#### 功能说明

查询推送Task


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/push/task/get|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| id| Integer\(10\)| 是 | Task的ID|


* #### HTTP 请求示例


```json
{
	"id":1
}
```


* #### 返回参数
无

* #### 响应示例：


```json
{
    "code": "1",
    "note": "Operate success",
    "data": null
}
```



* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 3 | 参数为空，参数错误 | |




