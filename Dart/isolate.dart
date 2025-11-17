import 'dart:isolate';

void heavyTask(SendPort sendPort) {
  int sum = 0;
  for (int i = 0; i < 1000000000; i++) {
    sum += i;
  }
  // Send result back to main isolate
  sendPort.send(sum);
}

void main() async {
  // 1️⃣ Create a ReceivePort to get messages from the new isolate
  final receivePort = ReceivePort();

  // 2️⃣ Spawn a new isolate and pass the sendPort of our receivePort
  await Isolate.spawn(heavyTask, receivePort.sendPort);

  // 3️⃣ Listen for data from the isolate
  receivePort.listen((message) {
    print("Sum: $message");
  });

  print("Main isolate still running...");
}
