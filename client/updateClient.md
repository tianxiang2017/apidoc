## 修改cube的名称

#### 功能说明

修改已经完成设备注册的cube名称。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/client/name |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* ### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| --- | --- | --- | --- |
| guid | String&lt;32&gt; | 是 | 设备的guid |
| name | String\(255\) | 是 | 设备的名字 |

* #### HTTP 请求示例

```

{
	"guid":"49BBA033658C4B9FA21068FDE17E19B0",
	"name":"Cube1"
	
}
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
| 1002 | 必填参数为空 |  |



