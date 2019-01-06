import 'dart:io';
import 'dart:async';

void main(List<String> args) {
  print("Program başladı");

  dosyaIceriginiGoster();

  print("Program bitti!!!");
}


dosyaIceriginiGoster()  {

/*
  print("Dosya iceriği gösterilecek...");
  String dosyaIcerigi= await dosyaIndir();
  print("DOSYA ICERIGI : $dosyaIcerigi");
  */

   print("Dosya iceriği gösterilecek...");
  Future<String> dosyaIcerigi= dosyaIndir();
  dosyaIcerigi.then( (sonuc) =>  print("DOSYA ICERIGI : $sonuc") );
  

}


Future<String> dosyaIndir(){

  print("Dosya Indırme işlemi başladı...");
  //sleep(Duration(seconds: 15));

  Future<String> sonuc = Future.delayed(Duration(seconds: 5), (){
      return "İndirilen dosya içeriği";
  });

  print("Dosya Indırme işlemi bitti...");
  return sonuc;

  

}