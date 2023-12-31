import 'package:news_tdd/core/either/either.dart';

import 'package:news_tdd/core/failure/failure.dart';

import '../../../../core/use_cases/usecase.dart';
import '../entities/news.dart';
import '../repositories/news.dart';

class GetNewsUseCase implements UseCase<List<NewsEntity>,NoParams>{
  final NewsRepository _repository;
  GetNewsUseCase(NewsRepository repository) : _repository = repository;
  @override
  Future<Either<Failure, List<NewsEntity>>> call(NoParams params) {
    return _repository.getNews();
  }
}