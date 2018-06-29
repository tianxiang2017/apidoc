# 获取RAM的stsToken

#### 功能说明
cube获得sts账号

请求cookie中要有aat。
请求路径中要有sn
#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/ram/stsToken/{sn}|
| 请求头部 |  |
| HTTP方式 | GET |

* #### 输入参数说明

无



* #### HTTP 请求示例

* #### 返回参数

| 参数名称 | 参数类型 | 是否必选 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| securityToken| String&lt;64&gt; | 是 | | stsToken |
shi



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
| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 2000 | accessToken为空 | |
| 181 | cube为注册 |  |
| 3004 | 调用RAM接口发生异常 |  |













