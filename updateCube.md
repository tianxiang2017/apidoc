## 更新cube

#### 功能说明

更新cube的名称， 由于旧版本（2.0.3）cube的uuid固定的。这个接口现在只更新name

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/cube/updateInfo |
| 请求头部 | Content-Type:application/x-www-form-urlencoded;charset=utf-8 |
| HTTP方式 | POST |

* ### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| sn | 字符串\(64\) | 是 | cube的sn |
| uuid | 字符串\(64\) | 是 | 保留。cube的uuid，旧版本是固定值dev01\_ld\_1。 cube2.0.4以后是一个随机值。 |
| name | 字符串\(255\) | 是 | cube的name |

* #### HTTP 请求示例

```
curl -X POST \
  'http://openapi.fantem-gateway.com/cube/updateInfo?sn=A01011725020927&uuid=dsdfsfdsdf&p2pUid=TFRXEHJXDMPEEC3X111A&name=mycube'
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
| 3 | 必填参数为空，参数错误 | sn或者uuid为空。注意区分null还是空字符串 |
| 181 | cube未注册 |  |



