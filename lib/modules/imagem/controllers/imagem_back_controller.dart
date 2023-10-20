import 'dart:developer';

import 'package:template_web/abstracts/controllers/abstract_controller.dart';
import 'package:template_web/modules/imagem/models/imagem_model.dart';

class ImagemBackController extends AbstractController {
  Future<Imagem?> listarImagens(int pageNumber, String query) async {
    try {
      var response = await super.get(
          'https://api.pexels.com/v1/search?query=cachorro&page=$pageNumber&query=$query');
      return Imagem.fromJson(response);
    } catch (e) {
      log(e.toString());
    }
  }
}
