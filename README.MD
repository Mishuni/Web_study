# Web

Client side script : `html`, `css`, `js` -> 해석을 browser가 함

Server side script : `jsp`, `php`  ->  해석 자체를 다른 server이 함

> jsp 경우는 Tomcat (무료)
>
> asp 경우는 IIS (Internet Information Server)
>
> php 경우는 apache  (php는 리눅스 계열에서 많이 씀)

server engine이 요청이 들어오면, 확장자에 따라서 server에서 해석을 끝내고 순수 HTML  파일로 보냄 (내용만 남겨진 html)

> <%now%> 	 --> 	2020/01/06

---

## Client Side Script

* 문서구조 : html
* 디자인 : css
* 기술, 동작 : JavaScript

web browser 에서 동작하는 web page는 tag를 이용하여 만든다.

### 0. 환경 설정

eclipse 

프로젝트 네임 > 우클릭 > java EE Tools > generate Deployment Descriptor stub > web.xml 코드 생성완료

[Apache](https://www.apache.org/) > [Tomcat](http://tomcat.apache.org/) > Tomcat 8 (현재JDK 1.8버전과 잘 맞는) 클릭 > 32-bit Windows zip 다운 > 압축 풀기

db server -> oracle

web server -> tomcat

C:\APP\apache-tomcat-8.5.50\webapps\docs\index.html : document 사이트

C:\APP\apache-tomcat-8.5.50\bin\startup.bat 더블클릭 > 서버 실행

실행 중에 http://localhost:8080/ 사이트를 들어가면 됨

(oracle 과 tomcat 둘다 8080 포트 써서 )

oracle 서버 포트 바꿔도 되고, tomcat 의 port 를 바꿔도 된다.

* #### Oracle 서버 포드 번호 바꾸기

1. C:\APP\apache-tomcat-8.5.50\conf\server.xml  >  eidtPlus로 열기 > port = "8080" 확인

2. C:\APP\apache-tomcat-8.5.50 위치 복사 > 환경 변수 > 시스템 변수 > 새로 만들기

   변수 이름 : TOMCAT_HOME 

   변수 값 :     C:\APP\apache-tomcat-8.5.50 로 변수 생성

3. 시스템 변수 > path > 새로 만들기 > %TOMCAT_HOME%\bin 입력

4. 오라클 port 와 Tomcat port 충돌을 막기 위해, Tomcat Port의 우선순위를 높이기
   oracle port 번호 확인 및 변경

   ```sql develpoper: admin
   select dbms_xdb.gethttpport() from dual;
   exec dbms_xdb.sethttpport(9090);
   ```

   위 명령을 sql developer에서 admin 계정에서 실행하면, oracle 포트 번호가 8080에서 9090으로 변경되는 것을 볼 수 있다.

   후에, startup.bat을 실행시키고(서버 실행) localhost:8080 사이트를 들어가면 index파일이 나타난다.

### 1. eclipse server 연동

Servers > new server > Tomcat v8.5 Server 선택 > Next

directory Browse... > 저장해 놓은 apache-tomcat-8.5.50 폴더 선택 > Finish > Server 등록 완료

preferences > ceneral > content types > Text >  java properties file 

* java Properties File

* Java Source File

* JavaScript Source File

* CSS

* JSP

* HTML

  -> 위 목록들 누르고 Default encoding 에 UTF-8 입력하고 Update 누르기

JSP 파일 만들었을 때 error 나는 거 > jsp lib가 없어서 나는 오류

* #### 해결 법

1. WEB-INF > lib 에 넣으면 되는데 , 이는 매번 해줘야 하니까 한번에 할 수 있는 방법으로 해결하기

2. Tomcat 에 있는 .jar 파일

3. C:\APP\apache-tomcat-8.5.50\lib

   el-api.jar

   jsp-api.jar

   servlet-api.jar 파일들 복사

4. C:\Program Files\Java\jre1.8.0_231\lib\ext 에 가서 붙여 넣기

5. 이제 eclipse에서 jsp가 잘 실행되는 것을 볼 수 있음

   -> 실행할 때, Tomcat 서버 미리 열어둔 거 없는지 확인

eclipse > window > web browser > Chrome 선택 하면, run 했을 때 창이 chrome으로 나타남

JSP : server에서 해석 되어서 나가야 하는 것 

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Server Test tranform</h1>
<% Date today = new Date(); %>
<%= today %>
</body>
</html>
```

위 파일을 실행하고, 페이지 소스 보기를 클릭하면

```html
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Server Test tranform</h1>

Mon Jan 06 16:54:55 KST 2020
</body>
</html>
```

이렇게 나온다, 서버에서 미리 해석을 한 후의 내용만 전달 된 것을 볼 수 있다.

* html 기본 템플릿 설정하기

  windows > preference > web > html > templates > New 클릭

  템플릿 입력 후 new HTML 만 설정하고 확인

  후에 html 파일 만들 때, file name 입력 후 next 누르고 새로 만든 템플릿 선택 후 finish 클릭

Tomcat을 실행하면 

`C:\APP\apache-tomcat-8.5.50\work\Catalina` 볼 수 있음eclipse에서  Servers창에 해당 Tomcat 서버 우클릭하고, `Clean Tomcat Work directory` 누르고, `clean` 누르면, work 폴더가 초기화 됨

크롬 > 설정 > 고급 > 인터넷 사용 기록 삭제

* 웹 에서 중첩되는 margin은 제일 큰 margin으로 하나만 적용된다.
* `<nav>` 태그는 경로를 나타냄  

화면 모바일, 웹 맞추기  적용한 템플릿

```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<link rel="stylesheet" href="./style.css" />
	<title> </title>
</head>
<body>

</body>
</html>
```

자바프로젝트 > 오른쪽 마우스 클릭 > java EE tools > generate Deployment Descriptor Stub 선택 > WEB-INF 폴더에 web.xml 파일 생성



Server에 올라간 파일들

webcontents : C:\Users\student\Web_study\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps

java class : C:\Users\student\Web_study\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\web_jstl_el\org\apache\jsp\el

###  Spring

[Spring home](https://spring.io/)

[Download](https://spring.io/tools) > Spring Tools 4 for Eclipse

----

#### 알아두면 유용한 사이트

[W3Schools](https://www.w3schools.com/)

[D2Coding폰트]([https://github.com/naver/d2codingfont#%EB%B0%98%EB%93%AF%ED%95%9C](https://github.com/naver/d2codingfont#반듯한))

