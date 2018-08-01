# 推送信息注册（新）

#### 功能说明

此接口主要APP、Touch向服务器注册百度推送相关的信息，如channelId等。

由于原有的推送信息注册接口传入的参数是UUID，但这个字段存在对于客户端来说不唯一，所以新增了这个接口。

另外需要区分是国内APP还是国外APP

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/push/register\_new |
| 请求头部 | Content-Type:application/x-www-form-urlencoded |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| guid | String\(32\) | 是 | 设备的唯一id。设备注册后获得 |
| channelId | String\(100\) | 是 | 设备的channelId，此id应是消息推送商分配给设备的唯一id |
| systemType | String&lt;E&gt; | 否 | 保留参数。设备的系统类型，  touch或者android或者ios。根据guid可以查询到系统类型 |
| systemVersion | String\(255\) | 否 | 保留参数。设备当前的系统版本.保留 |
| productModel | String\(255\) | 否 | 保留参数。产品类型，此参数需要根据规定的方式赋值.保留 |
| packageName | String&lt;E&gt; | 否 | 用包名指定APP的类型，参考 PackageName 表。默认值default |

Package Name 说明

| 值 | 说明 |
| :--- | --- |
| Oomi\_Touch | 国外版 Touch APP |
| Oomi\_Android | 国外版 Android APP |
| Oomi\_IOS | 国外版 IOS APP |
| Oomi\_Pro\_Android | 国内版 Android APP |
| Oomi\_Pro\_IOS | 国内版 IOS APP |

* #### HTTP 请求示例

  curl -X POST \  
  [http://openapi.fantem-gateway.com/push/register](http://openapi.fantem-gateway.com/push/register) \  
  -H 'Content-Type: application/x-www-form-urlencoded' \  
  -d 'productModel=touch&systemType=touch&uuid=5750936E7DC203D1&channelId=3479075079488766101'  
  \`\`\`

* #### 返回参数

  无

* #### 响应示例：

```json
{
    "code":"1",
    "note":"OPERATION_SUCCESS"
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 3 | 参数错误 |  |
| 160 | 设备未注册|  |



