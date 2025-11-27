import 'package:ocr_documents/data/models/ocr_read_images.dart';
import 'package:ocr_documents/data/datasource/remote/ocr_rest_api.dart';
import 'package:ocr_documents/domain/repository/ocr_repository.dart';

class OcrRepositoryImpl extends OcrRepository {

  OcrRestAPI ocrRestAPI;

  OcrRepositoryImpl({required this.ocrRestAPI});

  @override
  Future<Map<String, dynamic>?> ocrImages(OCRReadImages ocrReadImages) {
    return ocrRestAPI.ocrReadImages(ocrReadImages);
  }
  
}