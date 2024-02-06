import pandas as pd
import numpy as np

people=pd.read_csv('./인구수.csv')
people.columns=[i for i in range(1991, 2024)] 
people.index=[i for i in range(0,576,32)]

# 열로 자리잡고 있는 연도들을 행 인덱스 0~31에 세로로 집어넣기
people_list=list()
for i in range(32*18):
    people_list.append([people.iloc[int(i/32),0],people.iloc[int(i/32), i%32+1]])
people_DF=pd.DataFrame(people_list)
people_DF[2]=[i for i in range(1992, 2024)]*18
people_DF.rename(columns={0:"지역",1:"인구수",2:"년도"},inplace=True)
people_DF.replace("-",np.nan,inplace=True)
people_DF=people_DF.fillna(0)
people_DF["인구수"]=people_DF["인구수"].astype("int64")
people_DF.to_csv("인구수2.csv",index=False)


# "cwd": "${fileDirname}"