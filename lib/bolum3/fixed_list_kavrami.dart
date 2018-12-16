/**
 * List ikiye ayrılır
 *  1-Sabit uzunluklu
 *  2-Büyüyen listeler
 * 
 * Diğer dillerde dizi olarak bilinen yapılar dart dilinde sabit uzunluklu liste olarak kullanılır.
 * List<int> numaralar = List(10); //10 eleman içeren sabit uzunluklu liste yani dizi.
 * Index numaraları 0'dan baslar yani listenin ilk elemanına erişmek için 0. indexine bakılır. numaralar[0] diyerek..
 * 
 */
main(List<String> args) {

//varsayılan değerlerle diziyi olusturmak için filled methodu kullanılabilir
  List<int> numaralarim=List.filled(10, 9);
  numaralarim[0] = 3;
  numaralarim[1] = 6;
  numaralarim[2] = 7;
  numaralarim[9] = 122;
 // numaralarim[3] = 8;

  print("index 0:    "+numaralarim[9].toString());

  var isimlerim=List(3);
  isimlerim[0] ="emre";
  isimlerim[1] = "hasan";
  isimlerim[2] = "ali";

  print("isim : " + isimlerim[1]);

  //Listeleri gezmek
  for(String okunanIsim in isimlerim){
    print("Okunan isim : $okunanIsim");
  }
  print(" ");
  for(int okunanSayi in numaralarim){
    print("Okunan numara : $okunanSayi");
  }

  for(int i = 0; i < numaralarim.length; i++){
    print("$i indexindeki sayi: ${numaralarim[i]}");
  }

  print("Lambda");
  numaralarim.forEach((sayi) => print(sayi));

  
  
}