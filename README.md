### springboot 集成 cas

####生成证书 
#####输入的姓名需要和 服务器地址一致，比如 demo.eli.com 其他的选项随便填写
~~~
keytool -genkey -keyalg RSA -alias thekeystore -keystore "D:\hello world\springBoot-cas\cas-service\src\main\resources\thekeystore" -storepass changeit -validity 360 -keysize 2048
~~~
#### 导出证书

~~~
keytool -export -alias thekeystore -file "D:\hello world\springBoot-cas\cas-service\src\main\resources\thekeystore.crt" -keystore "D:\hello world\springBoot-cas\cas-service\src\main\resources\thekeystore"
~~~

#### 客户端导入证书 需要以管理员身份运行cmd,默认密码changeit
~~~
keytool -import -alias thekeystore -storepass changeit -file "D:\hello world\springBoot-cas\cas-service\src\main\resources\thekeystore.crt" -keystore "%JAVA_HOME%\jre\lib\security\cacerts"
~~~

