/*
String : Metinsel ifadeler için kullanılan veri türüdür.
Çift tırnak veya tek tırnak ile belirilebilir.
İki stringi birleştirmek için + operatörü kullanılır.
Birden fazla satır süren metinsel ifadeleri birleştirirken + kullanmasak da olur. 
  'ifade 1'
  'ifade 2' olarak kullanilabilir.
 
Interpolation : string ifade içinde baska bir string ifadeyi $ifade olarak kullabiliriz. Böylece + kullanmak gerekmez.
Eğer ifade birden fazla alana sahipse ${ifade.method} şeklinde kullanılır.
Ayrıca interpolation dieğer veri türleri için de geçerlidir.




*/ 

main(List<String> args) {
 
  String isim  = 'emre';
  String soyIsim = "altunbilek";
  String kurs = 'Dart\'ın Kullanımı';
  String kursTanimi = "Dart'ı ve Flutter'ı Öğreneceğiz";

  print(isim + " " + soyIsim);
  print("Interpolation : $isim $soyIsim");
  print("Benim adımda olan karakter sayisi ${isim.length}");
  print("Benim soyadımda olan karakter sayisi ${soyIsim.length}");

  print("Bu çok uzun bir yazı olacak. Bu çok uzun bir yazı olacak. Bu çok uzun bir yazı olacak." +
  "Bu çok uzun bir yazı olacak.Bu çok uzun bir yazı olacak.");

  int sayi1= 50;
  double sayi2 = 52.65;
  print("Aklımdan tuttugum birinci sayi : " + sayi1.toString() + " ikinci sayi :" + sayi2.toString());
  print("Aklımdan tuttugum birinci sayi $sayi1 ikinci sayi: $sayi2");

  double en = 10;
  double boy = 12;
  print("Eni $en boyu $boy olan dikdörtgenin alanı : ${en*boy}");


 


}