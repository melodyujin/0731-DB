//SUBSTR 함수를 사용하여 9월에 입사한 사원을 출력하기
select * from emp
where substr(hiredate, 4,2)='09';

//SUBSTR 함수를 사용하여 1981년도에 입사한 사원을 검색하기
select * from emp
where substr(hiredate, 1,2)='81';

//SUBSTR 함수를 사용하여 이름이 R로 끝나는 사원 검색하기
select * from emp
where substr(ename,-1,1)='R';

//SUBSTR 함수를 사용하여 두번째 글자가 "L"이 있는 사원 검색하기
select * from emp
where substr(ename,2,1)='L';

//직급에 따라 직급이 'ANALYST'인 사원은 5%, 'MANAGER'인 사원은 10%, 
/'SALESMAN'인 사원은 15%, 'CLERK'인 사원은 20% 급여를 인상하여 upsal 컬럼으로 표시하기
select empno, ename, job, sal,
    decode( job, 'ANALYST', sal*1.05,
            'MANAGER', sal*1.10,
            'SALESMAN', sal*1.15,
            'CLERK', sal*1.02,
            sal) upsal
from emp;

//입사일을 연도는 2자리(YY), 월은 숫자(MON)로 표시하고 요일은 약어(DY)로 지정하여 출력하기
select 
    to_char(hiredate, 'yy/mon/dd dy') hiredate
from emp;

//부서별로 급여가 1500 이상인 사원의 평균 급여(소수점 첫째자리까지 표현) 출력하기
select deptno, round(avg(sal),1)
from emp
group by deptno;

