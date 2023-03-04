import 'package:event_app/present/post_screen/widgets/common_text_filed.dart';
import 'package:event_app/present/post_screen/widgets/date_picker_button.dart';
import 'package:event_app/present/post_screen/widgets/image_picker_button.dart';
import 'package:event_app/present/post_screen/widgets/survey_link_button.dart';
import 'package:event_app/present/post_screen/widgets/time_picker_button.dart';
import 'package:event_app/present/post_screen/widgets/title.dart';
import 'package:flutter/Material.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({Key? key}) : super(key: key);

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        color: const Color(0xFFF48820).withOpacity(0.3),
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PostTitle(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: ImagePickerButton()),
                    const SizedBox(height: 16),
                    const CommonTextField(
                      hintText: 'Event name',
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: const [
                        Expanded(
                            flex: 3,
                            child: DatePickerButton(
                              title: "Start Date",)),
                        SizedBox(width: 8),
                        Expanded(
                            flex: 2,
                            child: TimePickerButton(
                              title: "Start time",
                            )),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: const [
                        Expanded(
                            flex: 3,
                            child: DatePickerButton(
                              title: "End Date",
                            )),
                        SizedBox(width: 8),
                        Expanded(
                            flex: 2,
                            child: TimePickerButton(
                              title: "End time",
                            )),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const CommonTextField(hintText: "Location"),
                    const SizedBox(height: 16),
                    const SurveyLinkButton(title: "Survey Link"),
                    const SizedBox(height: 16),
                    const SurveyLinkButton(title: "Ticket Link"),
                    const SizedBox(height: 16),
                    const CommonTextField(hintText: "Description", maxLine: 12,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
