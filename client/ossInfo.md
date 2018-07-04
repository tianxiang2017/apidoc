# 获取OSS基本信息

#### 功能说明
获取OSS基本信息。这个接口开放出去了，但是没地方调用。


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/oss/ossBaseInfo|
| 请求头部 |  |
| HTTP方式 | GET |

* #### 输入参数说明

无


* #### HTTP 请求示例

* #### 返回参数

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| endpoint | String&lt;32&gt; | 是 | | OSS的一个endpoint |
| bucketName | String\(64\) | | |桶名称 |
| prefix | String&lt;E&gt; | 是 | v2 | 存放位置前缀 |


* #### 响应示例：

  ```json
{
    "code": "1",
    "note": "操作成功",
    "data": {
        "endpoint": "http://oss-us-west-1.aliyuncs.com",
        "bucketName": "fantem",
        "prefix": "cube/backup"
    }
}
```



* #### 异常返回值
无








