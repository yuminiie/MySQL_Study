SELECT 
    ORDER_ID, 
    PRODUCT_ID, 
    ifnull(DATE_FORMAT(OUT_DATE, '%Y-%m-%d'), null) as OUT_DATE,  
    case
        when OUT_DATE is null then '출고미정' 
        when OUT_DATE <= date('2022-05-01') then '출고완료'
        else '출고대기'
    end as 출고여부
    from FOOD_ORDER
order by ORDER_ID;