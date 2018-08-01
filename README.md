# 文档介绍

## 数据类型和长度

格式：数据类型+长度类型描述开始+长度 +长度类型介绍。例如：String\(32\)

### 数据类型

| 数据类型 | 含义 |
| :--- | :--- |
| String | 字符串类型 |
| Integer | 整型，包括正整数和负整数，最多10位，取值范围-2147483648~2147483647。2的31次方到2的31次方-1 |
| Long | 长整型。范围必整型更大。取值范围-2的63次方到2的63次方-1 |
| File | 文件对象，上传文件时的文件内容 |
| List | 数组 |
| Array | 数组 |
| 对象 | 例如 User。表示User对象，一般下文会用这个对象的描述 |

### 长度描述

| 长度类型 | 含义 | 示例 | 示例含义 |
| :--- | :--- | :--- | :--- |
| 圆括号\(\) | 最大长度 | \(32\) | 最大32长度 |
| 尖括号&lt;&gt; | 固定长度 | &lt;32&gt; | 只能是32长度 |
| 大括号{,} | 长度在开始值和结束值之间。包括边界 | {8,16} | 长度为8到16位，包含8位和16位 |
| 方括号 | 表示数组，方括号内数字表示数组元素个数 | \[2\] | 两个元素的数组 |
| 枚举常量&lt;E&gt; | 只能取某些固定值 | String&lt;E&gt; | 只能取某些固定的字符串 |

### 示例：

String\(32\) 字符串类型，最大32位

String&lt;32&gt; 字符串类型，只能是32个长度

Long&lt;13&gt; 13位的长整数

String{8,16} 8到16位的字符串

User\[2\] 两个User对象的数据

## 接口返回
如果没有特殊说明，所有接口返回code-note-data三段式的json，接口中所列出的返回值指的是data内容。如果接口返回参数标识为“无”，表示没有data数据，此仍然是code-note-data,格式
返回参数：

| 参数  | 类型  | 是否必选  |   取值范围    | 说明  |
| -     | -     | -         |               |       |
| code  | String   | 必选 |  | 返回的业务代码，1表示成功，其他值表示失败 |
| note  | String    | 可选 |        | 返回值的描述 |
| data  | Object    | 可选 |        | 返回数据，所有接口最外层都是这三个参数。data的结构由实际接口决定|
返回示例：
```json
{
    "code":"1",
    "note":"OPERATION_SUCCESS"
    "data":{
        "devToken":"",
        "expireTime":""
    }
}
```
## 请求地址中的占位符
请求地址中的变量用一对大括号“{”“}”表示占位符，在请求时需要替换成对应值。
例如：在调用/video/applyAuth/{videoId}接口时，实际请求地址类似如下：
 http://openapi.fantem-gateway.com/video/applyAuth/kf923kld98su43klsdf234

