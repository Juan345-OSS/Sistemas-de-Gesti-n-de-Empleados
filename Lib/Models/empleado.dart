class Empleado {
  String _nombre;
  int _edad;
  double _salarioBase;
  int _horasExtras;
  String _cargo;
  bool _activo;

  Empleado(String nombre, int edad, double salarioBase, int horasExtras, String cargo, bool activo): _nombre =nombre, _edad=edad, _salarioBase=salarioBase, _horasExtras=horasExtras, _cargo=cargo, _activo=activo;

  void setNombre(String valor){
    if (valor.isEmpty) {
      print('Error');
    }else{
      _nombre = valor;
    }
  }

  String getNombre()=> this._nombre;

  void setEdad(int valor) {
    if (valor >= 18 && valor <= 65) {
      print('Edad correcta');
      _edad = valor;
    } else {
      print('No puede trabajar');
    }
  }

  int getEdad()=>this._edad;

  void setSalarioBase(double valor1){
    if (valor1>0.0) {
      print('buen salario');
      _salarioBase = valor1;
    } else {
      print('no cumple con el estander del salario');
    }
  }

  double getSalarioBase()=> this._salarioBase;

  void setHorasExtras(int valor){
    if (valor >= 0 && valor <= 80) {
      print('Horas extras permitidas');
      _horasExtras = valor;
    } else {
      print('Horas extras no permitidas');
    }
  }

  int getHorasExtras()=>this._horasExtras;

  void setCargo(String valor){
    if (
    valor == "Junior" ||
    valor == "SemiSenior" ||
    valor == "Senior"
    ) {
    _cargo = valor;
    }else{
    print("Cargo no registrado");
    }
  }

  String getCargo()=> this._cargo;

  void setActivo(bool valor){
    _activo = valor;
  }

  bool getActivo()=> this._activo;

  void registrarEmpleado() {
  print('El nombre es: ${getNombre()}');
  print('La edad es: ${getEdad()}');
  print('El Salario Base es: ${getSalarioBase()}');
  print('Las horas Extras son: ${getHorasExtras()}');
  print('El Cargo es: ${getCargo()}');
  print('Trabajador: ${getActivo()}');
  }


  double calcularSalario(double valor) {
  if (getActivo() == false) {
    return 0; // Si el empleado no está activo, no gana salario
  }

  if (getCargo() == "Junior") {
    if (getHorasExtras() > 20) {
      return valor * 1.05;
    } else {
      print('No cumple las horas extras');
      return valor;
    }
  } else if (getCargo() == "SemiSenior") {
    if (getHorasExtras() > 20) {
      return valor * 1.10;
    } else {
      print('No cumple las horas extras');
      return valor;
    }
  } else if (getCargo() == "Senior") {
    if (getHorasExtras() > 20) {
      return valor * 1.20;
    } else {
      print('No cumple las horas extras');
      return valor;
    }
  } else {
    print("Cargo no válido");
    return valor;
  }
}

int evaluarEmpleado(int valor) {
  if (valor >= 90) {
    print('Calificacion Excelente');
    return valor;
  }if (valor >= 75) {
    print('Calificacion Bueno');
    return valor;
  }if (valor>=60) {
    print('Calificacion Regular');
    return valor;
  } else {
    print('Empleado no válido');
    return -1; // o cualquier valor que quieras indicar como "no válido"
  }

}

}