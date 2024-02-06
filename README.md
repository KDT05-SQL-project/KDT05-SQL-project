# *SQL_Project*
경북대학교 KDT(Korea Digital Training) 빅데이터 전문가 양성과정 5기 : SQL 프로젝트 2팀입니다


박희진 : [Github](https://github.com/ParkHeeJin00)
고우석 : [Github](https://github.com/Gowooseo)
명노아 : [Github](https://github.com/noah2397)



![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-%23ffffff.svg?style=for-the-badge&logo=Matplotlib&logoColor=black)
![Anaconda](https://img.shields.io/badge/Anaconda-%2344A833.svg?style=for-the-badge&logo=anaconda&logoColor=white)
![PyCharm](https://img.shields.io/badge/pycharm-143?style=for-the-badge&logo=pycharm&logoColor=black&color=black&labelColor=green)   
![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white)
<hr/>


### KDT(Korea Digital Training)-5기, SQL Project(Mysql, Dbeaver)    
<hr/> 



### 인구 감소로 인한 사회 영향 관련 데이터베이스 설계 및 구현    
* 목차    
1. 역할분담
2. 배경
3. 엔티티 관계도
4. DB설명
5. 지방 소멸화 : 인력/일자리
6. 지방 소멸화 : 부동산/미분양
7. 지방 소멸화 : 교육/사교육
8. 최종 결론


###### 역할 분담

|역할 | 참여인원|
| ---- | -----|
|주제선정 | 고우석, 명노아, 박희진 |    
|발표 | 고우석, 명노아, 박희진|   
|git관리 | 명노아|   
|README 작성 | 박희진|    
|PPT 제작 | 고우석|   
|소주제 분석, 시각화 | 고우석, 명노아, 박희진|     





##### 뉴스 출처   
<hr/>

  [동양칼럼/ 인구감소 지역의 현안 과제](http://www.dynews.co.kr/news/articleView.html?idxno=738702)         
  [경기도 인구 1400만 돌파](https://www.chosun.com/national/national_general/2023/05/21/2U65J2LQBVHFBIIARIN6CSE2M4/#:~:text=%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EC%9D%B8%EA%B5%AC%EB%8A%94%201000%EB%A7%8C%EB%AA%85%EC%9D%84%20%EB%84%98%EC%9D%80%202002%EB%85%84%2012%EC%9B%94%20%EB%A7%90%EB%B6%80%ED%84%B0%20%EC%A7%80%EB%82%9C,%EB%8F%8C%ED%8C%8C%ED%95%9C%20%EC%A7%80%206%EB%85%84%208%EA%B0%9C%EC%9B%94%20%EB%A7%8C%EC%97%90%20100%EB%A7%8C%EB%AA%85%EC%9D%B4%20%EC%A6%9D%EA%B0%80%ED%95%9C%20%EA%B2%83%EC%9D%B4%EB%8B%A4.)           
  [서울 인구 10년간 86만명 순유출....](https://www.yna.co.kr/view/AKR20240204032200002)         
  [ 지난해 '인구 늘어난' 충남도…왜 '질 나쁜' 인구 증가일까?](https://www.news1.kr/articles/?4967438#:~:text=%EC%A7%80%EB%82%9C%ED%95%B4%20%EB%A7%90%20%EC%B6%A9%EB%82%A8%EB%8F%84%20%EC%9D%B8%EA%B5%AC%EC%88%98%EB%8A%94%20212%EB%A7%8C3037%EB%AA%85%EC%9C%BC%EB%A1%9C%20%EC%A0%84%EB%85%84%20211%EB%A7%8C%209257%EB%AA%85%EB%B3%B4%EB%8B%A4,%EB%B0%98%EB%A9%B4%2C%20%EC%A4%91%EC%86%8C%EB%8F%84%EC%8B%9C%EC%9D%98%20%EC%9D%B8%EA%B5%AC%EB%8A%94%20%EA%B8%89%EA%B2%A9%ED%9E%88%20%EA%B0%90%EC%86%8C%ED%95%98%EB%A9%B0%20%EC%9D%B8%EA%B5%AC%20%EC%96%91%EA%B7%B9%ED%99%94%EA%B0%80%20%EC%8B%AC%ED%99%94%EB%90%90%EB%8B%A4.)      
  [지난10년 새 세종시 인구 3.9배 증가](https://www.yna.co.kr/view/AKR20230402014600063)      
  [제주도 인구 처음으로 70만명 넘었다](https://www.hani.co.kr/arti/area/jeju/1058392.html)       
  [교육산업의 변화와 미래 교육 기술](https://blog.naver.com/sakumira/223301391484)      
  [대전 대학가 신입생 충원 사활](https://www.daejonilbo.com/news/articleView.html?idxno=2103411)      
  [1도1국립대, 정부의 통큰 지원 필요](https://news.unn.net/news/articleView.html?idxno=519379)      
  [늘봄학교, 사교육비 월 40만원 절감 효과](https://www.yna.co.kr/view/AKR20240205104100530?input=1195m)      
  [지방시대 종합계획, 교육발전·도심융합특구 도입](https://n.news.naver.com/mnews/article/030/0003151743)      
  [교직원 1명당 학생 3명 이하 학교 2078곳](https://www.kmib.co.kr/article/view.asp?arcid=0924325527)      
  [합계출산율은 역대 최저 & 평균 가구원 2.3명](https://blog.naver.com/wndlwndl83/223053391972)      
  [평균 가구원 2.3명…합계출산율은 역대 최저](https://news.kbs.co.kr/news/pc/view/view.do?ncd=7633517#:~:text=%ED%86%B5%EA%B3%84%EC%B2%AD%EC%9D%B4%20%EC%98%A4%EB%8A%98%20%2823%EC%9D%BC%29%20%EB%B0%9C%ED%91%9C%ED%95%9C%20%272022%EB%85%84%20%ED%95%9C%EA%B5%AD%EC%9D%98%20%EC%82%AC%ED%9A%8C%EC%A7%80%ED%91%9C%27%EB%A5%BC%20%EB%B3%B4%EB%A9%B4%2C,%EA%B0%80%EA%B5%AC%EC%9D%98%20%EB%B9%84%EC%A4%91%EC%9D%80%20%EC%BB%A4%EC%A7%80%EA%B3%A0%2C%203%EC%9D%B8%20%EC%9D%B4%EC%83%81%20%EA%B0%80%EA%B5%AC%EC%9D%98%20%EB%B9%84%EC%A4%91%EC%9D%80%20%EC%A4%84%EC%97%88%EC%8A%B5%EB%8B%88%EB%8B%A4.)      
  [사교육비 지출 갈수록 양극화](https://www.hidomin.com/news/articleView.html?idxno=509164)      
  [저출생… 사회 전 부문에 파급](https://www.segye.com/newsView/20240129518021?OutUrl=naver)      
  [사교육비 33개월째 증가세](https://www.chosun.com/economy/economy_general/2023/11/27/DZNGVVFTTRE3VA7W4AU7ZO6Q3E/?utm_source=naver&utm_medium=referral&utm_campaign=naver-news)      
    [지방소멸위험지수](https://blog.naver.com/jeyjey37/223224821346)      
<hr/>


##### 데이터 출처     
<hr/>

  부동산통계정보시스템-통계자료받기 (reb.or.kr)      
  미분양현황_종합 (kosis.kr)      
  KOSIS -> 사교육 -> 학교급 및 특성별 사교육 참여율,  학교급별 사교육 참여율      
  [학교급 및 특성별 사교육 참여율](https://kosis.kr/statHtml/statHtml.do?orgId=101&tblId=DT_1PE102&vw_cd=MT_ZTITLE&list_id=H1_10_004_001&seqNo=&lang_mode=ko&language=kor&obj_var_id=&itm_id=&conn_path=MT_ZTITLE)      
  [연령별 인구현황](https://jumin.mois.go.kr/ageStatMonth.do)      
  [도시지역 인구현황](https://kosis.kr/statHtml/statHtml.do?orgId=460&tblId=TX_315_2009_H1001&vw_cd=MT_ZTITLE&list_id=315_31502_008&seqNo=&lang_mode=ko&language=kor&obj_var_id=&itm_id=&conn_path=MT_ZTITLE)      
  [행정구역(시도)/종사상지위별 취업자](https://kosis.kr/statHtml/statHtml.do?orgId=101&tblId=DT_1DA7035S&vw_cd=MT_ZTITLE&list_id=B17&seqNo=&lang_mode=ko&language=kor&obj_var_id=&itm_id=&conn_path=MT_ZTITLE)      

<hr/>

