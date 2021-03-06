## 1. jsp : HTML + Java

## 2. Servlet : Java + html

  ### 1) class 로 만들기 : 

 Superclass > Browse > HttpServlet> javax.servlet.http.HttpServlet 선택

   (C:\Program Files\Java\jre1.8.0_231\lib\ext 폴더에 servlet-api.jar 파일이 존재해야 한다.)

###  2) servlet 으로 만들기 : 

​	eclipse 에서 servlet file을 만들 수 있다.

----

**servlet은 등록이 필요 [2가지 방법 존재]**

   (1) 설정파일에 등록 :  

- WEB-INF 파일에 web.xml 파일 생성

  ```xml
  <servlet>
  		<servlet-name></servlet-name>
  		<servlet-class></servlet-class>
  	</servlet>
  	<servlet-mapping>
  		<servlet-name></servlet-name>
  		<url-pattern></url-pattern>
  	</servlet-mapping>
  ```

  -> servlet-mapping 의 servlet-name에 해당하는 것을 servlet 태그 구역에서 찾아 servlet-class Tag안에 있는 위치 정보를 따와서 url-pattern을 이용해 웹 상에 등록해준다.

  등록하고자 하는 파일 이름이 : ServletData.java 인 경우 

  ```xml
  <?xml version="1.0" encoding="UTF-8"?>
  <web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  	xmlns="http://xmlns.jcp.org/xml/ns/javaee"
  	xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd"
  	version="3.1">
  	<display-name>web_jsp</display-name>
  	
  	<servlet>
  		<servlet-name>ServletDate</servlet-name>
  		<servlet-class>com.sds.date.ServletDate</servlet-class>
  	</servlet>
  	
  	<servlet-mapping>
  		<servlet-name>ServeltDate</servlet-name>
  		<url-pattern>/</url-pattern>
  	</servlet-mapping>
  	
  	<welcome-file-list>
  		<welcome-file>index.html</welcome-file>
  		<welcome-file>index.htm</welcome-file>
  		<welcome-file>index.jsp</welcome-file>
  		<welcome-file>default.html</welcome-file>
  		<welcome-file>default.htm</welcome-file>
  		<welcome-file>default.jsp</welcome-file>
  	</welcome-file-list>
  </web-app>
  ```

  

   (2) 어노테이션 등록 :
  
  * class 이름 위에 annotation 등록
  
    (1)번 보다 훨신 간편!!
  
  > @WebServlet("/serverDate")

servlet 내부 객체 : vrequest, response, out, pageContext, session, application, config, page, exception



 **moder1 방식 :**

- HTML 파일에 java 코드(<%)가 섞여 있는 방식

**model2 방식(MVC 형태) :**

- 이런 java코드는 selvlet으로 보내 놓는 방식
- java 코드는 매번 compile 되어야 해서 불편하니까 servlet으로 넘겨 놓는 것이 좋다.
- model2 (= MVC)

## 3. Jstl : 

- Java, jsp, servlet : tag, sql 문은 문자열 취급

https://mvnrepository.com/artifact/javax.servlet/jstl/1.2

https://mvnrepository.com/artifact/taglibs/standard/1.1.2

-> 두 링크에서 jar 파일 다운 받고

-> eclipse에서 WebContent>WEB-INF>lib 폴더에 두 jar 파일 넣기

### 4. DBCP & POOL & JNDI 커넥션 풀

> JDBC 를 효율적으로 사용하는 법

1) http://commons.apache.org/   에서 다운 받기

http://commons.apache.org/proper/commons-dbcp/

-> Downloads -> [commons-dbcp2-2.7.0-bin.zip](http://apache.tt.co.kr//commons/dbcp/binaries/commons-dbcp2-2.7.0-bin.zip) 

http://commons.apache.org/proper/commons-pool/

->Downloads -> [commons-pool2-2.8.0-bin.zip](http://mirror.apache-kr.org//commons/pool/binaries/commons-pool2-2.8.0-bin.zip)

2) Tomcat server 에서 제공하는 것 쓰기

C:\APP\apache-tomcat-8.5.50\lib > tomcat-dbcp.jar 가져오기



규칙: https://tomcat.apache.org/tomcat-8.5-doc/jndi-resources-howto.html#JDBC_Data_Sources

1) web.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://xmlns.jcp.org/xml/ns/javaee" xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd" version="3.1">
  <display-name>web06_jstl_el</display-name>
  
  <!-- jdbc:dbcpTestDB  DBCP setting -->
  <resource-ref>
  		<description>jdbc:dbcpTestDB  DBCP setting</description>
  		<res-ref-name>jdbc:dbcpTestDB</res-ref-name>
  		<res-type>javax.sql.DataSource</res-type>
  		<res-auth>Container</res-auth>
  </resource-ref>
  
  
  <welcome-file-list>
    <welcome-file>index.html</welcome-file>
    <welcome-file>index.htm</welcome-file>
    <welcome-file>index.jsp</welcome-file>
    <welcome-file>default.html</welcome-file>
    <welcome-file>default.htm</welcome-file>
    <welcome-file>default.jsp</welcome-file>
  </welcome-file-list>
</web-app>
```



2)context.xml 

원래는 Servers 폴더 안에 있다.

-> 여기를 손 대면 모든 프로젝트가 영향을 받으니까, 일단 각 프로젝트 META_INF 폴더 안에  만들어서 사용 

META_INF 폴더 > XML 파일 > context.xml 파일 생성

```xml
<?xml version="1.0" encoding="UTF-8"?>

<Context reloadable = "true">

	<WatchedResource>WEB-INF/web.xml</WatchedResource>
	<Resource
		name = "jdbc:dbcpTestDB"
		auth="Container"
		type="javax.sql.DataSource"
		username="kingsmile"
		password="oracle"
		driverClassName="oracle.jdbc.OracleDriver"
		url = "jdbc:oracle:thin:@localhost:1521:xe"

		maxActive ="20"
		maxIdle = "10"
		maxWait = "-1"
		
	       />
	       
	 <!-- maxActive : DB 연결 객체 최대 갯수 (default : 8) -->

</Context>
```

3) source

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="javax.sql.DataSource, javax.naming.*, java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dbcpConnection.jsp</title>
</head>
<body>
	<%
		try {
			Context ctx = new InitialContext();
			Context envCtx = (Context) ctx.lookup("java:comp/env");
			DataSource ds = (DataSource) envCtx.lookup("jdbc:dbcpTestDB");
			Connection conn = ds.getConnection();
			out.println("DBCP Connection success.... <br><br>");
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>
```

