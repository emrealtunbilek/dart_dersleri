/*num : tamsayı veya ondalıklı bir ifadeyi saklayabilir
int = tamsayıları saklarken kullanılan veri türüdür 
hexadecimal değerleri de saklayabilir. 0xAABBCC

double = ondalıklı ifadeler için kullanılan veri türüdür. 
exponents değerli saklayabilir, 1.42e5

var anahtar kelime ile de tamsayı veya ondalıklı ifade saklanabilir.var olarak int deger atandıysa sonrasında double değer atanamaz
varsayılan değerleri null'dır. Yani bu değişkenlere bir veri atamadan kullanırsak null sonucunu alırız.

boolean = true/false değerleri alır
*/

main(List<String> args) {
  
  int yas = 30 ;
  print(yas);
  print("yas");

  yas = 31;
  print(yas);

  yas = 30.6.toInt();
  print(yas);

  double kilo = 82.6;
  print(kilo);

  kilo = 82;
  print(kilo);

  num sicaklik = 82;
  sicaklik = 82.5;
  print(sicaklik);

  int sayi1;
  print(sayi1);

  int hexadecimalSayi = 0xAABBCC;
  print(hexadecimalSayi);

  double exponentsSayi = 1.42e5;
  print(exponentsSayi);

  var sayi2 = 50;
  print(sayi2);
  sayi2 = 60;
  //sayi2 = 10.65;

  var ondalikSayi = 50.60;
  ondalikSayi = 50;
  print(ondalikSayi);

  bool ergenMi = false;
  print(ergenMi);

  var yetiskinMi = true;
  print(yetiskinMi);

   
}