import '../data/CounterRepository.dart';
import '../data/entity/CounterModel.dart';
import '../domain/Counter.dart';

class CounterImpl implements Counter {
  final CounterRepository _counterRepository;

  CounterImpl(this._counterRepository);

  @override
  Future<void> setNumberOfClicks(int numberOfClicks) async {
    _counterRepository.save(
        CounterModel((await _counterRepository.fetch()).numberOfClicks + 1));
  }

  @override
  Future<int> getNumberOfClicks() async {
    return (await _counterRepository.fetch()).numberOfClicks;
  }
}
