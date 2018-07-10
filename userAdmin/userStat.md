## 用户统计

#### 功能说明

分页查询用户统计报表。
每天一行数据.
统计项有：
user:已注册用户数
email：已验证邮箱用户数
un-email：已发送验证邮箱，未验证邮箱用户数
phone：手机用户数
ios、Android、Touch、Cube：注册cube、安装ios、安装ios、touch的APP数量
online user：在线用户的总数，不包括没有心跳包的低版本
ios user：在线IOS用户的总数，不包括没有心跳包的低版本
android user：在线安卓用户的总数，不包括没有心跳包的低版本
touch user：在线touch用户的总数，不包括没有心跳包的低版本

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/statDay/report|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| pageNum| Integer(10) | 否 | | 第几页。默认值1|
| pageSize| String(10) | 否 | | 每页大小。默认值10|


* #### HTTP 请求示例


* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| total| Long | 是 | 总页数|
| data | Map | 否 | 统计数据|



* #### 响应示例：
```json
{
    "total":1,
    "data": {
        "account1":1,
        "account2":7
    }
}
```

* #### 异常返回值

无



