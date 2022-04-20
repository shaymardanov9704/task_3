enum Section { Upper_section, Lower_section, Middle_section }

abstract class Inson {
  String? familiya;
  String? ismi;
  String? sharifi;
  String? tugilgan_yili;
  String? jinsi;
}

class Xodim extends Inson {
  Bolim? bolim;
  Mansab? mansab;
  double? maosh;
  bool? status;
  void ishgaKirish() {
    status = true;
  }

  void ishdanBoshash() {
    status = false;
    mansab = Mansab(mansabNomi: 'Ishsiz');
    maosh = 0;
    bolim = Bolim(bolimNomi: 'Yo`q', section: null, status: false);
  }
}

class Mansab {
  String? mansabNomi;
  Mansab({required this.mansabNomi});
}

class Bolim {
  String? bolimNomi;
  bool? status;
  Section? section;

  Bolim({required this.bolimNomi, required this.section, required this.status});
  void bolimniOchish() {
    status = true;
  }

  void bolimniYopish() {
    status = false;
  }
}

void main(List<String> args) {
  Xodim xodim = Xodim();

  xodim.ismi = 'Botir';
  xodim.familiya = 'Jo`rayev';
  xodim.sharifi = 'Temurovich';
  xodim.mansab = Mansab(mansabNomi: 'Junior');
  xodim.maosh = 300;
  xodim.status = true;
  xodim.bolim =
      Bolim(bolimNomi: 'Mobile', section: Section.Middle_section, status: true);

  print(
      'Xodim: ${xodim.familiya} ${xodim.ismi} ${xodim.sharifi}.Statusi ${xodim.status}. Maoshi ${xodim.maosh}.Mansabi ${xodim.mansab!.mansabNomi}. Bo`limi ${xodim.bolim!.bolimNomi}.Bo`lim darajasi ${xodim.bolim!.section}. ');

  xodim.ishdanBoshash();

  print(
      'Xodim: ${xodim.familiya} ${xodim.ismi} ${xodim.sharifi}.Statusi ${xodim.status}. Maoshi ${xodim.maosh}.Mansabi ${xodim.mansab!.mansabNomi}. Bo`limi ${xodim.bolim!.bolimNomi}.Bo`lim darajasi ${xodim.bolim!.section}. ');
}
