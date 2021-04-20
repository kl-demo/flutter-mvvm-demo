import '../data/CounterRepositoryImpl.dart';
import '../data/source/CounterPrefsDataSource.dart';
import '../domain/Counter.dart';
import '../domain/CounterImpl.dart';

class DI {
  static Counter getCounter() {
    return CounterImpl(CounterRepositoryImpl(CounterPrefsDataSource()));
  }
}
