/**
 * Higher order functions : bir fonksiyonu parametre olarak alan veya geriye fonksiyon döndüren fonksiyonlardır.
 * Tabi ikisi aynı anda da yapabilir.
 * 
 */

main(List<String> args) {

    Function sayilariTopla = (s1,  s2) => print(s1 + s2);
    birMethod("Emre", sayilariTopla);

    var fonk =  birDigerMethod();
    print(fonk(9));

}

void birMethod(String isim, Function benimFonksiyonum) {
  print("Benim ismim : $isim");
  benimFonksiyonum(9,10);
}

Function birDigerMethod() {
  Function sayininKaresiniAl = (int s1) => s1 * s1;
  return sayininKaresiniAl;
}
