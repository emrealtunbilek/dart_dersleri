import 'dart:async';
import 'dart:math';

void main() {


 zincirlenmisFuture();
}

void zincirlenmisFuture() {
  var future = new Future.value('a').then((v1) {    //value a ==> v1 içeriğinde a var
    return new Future.value('$v1 b').then((v2) {    //value a b ==> v2 içeriğinde a b
      return new Future.value('$v2 c').then((v3) {  //value a b c ==> v3 içeriğinde a b c
        return new Future.value('$v3 d');           //value a b c d 
      });
    });
  }); 
  future.then((sonDeger)=> print("zincirin son işlemi : $sonDeger"), onError: print);               //future.then ilk parametre olan print içinde ==> a b c d
}



void futureKullanimi() {
  var random = new Random();
  Future<int> future = new Future.delayed(new Duration(seconds: 3), () {
    if (random.nextBool()) {
      return 100;
    } else {
      throw 'verdıgınız urle ulasılamadı HATA ALINDI!';
    }
  });

  future.then((value) {
    print('completed with value $value');
  }, onError: (error) {
    print('completed with error $error');
  });
}

