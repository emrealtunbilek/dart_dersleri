/*
ternary if yazılımı ile kısa bir şekilde şart belirten ifafeler yazılabilir. Kullanımı :
koşul ? expression1 : expression2
eğer koşul doğru ise expression1 değeri, yanlış ise expression2 değeri kullanılır.

kısa kullanım ile değişkenlerin null değerde olup olmadıkları da kontrol edilebilir
expression1 ?? expression2
burda expression1 eğer null değilse kullanılır, eğer null ise expression2 kullanılır.

 */

main(List<String> args) {
  
int sayi1 = 5;
var sayi2 = 4;
int kucukSayi;
/*
if(sayi1 < sayi2){
  kucukSayi = sayi1;
} else {
  kucukSayi = sayi2;
}

print("Küçük olan sayi $kucukSayi");
*/
sayi1 < sayi2 ? kucukSayi=sayi1 : kucukSayi = sayi2;
print("Küçük : $kucukSayi");

kucukSayi = (sayi1 < sayi2) ? sayi1 : sayi2 ;
print("küçük : $kucukSayi");

String isim;
String soyIsim="Altunbilek";
String mesaj;


mesaj = isim ?? soyIsim ;

print("Merhaba $mesaj");



}