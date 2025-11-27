import 'package:dio/dio.dart';
import 'package:ocr_documents/data/models/ocr_read_images.dart';
import 'package:retrofit/retrofit.dart';

part 'ocr_rest_api.g.dart';

@RestApi(baseUrl: 'http://14.225.71.12:8001')
abstract class OcrRestAPI {

  factory OcrRestAPI(Dio dio, {String baseUrl}) = _OcrRestAPI;

  @POST('/api/v1/ocr/read_images')
  Future<Map<String, dynamic>?> ocrReadImages(
    @Body() OCRReadImages ocrReadImages,
  );
}
