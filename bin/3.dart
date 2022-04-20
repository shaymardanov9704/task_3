class Abonent {
  int? id;
  String? familiya;
  String? ismi;
  String? sharifi;
  String? address;
  int? cardNumber;
  int? debet;
  int? kredit;
  int? timeOfCity;
  int? timeOutOfCity;

  Abonent(
      {required this.id,
      required this.familiya,
      required this.ismi,
      required this.sharifi,
      required this.address,
      required this.cardNumber,
      required this.debet,
      required this.kredit,
      required this.timeOfCity,
      required this.timeOutOfCity});

  void printTo() {
    print(
        'ID:$id \nF.I.Sh: $familiya $ismi $sharifi \nAddres: $address \nKarta raqami: $cardNumber\nQarzi: $debet ');
  }

  String getName() {
    return ismi!;
  }

  String getFamiliyasi() {
    return familiya!;
  }

  String getSharifi() {
    return sharifi!;
  }

  String getAddress() {
    return address!;
  }

  int getCardNum() {
    return cardNumber!;
  }

  int getQarzi() {
    return debet!;
  }

  setName(String firstName) {
    ismi = firstName;
  }

  setFamiliyasi(String lastName) {
    familiya = lastName;
  }

  setSharifi(String nameOfDad) {
    sharifi = nameOfDad;
  }

  setAddress(String manzil) {
    address = manzil;
  }

  setCardNum(int num) {
    cardNumber = num;
  }

  setQarzi(int qarz) {
    debet = qarz;
  }
}

void main(List<String> args) {
  List<Abonent> list = [
    Abonent(
        id: 1,
        familiya: 'Aliyev',
        ismi: 'Behzod',
        sharifi: 'Davlatovich',
        address: 'Tashkent',
        cardNumber: 8600,
        debet: 20322,
        kredit: 2343,
        timeOfCity: 123,
        timeOutOfCity: 12),
    Abonent(
        id: 2,
        familiya: 'Saidov',
        ismi: 'Abbos',
        sharifi: 'Sharif o`g`li',
        address: 'Tashkent',
        cardNumber: 8600,
        debet: 6767,
        kredit: 21,
        timeOfCity: 100,
        timeOutOfCity: 1234),
    Abonent(
        id: 3,
        familiya: 'Do`stov',
        ismi: 'Olim',
        sharifi: 'Safarovich',
        address: 'Tashkent',
        cardNumber: 8600,
        debet: 7,
        kredit: 87,
        timeOfCity: 5,
        timeOutOfCity: 12),
    Abonent(
        id: 4,
        familiya: 'Qobilov',
        ismi: 'Behzod',
        sharifi: 'Davlatovich',
        address: 'Tashkent',
        cardNumber: 8600,
        debet: 23,
        kredit: 46,
        timeOfCity: 43,
        timeOutOfCity: 2),
    Abonent(
        id: 4,
        familiya: 'Murodov',
        ismi: 'Said',
        sharifi: 'Davlatovich',
        address: 'Tashkent',
        cardNumber: 8600,
        debet: 23,
        kredit: 46,
        timeOfCity: 43,
        timeOutOfCity: 0),
  ];

  print(
      'Shaharlararo suhbat vaqti shahar bo’yicha suhbat vaqtidan ko’p bo’lgan abonentlar ro’yxati:');
  for (var i = 0; i < list.length; i++) {
    if (list[i].timeOfCity! < list[i].timeOutOfCity!) {
      list[i].printTo();
      print('__________________________________________________');
    }
  }
  print('/=======================================================/');
  print('Abonentlar ro’yxatini alfavit tartibida:');
  List<String> sortBy = [];
  for (var i = 0; i < list.length; i++) {
    sortBy.add(list[i].familiya!);
  }

  sortBy.sort();

  for (var i = 0; i < list.length; i++) {
    for (var j = 0; j < list.length; j++) {
      if (list[j].familiya == sortBy[i]) {
        list[j].printTo();
        print('__________________________________________________');
      }
    }
  }

  print('/=======================================================/');
  print('Shaharlararo suhbatdan fodalanmagan abonentlar:');
  for (var i = 0; i < list.length; i++) {
    if (list[i].timeOutOfCity == 0) {
      list[i].printTo();
    }
  }
}
