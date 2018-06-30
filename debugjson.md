# debug/json

#### 功能说明

直接返回传入的参数

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/debug/json |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| num | Integer | 否 | 一个数字 |
| name | String\(64\) | 否 | name |
| detail | Map | 否 | detail |

* #### HTTP 请求示例

  ```json
  {
    "num": 1,
    "name": "name",
    "detail": {
        "key1": "value1"
    }
  }
  ```
* #### 返回参数

无

* #### 响应示例：

  ```json
  {
    "code": "1",
    "note": "操作成功",
    "data": {
        "num": 1,
        "name": "name",
        "detail": {
            "key1": "value1"
        }
    }
  }
  ```

* #### 异常返回值

  无



