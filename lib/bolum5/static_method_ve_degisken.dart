/*
Sınıflarımızda nesne üretmeden bazı değişkenlere ve methodlara erişmek isteyebiliriz. burada karsımıza static kavramı cıkar.

Static kullanarak nesne değil sınıf değişkenleri ve methodları olusturabilirz.
Bir sınıfta tanımlanan method ve değişkenlere erişirken mutlaka nesne üretmemiz gerekirdi. Ama biz bunları static olarak tanımlarsak
artık nesne üretmeden bu değerlere erişebilir ve kullanabiliriz. Artık onlar nesnelerin değil sınıfın method ve değişkenleridir.

ayrıca statik degiskenler kullanılana kadar deger almazlar, bellekte yer ayrılmaz
statik methodların içinde this anahtar kelimesi kullanılmaz.

 */

main(List<String> args) {

  var emre=Ogrenci();
  emre.ad="emre";
  Ogrenci.ogrSayisi ++;
  Ogrenci.ogrenciSayisiniYazdir();
  print("${emre.ad} ogrencisi olusturuldu  ve okul kodu : ${Ogrenci.okulKodu}");

  var hasan=Ogrenci();
  hasan.ad="hasan";
  Ogrenci.ogrSayisi++;
  Ogrenci.ogrenciSayisiniYazdir();
  print("${hasan.ad} ogrencisi olusturuldu  ve okul kodu : ${Ogrenci.okulKodu}");
  
}

class Ogrenci{

  String ad;

  static const int okulKodu = 1452;

  static int ogrSayisi = 0;

  static void ogrenciSayisiniYazdir(){
    print("Toplam ogrenci sayisi : $ogrSayisi");
   // adiniSoyle();//static olmayan method ve değişkenlere statik alan içerisinden erişilemez
   // print("Adı yazdır $ad");//static olmayan method ve değişkenlere statik alan içerisinden erişilemez
  }

  void adiniSoyle(){
    ogrenciSayisiniYazdir();//statik olmayan alanlar static method ve degiskenlere erişebilir.
    print("Benim adım $ad");
  }

}