class Producto {
  String nombre;
  double precio;

  Producto(this.nombre, this.precio);
}

class Cliente {
  String nombre;
  String correo;

  Cliente(this.nombre, this.correo);
}

class Pedido {
  Cliente cliente;
  List<Producto> productos = [];

  Pedido(this.cliente);

    void agregarProducto(Producto producto) {
    productos.add(producto);
  }
  double calcularTotal() {
    double total = 0;
    for (var producto in productos) {
      total += producto.precio;
    }
    return total;
  }
void mostrarDetalle() {
    print("Cliente: ${cliente.nombre}");
    print("Productos del pedido:");

    for (var producto in productos) {
      print("- ${producto.nombre}: \$${producto.precio}");
    }

    print("Total a pagar: \$${calcularTotal()}");
  }
}

void main() {
Cliente cliente1 = Cliente("Madiel Gómez", "mayito_go@hotmail.com");

  Producto p1 = Producto("Laptop", 15000);
  Producto p2 = Producto("Mouse", 350);
  Producto p3 = Producto("Teclado", 900);

Pedido pedido1 = Pedido(cliente1);
  pedido1.agregarProducto(p1);
  pedido1.agregarProducto(p2);
  pedido1.agregarProducto(p3);
  pedido1.mostrarDetalle();
}
