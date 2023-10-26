import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/constants/localization/text.dart';
import 'package:app_with_apps/constants/models/notes/folder_class.dart';
import 'package:app_with_apps/constants/models/state_enum.dart';
import 'package:app_with_apps/interface/screens/apps/widgets/mainbody_widget.dart';
import 'package:app_with_apps/manager/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  AppState state = AppState.loading;
  Bloc? _bloc;
  List<Folder> elements = [];
  String newFolder_title = '';

  @override
  void initState() {
    _bloc = BlocProvider.of<Bloc>(context);
    _bloc!.add(GetFoldersEvent());
    super.initState();
  }

  getData(List<Folder> arr) {
    if (arr.isNotEmpty) {
      elements = arr;
      state = AppState.loaded;
    } else {
      state = AppState.empty;
    }
  }

  createFolder(title) => _bloc!.add(CreateFolderEvent(title: title));

  Future<void> _displayTextInputDialog(BuildContext context) async {
    String valueText = '';
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(ConstantText.creation),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  valueText = value;
                });
              },
              // decoration: InputDecoration(hintText: "Text Field in Dialog"),
            ),
            actions: <Widget>[
              MaterialButton(
                child: Text(ConstantText.ok),
                onPressed: () => setState(() {
                  createFolder(valueText);
                  newFolder_title = valueText;
                  Navigator.pop(context);
                }),
              ),
            ],
          );
        });
  }

  showCreation() => _displayTextInputDialog(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            ElevatedButton(
              onPressed: showCreation,
              child: Text(ConstantText.create),
            ),
          ],
        ),
        body: BlocListener<SomeBloc, BlocState>(
          listener: (context, state) {
            if (state is BlocError) {
              // print('error');
            } else if (state is DeleteSucess) {
              setState(() {});
            }
          },
          child: MainBody(
            elements: elements,
            state: state,
          ),
        ));
  }
}
