## 权限列表

#### 功能说明

查询指定业务系统的权限列表，businessSystemId为空时查询所有权限

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/permission/query|
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| page | Integer\(10\) | 否 |  |
| pageSize | Integer\(10\) | 否 |  |
| sortBy | String\(255\) | 否 | 按什么排序 |
| order | String&lt;E&gt; | 否 | 升序（ASC）还是降序（DESC） |
| businessSystemId | Integer\(10\)| 否 | 业务系统ID |

* #### HTTP 请求示例

  ```json
  {
    "page": 1,
    "pageSize": 10,
    "sortBy": "id",
    "order": "desc"
  }
  ```

 ```

 ```

* #### 返回参数

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| total| Long| 是 | 总数|
|data|Permission[]|否|权限列表。permission数组|

permission内容如下：


| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| id | Integer\(255\) | 是 | 权限ID|
|name |String\(255\) | 是 | 菜单名|
| code| String\(255\)| 是 | 菜单code，唯一标识|
| sortNo|Integer\(10\) | 否 | 排序编号。影响菜单先后顺序|
| parentId| Integer(10)| 否 | 父菜单|
| cnDescription|String\((255\) | 否 | 中文详情|
| enDescription| String\((255\)| 否 | 英文详情|



* #### 响应示例：

```json
[
    {
        "businessSystemId":2,
        "id":23,
        "name":"xxxx",
        "code":"XXXX_XX",
        "sortNo":10,
        "parentId":10,
        "cnDescription":"中文描述",
        "enDescription":"en desc"
    }

]
```

* #### 异常返回值

无



