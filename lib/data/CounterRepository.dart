import 'entity/CounterModel.dart';

abstract class CounterRepository {
  Future<void> save(CounterModel counterModel);

  Future<CounterModel> fetch();
}
