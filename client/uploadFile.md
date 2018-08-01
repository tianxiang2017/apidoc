## 上传文件

#### 功能说明

调用此接口上传文件。文件大小限制为60M

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/file/upload |
| 请求头部 | Content-Type:multipart/form-data |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数**名称** | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| type | String\(E\) | 是 | 类型。取值：log或者db |
<<<<<<< HEAD
| guid | String&lt;32&gt; | 否 | 注册成功后获得的guid。guid和sn要传一个 |
| sn| String&lt;64&gt; | 否 | 没有guid传sn。guid和sn要传一个 |
=======
| guid | String&lt;32&gt; | 否 | cube注册成功后获得的guid。guid和sn要传一个 |
| sn| String&lt;64&gt; | 否 | cube没有guid传sn。guid和sn要传一个 |
>>>>>>> 40adc281e6922c027ef6c669a8619a9a8182730d
| accountId | Integer\(10\) | 否 | 用户的ID |
| version | String\(255\) | 否 | 所属版本 |
| remark | String\(1024\) | 否 | 描述 |
| uploadTime | Long&lt;13&gt; | 否 | 上传时间，时间戳，1970年1月1日00:00:00 GMT以来的毫秒数。没有传递此参数时，默认为系统时间，例如1510196926278。 |
| md5 | String&lt;16&gt; | 是 | 文件的MD5摘要 |
| file | File | 是 | 上传的文件 |
| mode | String&lt;E&gt; | 是 | 上传文件的方式："1":静默上传，"2":手动上传，"3":崩溃上传 |

* #### HTTP 请求示例

```
curl -X POST \
  http://openapi.fantem-gateway.com/file/upload \
  -H 'content-type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW' \
  -F type=log \
  -F 'file=@C:\Users\Administrator\Desktop\zuomian\12.txt' \
  -F guid=8C04F5F715BC4ACBAEA9AE1296429681 \
  -F accountId=919 \
  -F version=2.0.5 \
  -F 'remark=测试' \
  -F md5=938BEB88B2D4ACCE
```

* #### 返回参数

无

* #### 响应示例：

```json
{
    "code": "1",
    "note": "操作成功"
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| --- | --- | --- |
| 3 | 必填参数为空 | 必填参数为空。其中，文件也是必传的，如果上传的是本地文件，注意文件路径。 文件MD5码长度错误 |
| 2020 | guid无效 | 找不到sn对应的注册信息。或者guid无效 |
| 9002 | MD5不匹配 |  |
| 9000 | 其他上传文件失败情况 | 比如服务器硬盘空间不足，系统无写文件权限等 |



