import 'package:ocr_documents/data/models/ocr_read_images.dart';

abstract class OcrRepository {
  Future<Map<String, dynamic>?> ocrImages(
    OCRReadImages ocrReadImages,
  );
}