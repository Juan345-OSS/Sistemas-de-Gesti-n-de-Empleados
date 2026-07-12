import 'Models/empleado.dart';
import 'Models/empresa.dart';

void main() {

  Empresa empresa = Empresa("Tech Solutions");

  Empleado e1 = Empleado(
      "Juan",
      25,
      2000000,
      25,
      "Junior",
      true);

  Empleado e2 = Empleado(
      "María",
      30,
      3500000,
      30,
      "Senior",
      true);

  Empleado e3 = Empleado(
      "Pedro",
      22,
      1800000,
      10,
      "Junior",
      false);

  empresa.agregarEmpleado(e1);
  empresa.agregarEmpleado(e2);
  empresa.agregarEmpleado(e3);

  empresa.mostrarEmpleados();

  print("\nNómina: ${empresa.calcularNomina(100000)}");

  print("\nBuscar Senior");
  empresa.buscarPorCargo("Senior");
}