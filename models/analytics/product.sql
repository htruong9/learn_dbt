SELECT  
  a.stock_item_id as product_id
  , a.stock_item_name as product_name
  , COALESCE(a.brand, 'Undefined') as brand_name
  , a.supplier_id
  , b.supplier_name
FROM `vit-lam-data.wide_world_importers.warehouse__stock_items` a
JOIN {{ ref('supplier')}} b
ON a.supplier_id = b.supplier_id