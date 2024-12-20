import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';
import 'doctors_list_view.dart';
import 'empty_item.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctorsList) {
            return setupSuccess(doctorsList);
          },
          doctorsError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupSuccess(doctorsList) {
    if (doctorsList.isEmpty) {
      return EmptyListPage();
    } else {
      return DoctorsListView(
        doctorsList: doctorsList,
      );
    }
  }

  Widget setupError() {
    return const Text(
      'An error occurred while fetching doctors data.',
      style: TextStyle(color: Colors.red),
    );
  }
}
