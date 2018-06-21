# 获取产品的所有固件包

#### 功能说明

现在已经修改，直接返回成功。

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmwares/all/product/{productId} |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

无

* #### HTTP 请求示例

```json

```

* #### 返回参数
无

* #### 响应示例：

```json
{
"code": "1",
"note": "OPERATE_SUCCESS",
"data": null
}
```

* #### 异常返回值

| 错误码 | 提示信息 | 备注 |
| :--- | :--- | :--- |
| 601 | 出入的product参数不对，就返回这个值 | 传过来的product参数，在服务器找不到，例如把 OOMI\_Cube\_App 写成 OOMI\_Cube\_AAA |
| 630 | 固件包已经是最新了 | 传过来的版本比服务器上要高，就会返回这个值。虽然服务器上的最新的版本比发过来的版本高，但没有对应的包可以更新，例如差分包，还是会返回这个值。 |
| 602 | 固件不存在 |  |



