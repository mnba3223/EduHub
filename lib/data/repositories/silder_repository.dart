import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/image_slider.dart';
import 'package:edutec_hub/data/network/apis/student_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';

class ImageSliderRepository {
  final StudentApi _api;
  final bool useMock;

  ImageSliderRepository({this.useMock = true})
      : _api = StudentApi(DioClient().dio);

  Future<List<ImageSlider>> getSliders() async {
    if (useMock) {
      await Future.delayed(const Duration(milliseconds: 500));
      return _getMockSliders();
    }

    try {
      final response = await _api.getSliders();
      if (response.success) {
        return response.data ?? [];
      } else {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
          errorDetails: response.data,
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  Future<List<ImageSlider>> getSlidersByRole(String role) async {
    if (useMock) {
      await Future.delayed(const Duration(milliseconds: 500));
      return _getMockSliders();
    }

    try {
      final response = await _api.getSlidersByRole(role);
      if (response.success) {
        return response.data ?? [];
      } else {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
          errorDetails: response.data,
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  List<ImageSlider> _getMockSliders() {
    return [
      ImageSlider(
        id: 1,
        imageData: "base64...", // 模擬的base64圖片數據
        displayOrder: 1,
        createdAt: DateTime.now(),
      ),
      ImageSlider(
        id: 2,
        imageData: "base64...", // 模擬的base64圖片數據
        displayOrder: 2,
        createdAt: DateTime.now(),
      ),
      // 可以添加更多模擬數據
    ];
  }
}
