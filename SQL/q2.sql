SELECT
  o.item_id,
  i.sku,
  i.item_name,
  sum(o.quantity) AS order_quantity
FROM
  orders o
  LEFT JOIN item i ON o.item_id = i.item_id
GROUP BY
  o.item_id,
  i.sku,
  i.item_name