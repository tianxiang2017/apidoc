# 系统版本

#### 功能说明
查询系统版本。2.0可以获取到正确的版本。3.0使用spring boot后，不能获取到正确的版本了
#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/system/version |
| 请求头部 |  |
| HTTP方式 | GET |

* #### 输入参数说明

无

* #### HTTP 请求示例

```
curl -X GET \
  http://openapi..fantem-gateway.com/system/version 
```

* #### 返回参数

  字符串，不是json

* #### 响应示例：

  2.0.8.030517

* #### 异常返回值
无



