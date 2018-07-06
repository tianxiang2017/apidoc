## 查询固件包列表

#### 功能说明

一个产品可以对应多个固件包。  
查询某个产品的固件包列表。当productId为空时，查询所有固件包

#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]/firmwares/query |
| 请求头部 | Content-Type:application/json;charset=utf-8 |
| HTTP方式 | POST |

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| pageNum | Integer\(10\) | 否 | 第几页 |
| pageSize | Integer\(10\) | 否 | 每页大小 |
| productId | Integer\(10\) | 否 | 产品id |
| sortName | String\(255\) | 否 | 按什么 排序 |
| sortOrder | String | 否 | 怎么排序，升序\(asc\)还是降序\(desc\) |

* #### HTTP 请求示例

```json
{
    "pageNum": 1,
    "pageSize": 10,
    "sortName": "id",
    "sortOrder": "desc",
    "productId": null
}
```

* #### 返回参数

  | 参数名称 | 参数类型 | 是否必须 | 描述 |
  | :--- | :--- | :--- | :--- |
  | total | Long | 是 | 总记录数 |
  | data | Firmware\[\] | 是 | 具体数据 |

Firmware内容如下：

| 参数名称 | 参数类型 | 是否必须 | 描述 |
| :--- | :--- | :--- | :--- |
| id | Integer\(10\) | 是 | 固件包ID |
| productId | Integer\(10\) | 是 | 产品ID |
| oldSwVersion | String\(255\) | 否 | 差分包的源升级前版本。差分包时会用上这个字段 |
| swVersion | String\(255\) | 否 | 版本号 |
| firmwareUrl | String\(255\) | 否 | 下载ota地址 |
| protocol | String\(255\) | 否 | '数据传输方式，默认是http |
| protocolVersion | String\(255\) | 否 | 协议版本，默认还是1.1 |
| cnDescription | String\(255\) | 否 | 更新说明（中文） |
| enDescription | String\(255\) | 否 | 更新说明（英文） |
| remark | String\(255\) | 否 |  |
| publicStatus | String\(255\) | 否 | 发布状态 |

* #### 响应示例：

{  
    "total": 91,  
    "data": \[  
        {  
            "id": 2,  
            "productId": 2,  
            "oldSwVersion": "00.00",  
            "swVersion": "00.03",  
            "firmwareUrl": "[http://ota.fantem-gateway.com/firmware/OMMICUBE/1/1-0/OMMICUBE-00.03.apk](http://ota.fantem-gateway.com/firmware/OMMICUBE/1/1-0/OMMICUBE-00.03.apk)",  
            "protocol": "http",  
            "protocolVersion": "1.1"  
            "cnDescription": null,  
            "enDescription": "Fixed some bugs.",  
            "remark": null,  
            "size": 8091130,  
            "md5Code": "5F615237BA80B5D550C8BF7E01E5CE11",  
            "publicStatus": true,  
            "updateAt": 1509047566000,  
            "createAt": 1509047566000,  
            "fullPackage": true  
        },  
        {  
            "id": 3,  
            "productId": 3,  
            "oldSwVersion": "V0.0.0.0",  
            "swVersion": "V1.0.0.15",  
            "firmwareUrl": "[http://ota.fantem-gateway.com/firmware/touch/0/1-0/touch-V1.0.0.15.apk](http://ota.fantem-gateway.com/firmware/touch/0/1-0/touch-V1.0.0.15.apk)",  
            "protocol": "http",  
            "protocolVersion": "1.1",  
            "cnDescription": null,  
            "enDescription": "Fixed some bugs.",  
            "remark": null,  
            "size": 38159852,  
            "md5Code": "350c6acf2128c72778ad92cd22acc75b",  
            "publicStatus": true,  
            "updateAt": 1509047566000,  
            "createAt": 1509047566000,  
            "fullPackage": true  
        }  
    \]  
}  
\`\`\`

* #### 异常返回值

无

