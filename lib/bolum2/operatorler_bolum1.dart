/**
 * programdaki karşılaştırma, matematiksel ve mantıksal işlemleri gerçekleştirirken kullanılan işaretlerdir.
 * 
 * Aritmetik operatörler +,-,/,* ve %
 *    matematikteki karşılıklarının aynısıdır, sadece % operatörü mod alma işine yarar 5%2 = 1 (5in 2 ile bölümünden kalanı verir)
 * 
 * Atama ve karşılaştırma operatörleri +=, -=, /= , *=, %=
 *    sayi += 5 ifadesi sayi = sayi + 5 ifadesine denk gelir
 * 
 * Karşılaştırma operatörleri <, > , <=, >= , ==, !=
 *    != eşit değilse durumunu gösterir
 * 
 * Mantıksal operatörler &&, ||, ! (değil, not) 
 *    && ve, || veya anlamına gelir. ! operatörü onundeki boolean değerin tersini verir. 
 *
 * arttırma azaltma operatörleri 
 *    ++ -> değişkeni 1 arttırır
 *    -- -> değişkeni 1 azaltır.
 *    Bu ifadelerin değişkenin sağında veya solunda olması önemlidir.
 *    sayi++ -> önce sayıyı kullan sonra 1 arttır, ++sayi ise önce sayiyi 1 arttır sonra kullan anlamına gelir.
 * 
 * işlem önceliği
 *    () -> önce parantez içi işletilir
 *    ++ ve -- Değişkenden önce gelenler
 *    * ve /
 *    + ve -
 *    = atama işlemi
 *    ++ ve -- Değişkenden sonra gelenler
 */

main(List<String> args) {
   double sayi1 = 9;
   double sayi2 = 6;

//ARITMETIK OPERATORLER
  print("$sayi1 + $sayi2 toplamı ${sayi1+sayi2}");
  print("$sayi1 - $sayi2 farkı ${sayi1-sayi2}");
  print("$sayi1 * $sayi2 çarpımı ${sayi1*sayi2}");
  print("$sayi1 / $sayi2 bölümü ${sayi1/sayi2}");
  print("$sayi1 % $sayi2 mod ${sayi1%sayi2}");

//ATAMA VE KARSILASTIRMA

double sayi3 = 5;
sayi3 = sayi3 + 5;
print(sayi3);

sayi3 += 5;  // sayi3 = sayi3 + 5
print(sayi3);

sayi3 %= 4;
print(sayi3);

//< , > , <= , >= , ==, !=

double sayi4 = 9;
double sayi5 = 5;

if(sayi4 <= sayi5){

}else{
  print("Sayi $sayi4 küçük ve eşit değildir $sayi5");
}

String isim = "emre";
String soyIsim = "emre";

if(isim != soyIsim){
  print("İsim soyisimle aynı değil");
}else{
  print("isim ile soyisim aynı değere sahip");
}

//Mantıksal operatörler
//&& , ||,  !

//java ve kotlin bilen ==> hem javayı hem kotlini bilecek, herhangi biri bilinmiyorsa şart sağlanmaz.
//java veya kotlin bilen ==> bu dillerden sadece birini veya her ikisini bilmesi gerekiyor
bool kosul1 = false;
bool kosul2 = false;

print(kosul1 && kosul2);
print(kosul1 || kosul2);
print(!kosul1);




}
