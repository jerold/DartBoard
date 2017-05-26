part of dartboard;

typedef BuiltMap<String, Object> GetContainer();

typedef Object GetData(firebase.QueryEvent event);

typedef firebase.DatabaseReference GetReference(String uid);

// Factories

class SingleModelReferenceFactory<T extends Object> implements ModelReferenceFactory<T> {
  final GetReference _getRef;
  final GetData _getData;

  SingleModelReferenceFactory(GetReference getRef, GetData getData) :
      _getRef = getRef,
      _getData = getData;

  @override
  SingleModelReference<T> newModelReference() => new SingleModelReference<T>(_getRef, _getData);
}

class MappedModelReferenceFactory<T extends BuiltMap<String, Object>> implements ModelReferenceFactory<T> {
  final GetReference _getRef;
  final GetData _getData;
  final GetContainer _getContainer;

  MappedModelReferenceFactory(GetReference getRef, GetData getData, GetContainer getContainer) :
      _getRef = getRef,
      _getData = getData,
      _getContainer = getContainer;

  @override
  MappedModelReference<T> newModelReference() => new MappedModelReference<T>(_getRef, _getData, _getContainer());
}

// Model References

class SingleModelReference<T extends Object> extends ModelReference<T> {
  final GetReference _getRef;
  final GetData _getData;

  StreamSubscription _sub;

  SingleModelReference(GetReference getRef, GetData getData) :
      _getRef = getRef,
      _getData = getData;

  @override
  void onOpen(uid) {
    _sub = _getRef(uid).onValue.listen((firebase.QueryEvent event) => _entityChanged(event, uid, _getData));
  }

  @override
  void onClose() {
    _sub?.cancel();
  }

  _entityChanged(firebase.QueryEvent event, String uid, GetData getData) {
    changevalue(getData(event));
  }
}

class MappedModelReference<T extends BuiltMap<String, Object>> extends ModelReference<T> {
  final GetReference _getRef;
  final GetData _getData;

  List<StreamSubscription> _subs = new List<StreamSubscription>();

  MappedModelReference(GetReference getRef, GetData getData, T container) :
      _getRef = getRef,
      _getData = getData
  {
    setDefaultValue(container);
    changevalue(container);
  }

  @override
  void onOpen(uid) {
    firebase.DatabaseReference ref = _getRef(uid);
    _subs.add(ref.onChildAdded.listen((firebase.QueryEvent event) => _entityAdded(event, uid)));
    _subs.add(ref.onChildChanged.listen((firebase.QueryEvent event) => _entityChanged(event, uid)));
    _subs.add(ref.onChildRemoved.listen((firebase.QueryEvent event) => _entityRemoved(event, uid)));
  }

  @override
  void onClose() {
    _subs.forEach((sub) => sub.cancel());
    _subs.clear();
  }

  _entityAdded(firebase.QueryEvent event, String uid) {
    changevalue(value().rebuild((b) => b[event.snapshot.key] = _getData(event)));
  }

  _entityChanged(firebase.QueryEvent event, String uid) {
    changevalue(value().rebuild((b) => b[event.snapshot.key] = _getData(event)));
  }

  _entityRemoved(firebase.QueryEvent event, String uid) {
    changevalue(value().rebuild((b) => b.remove(event.snapshot.key)));
  }
}
