import 'dart:async';

import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/states/base_success_state.dart';
import 'package:evcs/features/home/cubit/home_cubit.dart';
import 'package:evcs/features/home/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: DIManager.findDep<HomeCubit>(),
      buildWhen: (o, n) => o.cuurentLocationState != n.cuurentLocationState,
      builder: (context, state) {
        var locState = state.cuurentLocationState;

        if (locState is BaseSuccessState) {
          return GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: DIManager.findDep<HomeCubit>().currentLocation,
              zoom: 15,
            ),
            compassEnabled: true,
            buildingsEnabled: true,
            zoomControlsEnabled: false,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            markers: {DIManager.findDep<HomeCubit>().marker},
            onCameraMove: (pos) {
              setState(() {
                DIManager.findDep<HomeCubit>().marker = Marker(
                    markerId: const MarkerId('marker'), position: pos.target);
              });
            },
          );
        } else {
          return Container();
        }
      },
    );
  }
}
