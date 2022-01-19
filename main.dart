import 'dart:developer';

import 'dart:io';

void main() {
  Validator validator = Validator();
  // stdout.write('Ввод:');
  // String valEmail = stdin.readLineSync()!;
  // validator.isEmail(valEmail);

  // String valDomain = stdin.readLineSync()!;
  // validator.isDomain(valDomain);
  
  // String valDate = stdin.readLineSync()!;
  // validator.isDate(valDate);

  Car bmw = Car(
    brand: 'BMW', 
    status: 's', 
    weight: 2500.5, 
    driver: Driver(name: 'Vasya')
  );
  print(bmw.printCarSetting());
}

class Validator {
  final dateDay = DateTime.now().day;
  final dateMonth = DateTime.now().month;
  final dateYear = DateTime.now().year;

  isEmail(valEmail) {
    print(valEmail.contains('@gmail'));
  }
  isDomain(valDomain){
    print(valDomain.contains('.ru'));
  }

  isDate(valDate){
    print(valDate.contains('$dateDay/$dateMonth/$dateYear'));
  }  
}

class Car {
  String? brand;
  String? status;
  double? weight;
  Driver driver;
  Car({
    required this.brand,
    required this.status,
    required this.weight,
    required this.driver
  });

  printCarSetting(){
    return 'Марка: ${this.brand}, Класс: ${this.status}, Вес: ${this.weight}, Водитель: ${this.driver}';
  }
}

class Engine {
  String? power;
  String? manufacturer;
}

class Driver {
  String? name;
  int? experience;
  Driver({
    required this.name
  });
  @override
  String toString(){
    return 'Водитель: ${this.name}';
  }
}