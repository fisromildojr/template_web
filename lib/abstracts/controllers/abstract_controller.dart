import 'package:template_web/abstracts/models/abstract_entity_model.dart';
import 'package:template_web/abstracts/repositories/abstract_repository.dart';
import 'package:template_web/services/http_service.dart';

abstract class AbstractController<T extends AbstractEntity>
    implements AbstractRepository<T> {
  final HttpService httpService = HttpService();

  @override
  Future<dynamic> get(String url) async {
    try {
      final response = await httpService.get(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization':
              'x2GKG5eeIXMxuRNHSL4HzbtaQGPDJJSTF65Y4oNi0Pe9oOn9qHAstAK9',
        },
      );
      return response.body;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> post(String url, T entity) async {
    try {
      final response = await httpService.post(url, entity);
      return response.body;
    } catch (e) {
      rethrow;
    }
  }
}
