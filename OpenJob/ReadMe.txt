ReadMe.txt

DB 연결 객체 만드는 법
1. ***DAO Interface를 생성한다.
2. mapper 폴더에 ***Mapper.xml을 생성해서 1에서 만든 DAO의 SQL 부분을 만든다.
3. root-context.xml에 DAO Interface 구현체를 Mapper를 통해 만들기 위해 등록을 한다. 

DB 연결 흐름
Request ->
RowMapper(Servlet) -> 
Controller -> 
Service Interface -> Service -> 
DAO Interface -> DAO -> 
Controller -> 
ViewResolver(Servlet) -> 
Response