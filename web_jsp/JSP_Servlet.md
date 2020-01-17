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

  

   (2) 이노테이션 등록 :
  
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