select sum(G.SCORE) SCORE, E.EMP_NO, E.EMP_NAME, E.POSITION, E.EMAIL
from HR_EMPLOYEES E
    join HR_GRADE G
        on E.EMP_NO = G.EMP_NO
group by E.EMP_NO
order by sum(G.SCORE) DESC limit 1;