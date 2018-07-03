## 获取topic

#### 功能说明

设备获取一个topic

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/clientTopic/topic/get |
| 请求头部 | GET请求，不用设置 |
| HTTP方式 | GET |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| guid | String\(32\) | 是 | 设备的guid |

* #### HTTP 请求示例

```
curl -X GET \
  'http://openapi.fantem-gateway.com/clientTopic/topic/get?guid=myguid' \
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 示例 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| inTopic| String&lt;16&gt; | 否 |  | inTopic|
| outTopic| String | 否 |  | outTopic|
| guid | String  | 否 |  |  |
| code | Integer | 否 |  |  |
| message| String  | 否 |  |  |
| data| Map|否 |  |  |







* #### 响应示例：

```json

```

* #### 异常返回值




