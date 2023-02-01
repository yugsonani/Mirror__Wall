Mirror_Wall
Project =4


 import 'dart:async';
  import 'dart:io';
 // int j=0;
  Future<void> doSomethingWithDelay(int duration) async {
    print('number: ');
      int? j = int.parse(stdin.readLineSync()!);
    await Future.delayed(Duration(seconds: duration));
    for(int i = 0 ; i< 7; i++){
        var stars='';
          for( j = (7-i); j! > 1 ;j--) {
            stars += ' ';
          }
        for( j = 0; j! <= i ;j++){
            stars += '* ';
      }
        print(stars);
  }

  void main() {
    
    doSomethingWithDelay(5);
    print('Sorry for the delay cause my brain work slow');
  }
                          
 Gif:                         

https://user-images.githubusercontent.com/121219334/215967339-c78d473b-052e-4660-ae40-1facd6640840.mp4

