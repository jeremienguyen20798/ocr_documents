import 'dart:convert';
import 'dart:typed_data';

class OCRReadImages {
  final String deviceId;
  final String source;
  final List<Uint8List> images;

  OCRReadImages(this.deviceId, this.source, this.images);

  factory OCRReadImages.fromJson(Map<String, dynamic> json) {
    return OCRReadImages(json['device_id'], json['source'], json['images']);
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> dataList = [];
    for (var data in images) {
      String base64String = base64Encode(data);
      final id = images.indexOf(data);
      dataList.add({"id": id, "bytes": base64String});
    }
    return {"device_id": deviceId, "source": source, "images": dataList};
  }
}
