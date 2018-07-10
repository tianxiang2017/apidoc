## 角色列表

#### 功能说明

角色列表

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/role/query |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| page | Integer\(10\) | 否 |  |
| pageSize | Integer\(10\) | 否 |  |
| sortBy | Integer\(10\) | 否 | 按什么排序 |
| order | String&lt;E&gt; | 否 | 升序（ASC）还是降序（DESC） |

* #### HTTP 请求示例

  ```json
  {
    "page": 1,
    "pageSize": 10,
    "sortBy": "id",
    "order": "desc"
  }
 
 ```
 
* #### 返回参数

 返回一个元素为Role的数组，Role内容如下：
 
| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
|id|Integer\(10\) | 否 | 角色ID|
|name |String\(255\) | 否 | 角色名|
| cnDescription|String\(\) | 否 | 中文描述|
| enDescription| String\(\)| 否 | 英文描述|
| reserve| Boolean | 否 | 保留参数 |
| updateAt| Long | 否 | 修改时间|
| createAt| Long | 否 | 创建时间|


* #### 响应示例：

```json
{
	"code": "1000",
	"note": "Operate success",
	"data": {
		"total": 12,
		"data": [{
			"id": 1,
			"name": "Anonymous",
			"cnDescription": "Anonymous",
			"enDescription": "Anonymous",
			"reserve": true,
			"updateAt": 1516393239000,
			"createAt": 1516388485000
		}, {
			"id": 2,
			"name": "Alpha",
			"cnDescription": "cn",
			"enDescription": "cn",
			"reserve": false,
			"updateAt": 1514829566000,
			"createAt": 1509047618000
		}, {
			"id": 3,
			"name": "Beta",
			"cnDescription": null,
			"enDescription": null,
			"reserve": false,
			"updateAt": 1509047618000,
			"createAt": 1509047618000
		}]
	}
}
```

* #### 异常返回值

无

