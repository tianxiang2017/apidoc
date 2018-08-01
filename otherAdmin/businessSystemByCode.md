## 指定code的系统类型

#### 功能说明

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/business-system/getByCode |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| code | String\(255\) | 是 | 系统编码。例如：MANAGER OOMI\_SYSTEM |

* #### HTTP 请求示例

```json
{
    "code":"OOMI_SYSTEM"
}
```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| id | Integer\(10\) | 否 | id |
| name | String\(255\) | 否 | 系统名称 例如：Manager System。 Oomi System |
| code | String\(255\) | 否 | 系统编码。例如：MANAGER OOMI\_SYSTEM |

* #### 响应示例：

```json
{
    "id": 2,
    "name": "Oomi System",
    "code": "OOMI_SYSTEM"
}
```

* #### 异常返回值

无

