/**
 * Exception Istisna : İstisna, programın çalışması sırasında ortaya çıkan bir sorundur. 
 * Bir istisna, bir çok değişik nedenden dolayı meydana gelebilir.
 * 
 * Bir metot, try ve catch anahtar kelimelerinin kombinasyonunu kullanarak bir istisnayı yakalayabilir. 
 * Try/catch bloğu, istisna oluşması muhtemel kodun etrafına yerleştirilir.
 * Ayrıca on ExceptionName{} blogunu cıkacak istisnanın adını biliyorsak kullabiliriz.
 * Finally blogu istisna çıksın çıkmasın calısacak olan method blogudur.
 * 
 */

main(List<String> args) {
  
  try{
    paraYatir(-60);
  }catch(e){
    print("hata: "+e.hataGoster());
  }
 

  /*
  print("olası hatanın adı veya sebebi biliniyorsa");
  try {
    int sonuc = 12 ~/ 0;
    print("Bölüm : $sonuc");
  } on IntegerDivisionByZeroException {
    print("bölen 0 olamaz");
  }

  print("\nHatanın sebebi veya adı bilinmiyorsa");
  try{
    int sonuc = 12 ~/ 0;
    print("Bölüm : $sonuc");
  }catch(e){
    print("Hata çıktı $e");
  }

  print("\nHatanın sebebi veya adı bilinmiyorsa ve stacktrace'i görmek istiyorsak");
  try{
    int sonuc = 12 ~/ 0;
    print("Bölüm : $sonuc");
  }catch(e, s){
    print("Hata çıktı $e ve stack trace : $s");
  }

   print("\nFinally blogu");
  try{
    int sonuc = 12 ~/ 1;
    print("Bölüm : $sonuc");
  }catch(e, s){
    print("Hata çıktı $e ve stack trace : $s");
  }finally{
    print("Finally blogu çalıstı");
  }
*/


}

paraYatir(int miktar){
  if(miktar < 0){
    throw new ParaYatirmaException();
  }else  print("Hesabınıza $miktar TL yatırıldı");
}

class ParaYatirmaException implements Exception{

  String hataGoster() => "Negatif sayı girdiniz";
  
}