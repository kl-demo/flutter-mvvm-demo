import '../entity/CounterModel.dart';

abstract class CounterDataSource {
  Future<void> save(CounterModel counterModel);

  Future<CounterModel> fetch();
}
