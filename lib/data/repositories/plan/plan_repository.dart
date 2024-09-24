import 'package:evcs/core/results/result.dart';
import 'package:evcs/data/models/plan/plan.dart';
import 'package:evcs/data/sources/plan/plan_remote_data_source.dart';

class PlanRepository implements IPlanRepository {
  const PlanRepository(this._planRD);

  final PlanRemoteDataSource _planRD;
  @override
  Future<Result<List<Plan>>> getPlans() async {
    return await _planRD.getPlans();
  }
}

abstract class IPlanRepository {
  Future<Result<List<Plan>>> getPlans();
}
