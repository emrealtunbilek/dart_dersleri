/*
Tekrar eden işlemler için döngülerden faydalanırız. 3 temel döngü çeşidi vardır, yapılan işlemler aynı olsada
kullanım amaçları farklılık gösterir.

for : genellikle tekrar sayısı bilinen durumlarda kullanılır. yazım yöntemi şu şekildedir
  for(dongude_kullanilacak_kontrol_degiskeninin_baslangic_degeri ; dongunun_bitme_sarti; her_dongu_sonunda_yapilacak_islem)
  for(var i=0; i<10; i++)
Ayrıca gelişmiş for döngüsü ile de bir dizi veya listenin tüm elemanları okunabilir
for(String isim in isimlerListesi){
  print(isim);
}

while : bir koşul doğru oldugu sürece yapılacak işlemler için kullanılan döngü çeşidi
  while(sayac < 10){ 
    yapılacak islem;
    sayac ++;
    }

do - while : koşul sağlansın veya saglanmasın bir kere çalıştırılır ve sonra şart kontrol edilir.
do{
  print("emre");
  i++
}while(i<10);

Döngü kullanımlarında break ve continue anahtar kelimelerini kullanacağımız durumlar olabilir. Kısaca
break = çalışan döngüden çıkılmasını
continue = döngü çalısırken belli bir durumda tekrar basa dönmesini sağlar.

döngülerde label yani etiketler kullanılabilir. Böylece birden fazla döngüyü bu etiketler ile kolayca kontrol edebiliriz.
Etiketler ile beraber break ve continue kelimeleri kullanılabilir.
label : for(....){
  break label;
}
*/




main(List<String> args) {
  for(int i=0; i<=10; i++){
    if(i % 2 == 0){
      print("$i");
    }
  }


  List isimListesi=["emre","hasan","ali"];
  for(String gecici in isimListesi){
    print("$gecici");
  }

  for(int i=0; i<isimListesi.length; i++){
    print("Okunan eleman "+ isimListesi[i]);
  }

  int sayac=0;

  while(sayac < 3){
    print("Okunan sayaç değeri $sayac");
    sayac ++ ; 
  }

  int sayac2 = 1;
  do{
  print("Okunan sayac degeri: $sayac2");
  sayac2++;
  }while(sayac2<=5);

  for(int i=0; i<10; i++){

    if(i>5){
      break;
    }
    print("i değeri: $i");
  }

  for(int i=0; i<10; i++){

    if(i>5){
      print("continue i değeri: $i");

    }
    else{
      print("i değeri 5den küçük oldugu için herhangi bir işlem yapılmayacak");
      continue;
    }
   
  }

  distakiDongu:for(int i=1; i<=3; i++){

    for(int j=1; j<=3; j++){
     

      if(i==2){
        break distakiDongu;
      }
       print("$i * $j = ${i*j}");
    }


  }



}