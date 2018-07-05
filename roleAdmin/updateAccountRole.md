## 更新用户的角色

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/role/updateRelationshipToAccount|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| auid | String\(32\) | 是 | |


* #### HTTP 请求示例

```json
{
	"auid":"ffbb7379c5a94ad3a02759dd6abf5186"
}
```


* #### 返回参数
true 或者false

* #### 响应示例：

```json
{
    "code": "1000",
    "note": "Operate success",
    "data": true
}
```

* #### 异常返回值

无



