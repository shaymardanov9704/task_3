abstract class Person {
  String? name;
  String? phoneNumber;
  String? type;
  int? age;
}

class Client extends Person {
  String? address;
}

class Courier extends Person {
  String? status;
  double? salary;
}

class Manager extends Person {
  String? status;
  double? salary;
}

void main(List<String> args) {
  Client client = Client();
  client.name = 'John';
  client.phoneNumber = '+998973639704';
  client.type = 'Male';
  client.age = 23;
  client.address = 'Tashkent, TS street,13';

  Courier courier = Courier();
  courier.name = 'Brian';
  courier.phoneNumber = '+998915736251';
  courier.type = 'Male';
  courier.age = 19;
  courier.status = 'Intern';
  courier.salary = 2000;

  Manager manager = Manager();
  manager.name = 'Rose';
  manager.phoneNumber = '998915736252';
  manager.type = 'Female';
  manager.age = 29;
  manager.salary = 8900;
  manager.status = 'Experienced worker';
}
