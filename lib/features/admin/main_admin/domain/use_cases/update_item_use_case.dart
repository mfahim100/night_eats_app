import 'package:dartz/dartz.dart';
import 'package:night_eats/core/utils/use_cases.dart';

import '../../../../../core/utils/failure.dart';
import '../repositories/admin_repository.dart';

class UpdateItemUseCase implements UseCase{



  final AdminRepository adminRepository;

  UpdateItemUseCase({required this.adminRepository});
  @override


  Future<Either<Failure, dynamic>> call(params) async {
    return await adminRepository.updateItem(params.data);
  }

}