## 删除固件包

#### 功能说明

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmwares/delete |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :---  | :--- | :--- | :--- |
| id | Integer\(10\)  | 否 | 固件包ID |

* #### HTTP 请求示例

```json
{
    id: 159
}
```

* #### 返回参数

  无

* #### 响应示例：

ok

* #### 异常返回值

无

