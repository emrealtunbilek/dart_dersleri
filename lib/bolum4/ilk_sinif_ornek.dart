//Nesneye yönelimli programlamaya giriş
/**
 * Sınıf : Kendi veri türlerimiz veya soyut olan taslaklara denir. Kendi içinde değişkenlere ve methodlara sahiptir
 * Istedigimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır.
 * 
 * Nesne : Olusturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
 * Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz.
 * 
 * Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır.
 * 
 */

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