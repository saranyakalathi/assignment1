Future<String> future() async {
  await Future.delayed(Duration(seconds: 5));
  return 'i m working.....';
}

Stream<String> streamNewOne() {
  return Stream.periodic(
      Duration(seconds: 2), (int count) => 'i m working.....$count');
}

Stream<String> streamTwo() async* {
  int count = 0;
  await Future.delayed(Duration(seconds: 5));
  yield 'i m still working.....$count';
}

//future.value and future.error
Future<String> futureValue() {
  // return Future.value('Immediate result');
  return Future.error('Error');
}

void main() async {
  print('Syncing.....');
  // future();
  print(await future());

  print('Syncing.....');
  // streamNewOne();
  final subscription = streamNewOne().take(5).listen((value) {
    print('update: $value');
  });

  final subscription1 = streamTwo().take(5).listen((value) {
    print('update: $value');

    doubledStream.listen((int doubledNumber) {
      print('Doubled Number: $doubledNumber');
    });
  });

  futureValue()
      .then((value) => print('immediate result...$value'))
      .catchError((error) => print('it is an error'));
}

//•	Use the Stream.fromIterable method to convert a list of numbers to a stream and then use the map method to double each number in the stream.
List<int> num = [1, 2, 3, 4, 5];

Stream<int> doubledStream =
    Stream.fromIterable(num).map((int number) => number * 2);
