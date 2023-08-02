import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'app.dart';
import 'src/view/blocs/cubit/dark_mode_cubit.dart'; // Import shared_preferences

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // INITIALIZE HYDRATED BLOC
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => DarkModeCubit()),
    ],
    child: const MyApp(),
  ));
}
