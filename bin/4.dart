enum Type { badiy, detektiv, ilmiy, bolalar_adabiyoti }

class Bibliotec {
  String? bibliotecName;
  String? address;

  Bibliotec({required this.bibliotecName});
  void referenceOfBibliotec() {
    print('Kutubxona nomi: $bibliotecName \nAddress: $address');
  }
}

class Reader {
  String? name;
  String? lastName;
  String? phoneNumber;
  int? age;
  Bibliotec? bibliotec;
  List<Book>? listOfBooks;

  Reader(
      {required this.name,
      required this.lastName,
      required this.phoneNumber,
      required this.bibliotec,
      required this.age,
      required this.listOfBooks});

  void referenceOfReader() {
    print(
        'Reader fullname: $name $lastName \nPhone number: $phoneNumber \nAge: $age \nBibliotec: ${bibliotec!.bibliotecName} \nLast  readed book: ${listOfBooks![0].name}');
  }
}

class Book {
  String? name;
  String? autor;
  Type? type;
  int? betlarSoni;

  Book({required this.name, required this.autor, required this.type});

  void referenceOfBook() {
    print('Book name: $name \nAutor name $autor \nType: $type ');
  }
}

void main(List<String> args) {
  Reader reader = Reader(
      name: 'John',
      lastName: 'Stones',
      phoneNumber: '+99891765142',
      bibliotec: Bibliotec(bibliotecName: 'Alisher Navoiy'),
      age: 23,
      listOfBooks: [
        Book(name: 'Spirited Away', autor: 'Joe Hisaishi', type: Type.badiy)
      ]);

  reader.referenceOfReader();

  print('============================================================');

  Book book = Book(
      name: 'Flutter for Beginners', autor: 'Johannes Milke', type: Type.ilmiy);
  book.referenceOfBook();

  print('============================================================');

  Bibliotec bibliotec = Bibliotec(bibliotecName: 'Alisher Navoiy');

  bibliotec.address = 'Mustaqillik Maydoni';

  bibliotec.referenceOfBibliotec();
}
