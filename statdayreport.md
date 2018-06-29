# statDayReport

#### 功能说明
直接返回传入的参数


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/statDay/report|
| 请求头部 |  Content-Type:application/json;charset=utf-8|
| HTTP方式 | POST |

* #### 输入参数说明

无


* #### HTTP 请求示例
```json
{
	"num": 1,
	"name": "name",
	"detail": {
		"key1": "value1"
	}
}
```

* #### 返回参数

无


* #### 响应示例：

  ```json
[
    {
        "id": 13,
        "code": "report01",
        "value": 666,
        "day": "20170503",
        "type": "report",
        "remark": "总注册用户数"
    },
    {
        "id": 14,
        "code": "report02",
        "value": 547,
        "day": "20170503",
        "type": "report",
        "remark": "已验证邮箱用户数"
    },
    {
        "id": 15,
        "code": "report03",
        "value": 118,
        "day": "20170503",
        "type": "report",
        "remark": "未验证邮箱用户数"
    }
]
```



* #### 异常返回值
无








