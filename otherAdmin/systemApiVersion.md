## 查询接口版本

#### 功能说明



#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/system/api/version|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | GET |

* #### 输入参数说明

无


* #### HTTP 请求示例


```
curl -X GET \
  http://openapi.fantem-gateway.com/api/manager/version \
 
```


* #### 返回参数
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| version | String| 否 | 版本|


* #### 响应示例：



```
{
	"version": "3.0.0"
}
```



* #### 异常返回值

无







