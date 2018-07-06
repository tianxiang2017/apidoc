## 创建固件包

#### 功能说明
创建固件包。涉及文件上传，设置请求头 :
Content-Type:multipart/form-data
请求不是json格式。


#### 调用接口说明

* #### HTTP配置

| 配置项 | 取值 |
| --- | --- |
| URL | \[域名\]//firmwares/create|
| 请求头部 | Content-Type:multipart/form-data |
| HTTP方式 | POST|

* #### 输入参数说明

| 参数名称 | 参数类型 | 是否必须 | 参数描述 |
| :--- | :--- | :--- | :--- |
| productId | Integer\(10\) | 否 | 固件包所属产品ID |
| oldSwVersion| String\(255\) | 否 | 差分包的前置版本。差分包从oldSwVersion升级到swVersion版本 |
| swVersion| String\(255\) | 否 | 当前版本 |
| fullPackage| Boolean | 否 | 是否是完整包 |
| cnDescription | String\(255\) | 否 | 更新说明（中文） |
| enDescription | String\(255\) | 否 | 更新说明（英文） |
| permissionIds| Integer[] | 否 | 访问固件包需要的权限 |
| publicStatus| Boolean | 否 | 是否发布） |
| remark| String\(255\) | 否 | 备注 |


* #### HTTP 请求示例


```

	"cnDescription": "qqqqqqqqq",
	"enDescription": "qqqqqqqqqqqqqqqqqq",
	"fullPackage": true,
	"oldSwVersion": "null",
	"permissionIds": [],
	"productId": 14,
	"publicStatus": true,
	"remark": "qqqqqqqq",
	"swVersion": "V2.0.5.4"


```


```
------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="fileList"


------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="productId"

14
------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="product"

OOMI_Phone_Android
------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="model"

1
------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="hwVersion"

V1.0.0.0
------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="feature"

null
------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="oldSwVersion"

null
------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="swVersion"

V2.0.5.4
------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="versionRank"


------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="upgradeMethod"

true
------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="publicStatus"

true
------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="fullPackage"

true
------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="uploadFieldName"


------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="permissionIds"


------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="cnDescription"

qqqqqqqqq
------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="enDescription"

qqqqqqqqqqqqqqqqqq
------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="remark"

qqqqqqqq
------WebKitFormBoundaryLFLBxudKV4hV5pAI
Content-Disposition: form-data; name="file"; filename="OOMI_Phone_Android_V2.0.5.4_20171204.apk"
Content-Type: application/vnd.android.package-archive


------WebKitFormBoundaryLFLBxudKV4hV5pAI--
```






* #### 返回参数
无


* #### 响应示例：

ok

* #### 异常返回值

请选择固件包



