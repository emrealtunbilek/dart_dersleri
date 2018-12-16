/**
 * Dinamik olarak büyüyen küçülen koleksiyonlarımız varsa sabit uzunluklu listeler yerine
 * buyuyen listeleri kullanırız. Bu listelere varsayılan olarak boyut vermemiz gerekmez.
 * 
 * Tanımlanması sabit uzunluklu dizilere benzer sadece burada listenin boyutunu belirtmeyiz.
 * add eleman ekler, 
 * clear tüm elemanları siler, 
 * remove verilen elemanı siler,
 * removeAt belirtilen indextekielemanı siler
 * Ayrıca [] kullanarak belli bir indexteki elemanı güncelleyebilirz.
 */
main(List<String> args) {
  List<int> numaralarim = List();
  numaralarim.add(5);
  numaralarim.add(15);
  numaralarim.add(15);
  numaralarim.add(45);
  numaralarim.add(12);
  numaralarim.add(85);
  numaralarim.add(74);
  numaralarim.add(99);

  //numaralarim[1] = 8;

  print("numara : ${numaralarim[numaralarim.length - 1]}");
  print("Listedeki eleman sayisi ${numaralarim.length}");
  //numaralarim.clear();

  for (int s in numaralarim) {
    print("sayi : $s");
  }
  print("    ************************************ ");
  numaralarim.remove(15);
  for (int s in numaralarim) {
    print("sayi : $s");
  }
  print("Cleardan sonra Listedeki eleman sayisi ${numaralarim.length}");

  print("    ************************************ ");

  numaralarim.removeAt(6);
  for (int s in numaralarim) {
    print("sayi : $s");
  }

  List<String> sehirler=["ankara", "izmir","bursa"];
  sehirler.add("van");
  sehirler.add("malatya");
  sehirler.add("yozgat");

  for(String sehir in sehirler){
    print("Sehir : $sehir");
  }
}
