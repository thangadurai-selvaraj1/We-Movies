import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/index.dart';

import '../screens/bloc/location/location_bloc.dart';
import 'index.dart';

AppBar homeAppbar(BuildContext context) {
  final theme = Theme.of(context);
  return AppBar(
    title: BlocBuilder<LocationBloc, LocationState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: theme.sizing.s5,
                    ),
                    SizedBox(
                      width: theme.sizing.base,
                    ),
                    Text(
                      (state is LocationSuccessState)
                          ? state.address.first.locality ?? ''
                          : locationNotAvailable,
                      style: theme.textTheme.titleLarge,
                    ),
                  ],
                ),
                Text(
                  (state is LocationSuccessState)
                      ? "${state.address.first.locality}, "
                              "${state.address.first.country}" ??
                          ''
                      : locationNotAvailable,
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: WeLogo(),
            )
          ],
        );
      },
    ),
  );
}
