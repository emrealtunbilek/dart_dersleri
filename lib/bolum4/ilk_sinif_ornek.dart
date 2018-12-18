main(List<String> args) {

  int sayi = 5;
  Ogrenci emre =  Ogrenci();
  var hasan = Ogrenci();

  emre.ogrNo = 10;
  emre.adi ="emre altunbilek";
  emre.erkekMi=true;
  emre.bilgileriYazdir();

  hasan.ogrNo = 20;
  hasan.adi ="hasan hasanoğlu";
  hasan.erkekMi=true;
  hasan.bilgileriYazdir();
  
}

class Ogrenci {

  int ogrNo; //ınstance veya Field variable
  String adi;
  bool erkekMi;

  void dersCalis(){

  }

  void uyu(){

  }

  void bilgileriYazdir(){
    print("Ogrenci numarasi : ${this.ogrNo} adi : ${this.adi} erkek mi : ${this.erkekMi}");
  }

} 