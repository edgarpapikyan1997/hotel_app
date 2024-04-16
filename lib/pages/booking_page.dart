import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_test_app/attributes/utils/extensions/widget_extension.dart';
import 'package:hotel_test_app/blocs/room_bloc/room_bloc.dart';
import '../attributes/assets.dart';
import '../attributes/themes/app_colors.dart';
import '../widgets/room/room_global_widget.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<RoomBloc>(context).add(RoomEventLoad());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: BlocBuilder<RoomBloc, RoomStates>(builder: (context, state) {
        if (state is RoomStateLoading) {
          const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is RoomStateLoaded) {
          return Scaffold(
            backgroundColor: AppColors.whiteSmock,
            appBar: AppBar(
              title: Text("${state.roomModel.hotel_name}"),
              backgroundColor: AppColors.white,
              leading: IconButton(
                onPressed: () {
                  context.go('/');
                },
                icon: Assets.arrowLeft.png,
              ),
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: RoomGlobalWidget(
                roomModel: state.roomModel,
              ).paddingOnly(top: 8,right: 16,left: 16),
            ),
          );
        }
        return CircularProgressIndicator();
      }),
    );
  }
}
