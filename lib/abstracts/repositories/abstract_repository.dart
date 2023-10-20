import 'package:template_web/abstracts/models/abstract_entity_model.dart';

abstract class AbstractRepository<T extends AbstractEntity> {
  Future<dynamic> get(String url);
  Future<dynamic> post(String url, T entity);
}
