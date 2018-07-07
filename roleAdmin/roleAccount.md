## 查询用户的角色

#### 功能说明

查询用户的角色

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/role/account|
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
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
|id|Integer\(10\) | 否 | 角色ID|
|name |String\(255\) | 否 | 角色名|
| cnDescription|String\(\) | 否 | 中文描述|
| enDescription| String\(\)| 否 | 英文描述|
| reserve| Boolean | 否 | 保留参数 |
| updateAt| Long | 否 | 修改时间|
| createAt| Long | 否 | 创建时间|


* #### 响应示例：

```json
{
    "code": "1000",
    "note": "Operate success",
    "data": {
        "total": 1,
        "data": [
            {
                "id": 11,
                "name": "OrdinaryRole ",
                "cnDescription": "Ordinary role",
                "enDescription": "Ordinary role",
                "reserve": true,
                "updateAt": 1516389092000,
                "createAt": 1516389092000
            }
        ]
    }
}
```

* #### 异常返回值

|错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 3| 参数为空，参数错误 | auid为空等|



