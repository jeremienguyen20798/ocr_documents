import 'package:ocr_documents/data/models/ocr_read_images.dart';
import 'package:retrofit/retrofit.dart';

@RestApi(baseUrl: 'http://14.225.71.12:8001/api/v1/ocr/read_images')
abstract class OcrRestApi {
  Future<Map<String, dynamic>?> ocrReadImages(
    @Body() OCRReadImages ocrReadImages,
  );
}
