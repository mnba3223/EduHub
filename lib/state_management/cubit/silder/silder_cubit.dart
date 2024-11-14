import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:edutec_hub/data/repositories/silder_repository.dart';
import 'package:edutec_hub/state_management/cubit/silder/slider_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderCubit extends Cubit<SliderState> {
  final ImageSliderRepository _repository;
  bool _isLoading = false; // 添加加载标志
  SliderCubit({required ImageSliderRepository repository})
      : _repository = repository,
        super(const SliderState());

  Future<void> loadSliders({String? role}) async {
    // 如果已经有数据或正在加载，则不重复请求
    if (state.sliders.isNotEmpty || _isLoading) {
      return;
    }

    try {
      _isLoading = true;
      emit(state.copyWith(isLoading: true));

      final sliders = role != null
          ? await _repository.getSlidersByRole(role)
          : await _repository.getSliders();

      if (!isClosed) {
        // 检查 Cubit 是否已关闭
        emit(state.copyWith(
          isLoading: false,
          sliders: sliders,
        ));
      }
    } on ApiException catch (e) {
      if (!isClosed) {
        // 检查 Cubit 是否已关闭
        emit(state.copyWith(
          isLoading: false,
          error: e.message,
        ));
      }
    } finally {
      _isLoading = false;
    }
  }

  // 添加刷新方法
  Future<void> refreshSliders({String? role}) async {
    _isLoading = false; // 重置加载标志
    await loadSliders(role: role);
  }
}
