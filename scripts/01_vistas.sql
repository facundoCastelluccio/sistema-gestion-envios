-- muestro direcciones completas de los clientes
create view vw_direcciones_completas AS 
select
	CONCAT(c.nombre, ' ', c.apellido) AS cliente,	
	c.localidad,
    c.provincia,
    d.calle,
    d.altura,
    td.descripcion AS tipo_direccion
FROM clientes AS c
JOIN direcciones AS d ON c.id_cliente = d.fk_cliente
JOIN tipos_direcciones as td ON d.fk_tipo_direccion = td.id_tipo_direccion;

SELECT * FROM vw_direcciones_completas;



-- Ver detalle de los pedidos
create view vw_detalle_pedidos AS 
SELECT 
	p.id_pedido,
    p.fecha_pedido, 
    pr.nombre AS producto,
    dp.cantidad,
    dp.precio_unitario,
    dp.cantidad*dp.precio_unitario AS subtotal
FROM pedidos AS p
JOIN detalles_pedidos AS dp ON dp.fk_pedido = p.id_pedido
JOIN productos AS pr ON dp.fk_producto = pr.id_producto;

SELECT * FROM vw_detalle_pedidos;



-- Ver envios con inconvenientes
create view vw_envios_inconvenientes AS
SELECT 
	e.id_envio,
    p.fecha_pedido,
    ee.nombre AS estado_envio,
    d.fecha_reclamo,
    md.descripcion AS motivo_devolucion
FROM envios AS e
JOIN pedidos AS p on p.id_pedido = e.fk_pedido
JOIN estados_envios AS ee ON ee.id_estado_envio = e.fk_estado_envio
INNER JOIN devoluciones AS d ON p.id_pedido = d.fk_pedido 
INNER JOIN motivos_devoluciones AS md ON d.fk_motivo = md.id_motivo;

select* from vw_envios_inconvenientes;




