import 'dart:async';
void main() {
  StreamController<String> controller = StreamController<String>();

  controller.stream.listen(
    (data) => print("Notification: $data"),
    onError: (err) => print("Error: $err"),
    onDone: () => print("Streaming end"),
  );

  controller.add("New massage");
  controller.add("Profile update");
  controller.add("Purchase complete");
  controller.close();
}