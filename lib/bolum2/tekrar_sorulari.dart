/**
 * SORU 1 : 3 tane double değişken olusturup bunların ortalamasını yazdıran programı yazınız
 * SORU 2 : Kenarlarını girdiğiniz üçgenin çeşidini yazdıran programı yazınız.
 * SORU 3 : Vize ve final notlarını alıp dersi geçip geçmediğini bulan programı yazınız
 * (geçme notu alt değeri = 50, vizenin %40 finalin %60ı alınır.)
 * 
 * SORU 4: Kendi adınızı ekrana 5 kere yazdıran uygulamayı tüm döngü ifadeleriyle yazınız.
 * SORU 5: 1'den 100'e kadar olan ve 15 ile tam bölünen sayıların karelerini ekrana yazdırınız. 
 * SORU 6: Tanımlanan int bir sayının faktoriyelini bulan uygulamayı yazınız.
 */

main(List<String> args) {
//CEVAP 1
/*
  double sayi1=12, sayi2=14,sayi3=15;
  print("Girilen $sayi1 , $sayi2  ve $sayi3 sayılarının ortalaması ${((sayi1 + sayi2 + sayi3)/3)}");
*/

//CEVAP 2
/*
  int kenar1=6, kenar2=6, kenar3=6;

  if((kenar1 == kenar2) && (kenar1 == kenar3)){
    print("Kenarlarını girdiğiniz üçgen eşkenardır");
  }else if((kenar1 != kenar2) && (kenar1 != kenar3) && (kenar2 != kenar3)){
    print("Kenarlarını girdiğiniz üçgen çeşitkenardır");
  }else{
    print("Kenarlarını girdiğiniz üçgen ikizkenardır");
  }
*/

//CEVAP 3:
/*
  double vizeNotu = 40;
  double finalNotu = 50;
  double hesaplananNot = 0;

  hesaplananNot = ((vizeNotu * 40) + (finalNotu * 60))/100 ;
  if(hesaplananNot >=50){
    print("Tebrikler, $hesaplananNot ile bu dersi geçtiniz");
  }else{
    print("Malesef, $hesaplananNot ile bu dersten kaldınız");
  }
*/

//CEVAP 4
/*
  for (int i = 1; i <= 5; i++) {
    print("$i.inci döngüde ismim : emre altunbilek");
  }

  int kontrol = 0;
  while (kontrol < 5) {
    print("${kontrol+1}.inci döngüde ismim : emre altunbilek");
    kontrol++;
  }

int kontrol1=0;
  do{
   print("${kontrol1+1}.inci döngüde ismim : emre altunbilek");
   kontrol1++;
  }while(kontrol1<5);
  */

  //CEVAP 5:
  /*
  for(int i=1; i<100; i++){

    if((i % 3 == 0) && (i % 5 ==0)){
      print("15e tam bölünebilen $i nin karesi =  ${i * i}");
    }

  }
  */

  //CEVAP 6:
  int sayi=6;
  int sonuc=1;
  int sayac=1;

  while(sayac <= sayi){
    sonuc = sonuc * sayac;
    sayac++;
  }

  print("girdiğiniz $sayi sayısının faktoriyeli : $sonuc");


}
