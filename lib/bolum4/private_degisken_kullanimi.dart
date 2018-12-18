import 'Ogrenci.dart';

main(List<String> args) {
  
  var emre=Ogrenci(10, "emre",true);

 print( emre.ogrenciNoOku);
 emre.ogrenciNoAta = 52;

 emre.bilgileriYazdir();


}