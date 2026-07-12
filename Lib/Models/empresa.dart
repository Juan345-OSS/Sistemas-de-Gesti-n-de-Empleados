import 'empleado.dart';

class Empresa {
  String? nombreEmpresa;
  List<Empleado> empleados = [];

  Empresa(this.nombreEmpresa);

  void agregarEmpleado(Empleado empleado) {
    empleados.add(empleado);
    print('${empleado.getNombre()} fue agregado a la empresa.');
  }

  void mostrarEmpleados() {
    if (empleados.isEmpty) {
      print('No hay empleados registrados.');
      return;
    }

    for (int i = 0; i < empleados.length; i++) {
      print('\n========== EMPLEADO ${i + 1} ==========');
      empleados[i].registrarEmpleado();
    }
  }

  double calcularNomina(double valorHoraExtra) {
    double total = 0;

    for (int i = 0; i < empleados.length; i++) {
      total += empleados[i].calcularSalario(valorHoraExtra);
    }

    return total;
  }

  void buscarPorCargo(String cargo) {
    bool encontrado = false;

    for (int i = 0; i < empleados.length; i++) {
      if (empleados[i].getCargo() == cargo) {
        empleados[i].registrarEmpleado();
        encontrado = true;
      }
    }

    if (!encontrado) {
      print('No existen empleados con el cargo $cargo');
    }
  }
}