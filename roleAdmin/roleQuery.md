## 查询全部角色

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/role/all |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明
无


* #### HTTP 请求示例
无

* #### 返回参数
返回一个元素为Role的数组，Role内容如下：
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
|id|Integer\(10\) | 否 | 角色ID|
|name |String\(255\) | 否 | 角色名|
| cnDescription|String\(\) | 否 | 中文描述|
| enDescription| String\(\)| 否 | 英文描述|



* #### 响应示例：
[
    {
        "id":1,
        "name":"xxx",
        "cnDescription":"中文描述",
        "enDescription":" en desc"
    },
    {
        "id":2,
        "name":"xxxbbb",
        "cnDescription":"中文描述2",
        "enDescription":" esdfn descdfsdfsdf"
    },

]


* #### 异常返回值

无



