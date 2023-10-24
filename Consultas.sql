--select [Id Proveedor]=p.ID_Proveedor, [Nombre Proveedor]=p.Nombre,
--[Id Grupo Cliente]=g.ID_GrupoC, [Descripcion Grupo Clientes]=g.Descripcion
--from Proveedores p 
--join Productos pr on pr.ID_Proveedor=p.ID_Proveedor
--join DetalleOrdenCompra d on d.ID_Producto=pr.ID_Producto
--join OrdenCompra oc on oc.ID_OrdenC=d.ID_OrdenC
--join Clientes c on c.ID_Cliente=oc.ID_Cliente
--join GrupoClientes g on g.ID_GrupoC=c.ID_GrupoC

select p.ID_Producto, 
[Nombre Proveedor]=pr.Nombre, 
[Categoria]=c.Descripcion, 
[Producto]=p.Nombre, 
[Precio Unitario]=p.Precio_Unitario
from Productos p
join Proveedores pr on p.ID_Proveedor=pr.ID_Proveedor
join Categorias c on c.ID_Categoria=p.ID_Categoria