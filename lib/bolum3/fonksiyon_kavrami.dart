/*
Fonksiyon - method kavramı sayesinde problemlerimizi küçük alt problemlere parçalayarak çok daha okunaklı, hata bulması kolay
uygulamalar geliştirebiliriz.

Bir uygulama geliştirirken, bir problemi çözerken o problemde belli bir işi yapan kodları methodlara bölmemiz gerekir.
Bunun için method veya fonksiyon oluşturabiliriz.

Methodlar parametre alabilir veya herhangi bir parametreye sahip olmayabilir.
Methodlar geriye bir değer dönderebilir. Değer döndürmeyen method tanımlarının başına void yazılır.
Dart dilinde return ve method geri döndürme veri tipi değeri opsiyoneldir, yani belirtmek zorunda değiliz.(Belirtilmesi önerilir)



 */

void main(List<String> args) {
  cevreHesapla();
  int hesaplananAlanDegeri = alanHesapla(); 
  print("Alan değeri : $hesaplananAlanDegeri");
  print("Alan değeri :"+ alanHesapla().toString());

  int hesaplananHacim = hacimHesapla(8,10,12);

  print("hesaplanan hacim : $hesaplananHacim");
}

void cevreHesapla() {
  int en = 8, boy = 12, cevre = 0;
  cevre = (en + boy) * 2;
  print("Çevre : $cevre");
}

int alanHesapla() {
  int en = 8, boy = 12, alan = 0;
  alan = en * boy ;

  return alan;
}

int hacimHesapla(int en, int boy, int yukseklik){

  return en * boy * yukseklik;
}

/*
//geriDonusTipi methodAdi(){
  //method içeriği

}
*/