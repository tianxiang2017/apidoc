# touch获取cube的p2pId

#### 功能说明
touch获取cube的p2pId。


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/cube/confirm|
| 请求头部 |  |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| uuid| String| 是 | 时间 |
|devToken|String |是|用户的accessToken|


* #### HTTP 请求示例
* #### 返回参数

 | 参数名称 | 参数类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| p2pUid| String&lt;64&gt; | 是 | p2pUid |



* #### 响应示例：

  ```json
{
    "code": "1",
    "note": "操作成功",
    "data": {
        "p2pUid": "TFRXEHJXDMPEEC3X111A"
    }
}
```



* #### 异常返回值
| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 2| 操作失败 | uuid或者devToken为空 |
| 3| 参数错误 | accessToken不存在 |
| 114| 用户未绑定cube |  |








