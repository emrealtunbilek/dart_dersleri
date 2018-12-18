/**
 * KURUCU METHODLAR - CONSTRUCTORS
 * Bir sınıftan nesne ürettiğimizde tetiklenen yapılardır. Bu yapıları kullanarak nesnelerimizi veri göndererek oluşturabilir, nesneleri
 * kullanmadan önce gerekli atamaları ve ayarları yapabiliriz.
 * 
 * Farklı türde kurucu olusturabiliriz.
 *  1-Default : Sınıf adının yanına () dediğimizde çalışan ve de sınıf adıyla aynı olan methoddur.
 *    Ogrenci emre=new Ogrenci() dediğimizde aslında default kurucu çalışır.
 *    Default constructor sınıfın içinde eğer elle yazıp belirtmesek bile olan Ogrenci(){} şeklinde tanımlı boş bir methoddur.
 *    Istersek bunu çeşitli durumlar için kullanabiliriz. Bu method her nesne üretiminde ilk olarak çalışan methoddur.
 *    Kurucu methodların geri dönüş tipi olmaz.
 * 
 *  2- Parametreli Kurucu Method : Aslında default constructorın parametre almış haline denir.
 *    Ogrenci emre=new Ogrenci("emre");
 * 
 *  Dart dilinde method overloading olmadığı için sadece ya default yapıcı ya da parametreli yapıcı olmalıdır.
 * 
 *  3- Named (Isimlendirilmiş) : Sınıf içerisinde 
 *    SinifAdi.methodAdi(){
 *    buraya kodlar gelir.
 * }
 *   //Istediniz sayıda isimlendirilmiş kurucu oluşturabilirsiniz. 
 * 
 * 
 */
main(List<String> args) {
  
  var emre=Ogrenci(10,"emre altunbilek",true);

/*
  emre.ogrNo = 10;
  emre.adi ="emre altunbilek";
  emre.erkekMi=true;
  */
  emre.bilgileriYazdir();

  var hasan = Ogrenci(20, "hasan", true);
  hasan.bilgileriYazdir();

  var ayse=Ogrenci.cinsiyetBilgisiOlmayanKurucu(40, "ayşe yılmaz");
  ayse.bilgileriYazdir();

  var ali=Ogrenci.cinsiyetBilgisiOlanKurucu(50, "ali özcan", true);
  ali.bilgileriYazdir();

}

class Ogrenci {

  int ogrNo; //ınstance veya Field variable
  String adi;
  bool erkekMi;


  /*
  Ogrenci(){
    print("Ogrenci sınıfından bir nesne üretiliyor ki ben tetiklendim");
  }
  */

/*
  Ogrenci(int no, String ad, bool cinsiyet){
      print("Ogrenci sınıfından bir nesne üretiliyor ki ben tetiklendim");
      this.ogrNo = no;
      this.adi = ad;
      this.erkekMi = cinsiyet;
  }*/

  Ogrenci(this.ogrNo, this.adi, this.erkekMi){
      print("Ogrenci sınıfından bir nesne üretiliyor ki ben tetiklendim");
  }



  Ogrenci.cinsiyetBilgisiOlmayanKurucu(this.ogrNo, this.adi){
    print("Ogrenci sınıfından bir nesne üretiliyor ki ben tetiklendim");
  }

  Ogrenci.cinsiyetBilgisiOlanKurucu(int no, String ad, bool cinsiyet){
      print("Ogrenci sınıfından bir nesne üretiliyor ki ben tetiklendim");
      this.ogrNo = no;
      this.adi = ad;
      this.erkekMi = cinsiyet;
  }
  

  void dersCalis(){

  }

  void uyu(){

  }

  void bilgileriYazdir(){
    print("Ogrenci numarasi : ${this.ogrNo} adi : ${this.adi} erkek mi : ${this.erkekMi}");
  }

} 