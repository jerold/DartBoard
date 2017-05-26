part of dartboard;

class ModelReference<T> {
  String _uid;
  String uid() => _uid;

  T _value;
  T value() => _value;

  T _defaultValue;
  T defaultValue() => _value;

  bool _isClosed = true;
  bool isClosed() => _isClosed;

  bool isOpen() => !_isClosed;

  final StreamController<T> _didChange = new StreamController<T>.broadcast();
  Stream<T> get didChange => _didChange.stream;

  final Completer _wasDestroyed = new Completer();
  Future get wasDestroyed => _wasDestroyed.future;

  // Provide state for the Reference and its changes.
  void open(String uid) {
    if (isOpen()) close();
    _uid = uid;
    _isClosed = false;
    onOpen(uid);
  }

  void changevalue(T newValue) {
    _value = newValue;
    _didChange.add(_value);
  }

  void setDefaultValue(T newValue) {
    _defaultValue = newValue;
  }

  // Stop providing state for a given reference.
  void close() {
    _value = _defaultValue;
    _uid = null;
    _isClosed = true;
    onClose();
  }

  // Close all streams and subs.
  void destroy() {
    close();
    _didChange.close();
    _wasDestroyed.complete();
  }

  void onOpen(String uid) {}

  void onClose() {}

  void onDestroy() {}
}

abstract class ModelReferenceFactory<T> {
  ModelReference<T> newModelReference();
}
