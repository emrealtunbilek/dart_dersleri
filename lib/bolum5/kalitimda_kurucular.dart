/**
 * Kalıtım özelliğini kullandığımızda kurucu method kullanımları anlatıldı
 * Bir sınıfı extend ettiğimizde alt sınıf nesnesi olusturulmadan önce üst sınıfın kurucusu çalısır.
 * super anahtar kelimesi ile üst sınıfın alanlarına erişip düzenleme yapabiliriz.
 */

main(List<String> args) {
   Kopek k1=new Kopek("labrador","siyah");
  // var k2=new Kopek();
   //var k3=Kopek();

   Kopek k2=Kopek.isimliKurucu("booe", "kızıl");
   Kopek k3=Kopek.isimliKurucu2("mavi");





}

class Hayvan{

  String renk;
  Hayvan(String renkkk)  {
    this.renk = renkkk;
    print("Hayvan sınıfından nesne üretildi rengi $renk");
  }

  Hayvan.isimliKurucu(){

  }

  

}

class Kopek extends Hayvan {

  String cins;

  Kopek(String cinsss, String renk) :super(renk)  {
    this.cins = cinsss;
    print("Köpek sınıfından nesne üretildi cinsi $cins rengi : $renk");
  }

  Kopek.isimliKurucu(String cinsss, String renk) : super(renk){
    this.cins = cinsss;
    print("Köpek sınıfından nesne üretildi cinsi $cins rengi : $renk");
  }

  Kopek.isimliKurucu2(String renk) : super.isimliKurucu(){
    print("Sadece renk alan ve üst sınıfı parametre almayan kurucu metot tetiklendi");
  }

 
}