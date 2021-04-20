import 'entity/CounterModel.dart';
import 'CounterRepository.dart';
import 'source/CounterDataSource.dart';

class CounterRepositoryImpl implements CounterRepository {
  final CounterDataSource _counterPrefsDataSource;

  CounterRepositoryImpl(this._counterPrefsDataSource);

  @override
  Future<void> save(CounterModel counterModel) async {
    _counterPrefsDataSource.save(counterModel);
  }

  @override
  Future<CounterModel> fetch() {
    return _counterPrefsDataSource.fetch();
  }
}
