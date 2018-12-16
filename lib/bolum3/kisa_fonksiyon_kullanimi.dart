/*

Kısa method Fat Arrow : tek satırlık statement içeren methodlarımızı kısa bir şekilde göstermeye yarar.
Bu kullanımda süslü parantez ve return anahtar kelimeleri kullanılmaz.

 */

void main(List<String> args) {
  sayilariTopla();
  int fark = sayilariCikar(15, 4);

  print("fark $fark");

  print("çarpım : "+ sayilariCarp(12,6).toString());

  print("Büyük olan sayı : "+maxOlaniBul(14,9).toString());
  
  print("Küçük olan sayı : "+minOlaniBul(14,19).toString());

  
}

void sayilariTopla(){

  int sayi1=10, sayi2=5;
  print("toplam : ${sayi1 + sayi2}");

}

int sayilariCikar(int s1, int s2){
  return (s1 - s2) ;
}

int sayilariCarp(int s1, int s2) => s1 * s2; 
/*
int maxOlaniBul(int s1, int s2){

  if(s1 < s2){
    return s2;
  }else {
    return s1;
  }
}*/

int maxOlaniBul(int s1, int s2) => (s1 < s2) ? s2 : s1;

minOlaniBul(int s1, int s2) => (s1 < s2) ? s1 : s2;