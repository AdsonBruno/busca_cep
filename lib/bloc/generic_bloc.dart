import 'dart:async';

class GenericBloc<T> {
  final StreamController _controller = StreamController<T>.broadcast();

  void dispose() => _controller.close();

  void addObject(Object T) => _controller.add(T);

  //pegando os dados e passando por um funil
  get streamns => _controller.stream;
}
