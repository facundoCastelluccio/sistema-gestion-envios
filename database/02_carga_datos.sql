USE sistema_gestion_envios;

-- 1. ESTADOS DE PEDIDOS
INSERT INTO estados_pedidos (nombre, estado) VALUES
('Pedido Normal', 'pago aprobado'),
('Pedido Web', 'pendiente de pago'),
('Pedido Fallido', 'cancelado'),
('Pedido Retorno', 'reembolsado');

-- 2. ESTADOS DE ENVÍOS
INSERT INTO estados_envios (nombre, estado) VALUES
('Almacén Central', 'En deposito'),
('En Ruta Local', 'En camino'),
('Destino Final', 'Entregado'),
('Incidencia Logística', 'Extraviado');

-- 3. TIPOS DE DIRECCIONES
INSERT INTO tipos_direcciones (descripcion, activo) VALUES
('Casa', 1),
('Trabajo', 1),
('Sucursal', 1);

-- 4. TIPOS DE VEHÍCULOS
INSERT INTO tipos_vehiculos (nombre, capacidad_kg, costo_extra, largo_max, ancho_max, profundidad_max) VALUES
('Moto', 15.00, 500.00, 0.50, 0.40, 0.40),
('Utilitario / Furgón', 500.00, 2000.00, 2.00, 1.50, 1.50),
('Camión Mediano', 2500.00, 5000.00, 4.50, 2.20, 2.20),
('Camión Pesado', 12000.00, 12000.00, 8.00, 2.40, 2.50);

-- 5. MOTIVOS DE DEVOLUCIONES
INSERT INTO motivos_devoluciones (codigo, descripcion) VALUES
('DEV01', 'Cliente ausente al momento de la entrega'),
('DEV02', 'Dirección incorrecta o inexistente'),
('DEV03', 'Producto dañado o defectuoso'),
('DEV04', 'Rechazado por el cliente');

-- 6. CLIENTES
INSERT INTO clientes (nombre, apellido, email, localidad, provincia) VALUES
('Juan', 'Pérez', 'juan.perez@email.com', 'Ciudad Autónoma de Buenos Aires', 'Buenos Aires'),
('María', 'Gómez', 'maria.gomez@email.com', 'Córdoba', 'Córdoba'),
('Carlos', 'López', 'carlos.lopez@email.com', 'Rosario', 'Santa Fe'),
('Ana', 'Martínez', 'ana.martinez@email.com', 'Ciudad Autónoma de Buenos Aires', 'Buenos Aires'),
('Lucas', 'Rodríguez', 'lucas.rodriguez@email.com', 'Mendoza', 'Mendoza'),
('Sofía', 'Fernández', 'sofia.fernandez@email.com', 'La Plata', 'Buenos Aires'),
('Diego', 'González', 'diego.gonzalez@email.com', 'Mar del Plata', 'Buenos Aires'),
('Valentina', 'Díaz', 'valentina.diaz@email.com', 'Paraná', 'Entre Ríos'),
('Matías', 'Sánchez', 'matias.sanchez@email.com', 'Salta', 'Salta'),
('Lucía', 'Romero', 'lucia.romero@email.com', 'San Miguel de Tucumán', 'Tucumán');

-- 7. DIRECCIONES
INSERT INTO direcciones (calle, altura, fk_tipo_direccion, fk_cliente) VALUES
('Av. Corrientes', '1234', 1, 1),
('Calle Falsa', '456', 1, 2),
('Mitre', '789', 2, 3),
('Av. Santa Fe', '3210', 1, 4),
('San Martín', '555', 1, 5),
('Belgrano', '1120', 3, 6),
('Rivadavia', '8900', 1, 7),
('Urquiza', '432', 2, 8),
('España', '78', 1, 9),
('San Lorenzo', '950', 1, 10);

-- 8. TRANSPORTISTAS
INSERT INTO transportistas (nombre_empresa, costo_por_km) VALUES
('Correo Urbano SRL', 150.00),
('Logística Express', 220.00),
('Transportes del Sur', 180.00),
('Rápido al Interior', 250.00),
('Envios Ya S.A.', 190.00);

-- 9. DISTANCIAS
INSERT INTO distancias (origen, destino, distancia_km) VALUES
('Depósito Central CABA', 'Av. Corrientes 1234, CABA', 5.20),
('Depósito Central CABA', 'Calle Falsa 456, Córdoba', 700.00),
('Depósito Central CABA', 'Mitre 789, Rosario', 300.00),
('Depósito Central CABA', 'Av. Santa Fe 3210, CABA', 4.10),
('Depósito Central CABA', 'San Martín 555, Mendoza', 1050.00),
('Depósito Central CABA', 'Belgrano 1120, La Plata', 60.00),
('Depósito Central CABA', 'Rivadavia 8900, Mar del Plata', 405.00),
('Depósito Central CABA', 'Urquiza 432, Paraná', 470.00),
('Depósito Central CABA', 'España 78, Salta', 1480.00),
('Depósito Central CABA', 'San Lorenzo 950, Tucumán', 1250.00);

-- 10. PRODUCTOS
INSERT INTO productos (nombre, peso, ancho, alto, profundidad) VALUES
('Mouse Gamer RGB', 0.25, 8.00, 5.00, 12.00),
('Teclado Mecánico', 0.85, 15.00, 4.00, 44.00),
('Monitor 24 pulgadas', 3.50, 18.00, 40.00, 55.00),
('Auriculares Inalámbricos', 0.40, 15.00, 20.00, 8.00),
('Silla Gamer ergonómica', 15.00, 60.00, 80.00, 60.00),
('Notebook 15.6"', 1.80, 25.00, 2.50, 36.00),
('Disco Sólido SSD 1TB', 0.15, 7.00, 2.00, 10.00),
('Impresora Multifunción', 5.20, 40.00, 30.00, 45.00),
('Webcam Full HD', 0.20, 9.00, 6.00, 5.00),
('Parlante Bluetooth', 0.60, 10.00, 10.00, 20.00);

-- 11. PEDIDOS
INSERT INTO pedidos (fecha_pedido, total, fk_cliente, fk_direccion, fk_estado_pedido) VALUES
('2026-10-06 11:20:00', 90000.00, 1, 1, 1),
('2026-10-07 16:45:00', 180000.00, 2, 2, 1),
('2026-10-08 09:10:00', 65000.00, 3, 3, 2),
('2026-10-08 14:00:00', 295000.00, 4, 4, 1),
('2026-10-09 10:30:00', 250000.00, 5, 5, 3),
('2026-10-09 13:15:00', 650000.00, 6, 6, 1),
('2026-10-09 17:40:00', 95000.00, 7, 7, 1),
('2026-10-10 08:20:00', 140000.00, 8, 8, 2),
('2026-10-10 11:00:00', 85000.00, 9, 9, 1),
('2026-10-10 16:50:00', 50000.00, 10, 10, 1);

-- 12. DETALLES DE PEDIDOS
INSERT INTO detalles_pedidos (cantidad, precio_unitario, fk_pedido, fk_producto) VALUES
(1, 25000.00, 1, 1),
(1, 65000.00, 1, 2),
(1, 180000.00, 2, 3),
(1, 65000.00, 3, 2),
(1, 180000.00, 4, 3),
(1, 45000.00, 4, 4),
(1, 25000.00, 4, 1),
(1, 35000.00, 4, 9),
(1, 250000.00, 5, 5),
(1, 650000.00, 6, 6),
(1, 95000.00, 7, 7),
(1, 140000.00, 8, 8),
(1, 25000.00, 9, 1),
(1, 45000.00, 9, 4),
(1, 50000.00, 10, 10);

-- 13. ENVÍOS
INSERT INTO envios (fecha_despacho, fecha_entrega_estimada, fecha_entrega_real, costo_envio, fk_pedido, fk_transportista, fk_tipo_vehiculo, fk_estado_envio, fk_distancia) VALUES
('2026-10-06 14:00:00', '2026-10-06 18:00:00', '2026-10-06 17:30:00', 4500.00, 1, 1, 1, 3, 1),
('2026-10-07 18:00:00', '2026-10-09 12:00:00', '2026-10-09 10:00:00', 12500.00, 2, 2, 2, 3, 2),
(NULL, '2026-10-11 15:00:00', NULL, 8000.00, 3, 3, 3, 1, 3),
('2026-10-08 16:00:00', '2026-10-08 20:00:00', NULL, 5000.00, 4, 1, 1, 2, 4),
('2026-10-09 11:00:00', '2026-10-12 18:00:00', NULL, 18000.00, 5, 4, 4, 4, 5),
('2026-10-09 15:00:00', '2026-10-10 14:00:00', '2026-10-10 11:30:00', 9500.00, 6, 2, 2, 3, 6),
('2026-10-09 19:00:00', '2026-10-11 10:00:00', NULL, 15000.00, 7, 3, 3, 2, 7),
(NULL, '2026-10-13 16:00:00', NULL, 6000.00, 8, 5, 1, 1, 8),
('2026-10-10 13:00:00', '2026-10-15 12:00:00', NULL, 22000.00, 9, 4, 3, 2, 9),
('2026-10-10 18:00:00', '2026-10-16 18:00:00', '2026-10-12 09:00:00', 7500.00, 10, 5, 2, 3, 10);

-- 14. SEGUIMIENTOS DE ENVÍOS
INSERT INTO seguimientos_envios (fecha_hora, ubicacion_actual, observaciones, fk_envio) VALUES
('2026-10-06 12:00:00', 'Depósito Central CABA', 'Paquete preparado en depósito central', 1),
('2026-10-06 14:00:00', 'En ruta - CABA', 'Entregado al transportista en moto', 1),
('2026-10-06 17:30:00', 'Av. Corrientes 1234, CABA', 'Entregado con éxito al destinatario', 1),
('2026-10-07 17:00:00', 'Depósito Central CABA', 'Paquete preparado para larga distancia', 2),
('2026-10-07 18:00:00', 'Centro de Transferencia Bs.As.', 'Despachado hacia Córdoba', 2),
('2026-10-08 06:00:00', 'En ruta - Autopista Córdoba', 'En camino hacia Córdoba', 2),
('2026-10-08 15:00:00', 'Depósito Central CABA', 'Paquete armado y verificado', 4),
('2026-10-08 16:00:00', 'En ruta - CABA Norte', 'En camino en furgón utilitario', 4),
('2026-10-09 11:30:00', 'Depósito Central CABA', 'Envío extraviado reportado por logística', 5),
('2026-10-10 13:00:00', 'Centro de Transferencia Sur', 'Despachado en ruta a Salta', 9);

-- 15. DEVOLUCIONES
INSERT INTO devoluciones (fecha_reclamo, estado_reclamo, fk_pedido, fk_motivo) VALUES
('2026-10-09 12:00:00', 'Aprobada', 5, 3),
('2026-10-10 09:30:00', 'Pendiente', 3, 1),
('2026-10-10 15:00:00', 'Rechazada', 8, 4);