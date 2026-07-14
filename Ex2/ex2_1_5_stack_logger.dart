mixin Loggable {
  void log(String msg) {
    print('[${DateTime.now()}] $msg');
  }
}

class Stack<T> with Loggable {
  final List<T> _items = [];

  void push(T item) {
    _items.add(item);
    log('Pushed: $item');
  }

  T? pop() {
    if (_items.isEmpty) {
      log('Pop failed: stack is empty');
      return null;
    }
    T removed = _items.removeLast();
    log('Popped: $removed');
    return removed;
  }

  bool get isEmpty => _items.isEmpty;
  int get size => _items.length;
}

void main() {
  Stack<int> numbers = Stack<int>();
  numbers.push(1);
  numbers.push(2);
  numbers.push(3);
  numbers.pop();
  print('Current size: ${numbers.size}');

  Stack<String> words = Stack<String>();
  words.push('GoodMorning');
  words.push('GoodBye');
  words.pop();
  words.pop();
  words.pop();
}