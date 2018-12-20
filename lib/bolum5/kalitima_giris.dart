/**
 * KALITIM INHERITANCE : İki adet sınıf düşünelim. Birinin adı Ebeveyn diğerinin adı Çocuk olsun. 
 * Ebeveyn sınıfının özelliklerini anne+baba’nın işlevleri oluşturmaktadır. 
 * Çocuk ise bazı özellikler bakımından anne babaya benzerlik göstermektedir. (saç rengi, göz rengi) 
 * Bunların yanından çocukta anne ve babasında olmayan bazı özelliklerde yer alabilir.  ( Anne baba kısa boylu iken çocuğun uzun olması). 
 * Ebeveyn gibi üst sınıflara süper sınıflar denir.  Bunlardan türetilen alt sınıflara alt sınıflar denir. 

Dart da kalıtım bir sınıfın kendine ait özellikleri başka bir sınıfa aynen aktarması ya da bazı özellikleri diğer sınıflara izin vermesidir.

Extends deyimi: bir sınıfa ait özelliklere başka bir sınava miras almak için kullanılır.

Her alt sınıf doğrudan bir tane süper sınıfa sahip olabilir. 
Her alt sınıf süper sınıfın özelliklerini taşır.  
Süper sınıftan alınan bazı özellikler değiştirilebilir. Aynen kullanılmak zorunda değildir. 
Kalıtımın basamakları çok uzun olmamalıdır.  Bu kötü tasarıma neden olur.

Kalıtımın Faydaları
Daha önceden yazılmış kod parçacıkları tekrar tekrar yazılmadan başka sınıflarda kullanılabilir.  
if, else, switch gibi kontrol ifadelerinin oolduğu sınıflar kötü tasarım örnekleridir. Bunun yerine kalıtım tercih edilmelidir.

Method overriding : üst sınıftaki değişken veya methodların alt sınıf tarafından değiştirilmesidir.
 */

main(List<String> args) {

  var kopek1=Kopek();
  kopek1.renk ="siyah";
  kopek1.cins="labrador";
  print("renk: ${kopek1.renk}");
  kopek1.yemekYe();
  kopek1.havla();

  var kedi1=Kedi();
 // kedi1.renk="beyaz";
  kedi1.yas = 2;
  print("renk: ${kedi1.renk}");
  kedi1.yemekYe();
  kedi1.miyavla();

  


}

class Hayvan extends Object {
  String renk="sari";
  void yemekYe() {
    print("Hayvan yemek yiyor");
  }
}

class Kedi extends Hayvan {
  int yas;

  void miyavla() {
    print("Miyaaaaavvvvv");
  }

  @override
    void yemekYe() {
      print("Kedi yemek yiyor");
    }

}

class Kopek extends Hayvan {
  String cins;

  void havla() {
    print("Hav hav");
  }

  @override
    void yemekYe() {
      print("Kopek yemek yiyor");
    
    }

  
}
