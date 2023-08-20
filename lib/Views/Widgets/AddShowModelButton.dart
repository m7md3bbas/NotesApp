import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/NoteModel/NoteModel.dart';
import 'package:notesapp/Views/Widgets/CustomButtonShowModel.dart';
import 'package:notesapp/cuibts/cubit/add_note_cuibt_cubit.dart';

import 'CustomTextFiled.dart';

class AddNoteModelSheet extends StatelessWidget {
  const AddNoteModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Container(
          height: 400,
          child: addnote(),
        ),
      ),
    );
  }
}

class addnote extends StatefulWidget {
  const addnote({
    super.key,
  });

  @override
  State<addnote> createState() => _addnoteState();
}

class _addnoteState extends State<addnote> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  NoteModel? noteModel;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCuibtCubit, AddNoteCubitState>(
      listener: (context, state) {
        if (state is AddNoteCuibtLoading) {
        } else if (state is AddNoteCuibtSuccess) {
          print('${state.errMessage}');
          Navigator.pop(context);
        } else {
          AddNoteCuibtFailure(errMessage: 'fail to save data');
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is AddNoteCuibtLoading ? true : false,
          child: Form(
            key: formKey,
            autovalidateMode: autovalidateMode,
            child: Column(
              children: [
                CustomTextFild(
                  onSave: (value) {
                    title = value;
                    BlocProvider.of<AddNoteCuibtCubit>(context)
                        .addNotes(NoteModel(title: title));
                  },
                  title: 'Title',
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFild(
                  onSave: (value) {
                    subTitle = value;
                    BlocProvider.of<AddNoteCuibtCubit>(context)
                        .addNotes(NoteModel(subTitle: subTitle));
                  },
                  title: 'Content',
                  maxLines: 5,
                ),
                const SizedBox(
                  height: 60,
                ),
                CustomButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
