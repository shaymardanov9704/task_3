abstract class User {
  String? name;
  String? lastName;
  String? phoneNumber;
}

class Driver extends User {
  String? carType;
  String? carStatus;
  int? cardNumber;
  String? locationUrl;

  void delivery(String url, String num) {
    print(
        'Request: $url manzilda sizni mijoz kutmoqda!\n Mijoz telefon raqami: $num');
  }
}

class Passenger extends User {
  String? wantCarStatus;
  int? cardNumber;
  String? location;

  void call(String num) {
    print(
        'Response: Ko`rsatilgan lokatsiya bo`yicha sizga $wantCarStatus turidagi taxi bormoqda.\n Haydochi telefon raqami $num');
  }
}

void main(List<String> args) {
  //console dan kiritish muammo bo`ldi.
  //shuning uchun kiritilishi kerak bo`lgan malumotlar kodni o`zida yozildi

  Passenger passenger = Passenger();

//yo`lovchi tizimga kiritishi kerak bo`lgan malumotlar

  passenger.name = 'Eric';
  passenger.lastName = 'Cantona';
  passenger.phoneNumber = '+99899762551';
  passenger.location = 'some url))';
  passenger.wantCarStatus = 'Lux';
  passenger.cardNumber = 86001242121121;

//haydovchi tizimga kiritishi kerak bo`lgan malumotlar
  Driver driver = Driver();
  driver.name = 'Emanuel';
  driver.lastName = 'Petie';
  driver.phoneNumber = '+998917327678';
  driver.locationUrl = 'some url))';

//taksi chaqirish
  passenger.call(driver.phoneNumber!);

//mijozdan so`rov qabul qilish
  driver.delivery(passenger.location.toString(), passenger.phoneNumber!);
}
