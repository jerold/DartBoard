part of dartboard;

class Action<T> {
  StreamController<T> _controller = new StreamController<T>.broadcast();

  void call([T event]) {
    _controller.add(event);
  }

  StreamSubscription<T> listen(Function callback) {
    return _controller.stream.listen(callback);
  }

  Future close() async {
    return _controller.close();
  }
}