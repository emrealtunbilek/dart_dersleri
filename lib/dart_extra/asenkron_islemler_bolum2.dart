import 'dart:async';
import 'dart:math';


void main() async {
  var fun1 = (int v) async => v + 1;
  var fun2 = (int v) async => v - 1;
  var fun3 = (int v) async => v * 10;

  var value = 10;
  value = await fun1(value);
  value = await fun2(value);
  value = await fun3(value);
  print(value);

}

void futureOlustur() {
  new Future(() {
    var sum = 0;
    for (var i = 0; i < 500000000; i++) {
      sum += i;
    }
    return sum;
  }).then(print);
}

void errorVeWhenCompleted() {
  var random = new Random();
  var future = new Future.delayed(new Duration(seconds: 16), () {
    if (random.nextBool()) {
      return 100;
    } else {
      throw 'HATA CIKTI';
    }
  }).timeout(new Duration(seconds: 15));

  var future2 = future.then(print);
  var future3 = future2.catchError(print);
  var future4 = future3.whenComplete(() {
    print('ıslem hatayla veya basarıyla tamamlandı');
  });
}

void zincirlenmisFuture() {
  var future = new Future.value('a').then((v1) {
    //value a ==> v1 içeriğinde a var
    return new Future.value('$v1 b').then((v2) {
      //value a b ==> v2 içeriğinde a b
      return new Future.value('$v2 c').then((v3) {
        //value a b c ==> v3 içeriğinde a b c
        return new Future.value('$v3 d'); //value a b c d
      });
    });
  });
  future.then((sonDeger) => print("zincirin son işlemi : $sonDeger"),
      onError: print); //future.then ilk parametre olan print içinde ==> a b c d
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
