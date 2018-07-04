# 获取产品的所有固件包

#### 功能说明
APP或者Cube升级成功后，回调结果。
现在已经修改，直接返回成功。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmwares/dwlStatus |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

无

* #### HTTP 请求示例

  ```json
  {
  }
  ```

* #### 返回参数

无

* #### 响应示例：

  ```json
  {
      "code": "1",
      "note": "OPERATE_SUCCESS",

  }
  ```

* #### 异常返回值

  无



