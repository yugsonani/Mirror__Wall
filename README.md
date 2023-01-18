# mirror

A new Flutter project.

Mirror Wall Project 

4th task:
 Write a Dart program which illustrates Future class with specific amount of duration. Also implement async and await keyword by using proper example.:-
```Dart
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
  ```
                          
                          
application video:- 



https://user-images.githubusercontent.com/88942744/212329102-33593b0a-1117-49c2-9f80-ea17922b04ae.mp4

