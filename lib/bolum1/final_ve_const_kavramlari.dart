/*
bazı durumlarda değişmez değerlere ihtiyaç duyabiliriz. bir değer atadıktan sonra bu değerin
sonradan değiştirilmesini istemiyorsak final ve const anahtar kelimeleri ile değişkenlerimi tanımlarız.

kullanım ve amaçları aynı olan bu iki kavramın farkı :
final : değer atandıktan sonra, bellekte yer ayrılması sadece erişilirse olur
const : bu da aslında final'dir ama derleme anında değer atanır ve bellekte yeri ayrılır, hiç kullanılmasa bile... 

burada veri türü belirtilebilir ama isteğe bağlıdır, yani belirtilmese de olur.

En önemli fark ise instance değişkenler sadece final olarak tanımlanır, const ile tanımlanamaz.
const ile tanımlanması için static const olmalıdır.

 */
main(List<String> args) {
  
  final String sehirAdi = "Ankara";
  //sehirAdi = "Istanbul";

  const PI = 3.14;
  //PI = 6.5;

  print(sehirAdi);
  print(PI);

}
/*
class Ogrenci{

  final ogrenciAdi ="emre";
  static const numara = 52;


}*/