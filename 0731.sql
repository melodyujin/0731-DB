//SUBSTR �Լ��� ����Ͽ� 9���� �Ի��� ����� ����ϱ�
select * from emp
where substr(hiredate, 4,2)='09';

//SUBSTR �Լ��� ����Ͽ� 1981�⵵�� �Ի��� ����� �˻��ϱ�
select * from emp
where substr(hiredate, 1,2)='81';

//SUBSTR �Լ��� ����Ͽ� �̸��� R�� ������ ��� �˻��ϱ�
select * from emp
where substr(ename,-1,1)='R';

//SUBSTR �Լ��� ����Ͽ� �ι�° ���ڰ� "L"�� �ִ� ��� �˻��ϱ�
select * from emp
where substr(ename,2,1)='L';

//���޿� ���� ������ 'ANALYST'�� ����� 5%, 'MANAGER'�� ����� 10%, 
/'SALESMAN'�� ����� 15%, 'CLERK'�� ����� 20% �޿��� �λ��Ͽ� upsal �÷����� ǥ���ϱ�
select empno, ename, job, sal,
    decode( job, 'ANALYST', sal*1.05,
            'MANAGER', sal*1.10,
            'SALESMAN', sal*1.15,
            'CLERK', sal*1.02,
            sal) upsal
from emp;

//�Ի����� ������ 2�ڸ�(YY), ���� ����(MON)�� ǥ���ϰ� ������ ���(DY)�� �����Ͽ� ����ϱ�
select 
    to_char(hiredate, 'yy/mon/dd dy') hiredate
from emp;

//�μ����� �޿��� 1500 �̻��� ����� ��� �޿�(�Ҽ��� ù°�ڸ����� ǥ��) ����ϱ�
select deptno, round(avg(sal),1)
from emp
group by deptno;

