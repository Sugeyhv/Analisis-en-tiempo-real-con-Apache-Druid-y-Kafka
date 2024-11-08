-- Query #1 Conteo de Ordenes completadas

SELECT count(purchase_ID) as completed
FROM topic_druid_grafana
WHERE Status = 'COMPLETED'

-- Query #2 Conteo total de Ordenes 
SELECT count(purchase_ID) as total_orders
FROM topic_druid_grafana

-- Query #3 % de ordenes completadas
with completed as (
    
    SELECT 'orders' as ORDERS
          ,count(purchase_ID) as completed
    FROM topic_druid_grafana
    WHERE Status = 'COMPLETED'

)

,total as (

   SELECT 'orders' as ORDERS
          ,count(purchase_ID) as completed
    FROM topic_druid_grafana

)

SELECT round(cast(c.completed as double)/CAST(t.completed as double),4)*100  as completed_percent
FROM completed c       
INNER JOIN total t on c.ORDERS = t.ORDERS

-- Query #4 Metodo de pago que genera mas ingresos
SELECT distinct(Payment_Mehtod)  as Payment_Mehtod ,sum(Revenue) as Total
FROM topic_druid_grafana
WHERE Status = 'COMPLETED'
group by 1 order by 2 desc

-- Query #5 Metodo de pago con mas ordenes
SELECT distinct(Payment_Mehtod)  as Payment_Mehtod ,count(Payment_Mehtod) as Qty
FROM topic_druid_grafana
WHERE Status = 'COMPLETED'
group by 1 order by 2 desc

-- Query #5 Tiendas con mas ventas
SELECT DISTINCT(Location) as coordenadas
      ,CAST(Latitud as DOUBLE) as LAT
      ,CAST(Longitud as DOUBLE) as LNG
      ,City
      ,count(Location) as qty
FROM topic_druid_grafana
group by 1,2,3,4 order by 5 desc