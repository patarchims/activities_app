import 'package:activities_app/cubit/activity_cubit.dart';
import 'package:activities_app/style/color_style.dart';
import 'package:activities_app/utils/font_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key? key}) : super(key: key);

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _placeHolder = TextEditingController();
  final TextEditingController _date = TextEditingController();
  String? selectedBulan = 'Meeting';
  String? selectedMeet = 'New Order';
  @override
  void initState() {
    super.initState();
    selectedBulan = 'Meeting';
    selectedMeet = 'New Order';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "New Activities",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        children: [
          textTitle(title: "What do you want to do ?"),
          const SizedBox(
            height: 12,
          ),
          DropdownButtonFormField(
            onChanged: (value) {},
            items: item,
            value: selectedBulan,
            decoration: styleDropdown(),
            validator: (value) => value == null ? "Pilih Bulan" : null,
          ),
          const SizedBox(height: 12),
          textTitle(title: "What do you want meet/call?"),
          const SizedBox(height: 12),
          TextFormField(
            style: blackTextStyle,
            controller: _textController,
            obscureText: false,
            autocorrect: false,
            decoration: InputDecoration(
              hintText: 'CV Anugerah Jaya',
              border: styleBorder(),
              enabledBorder: styleBorder(),
              focusedBorder: styleBorder(),
              disabledBorder: styleBorder(),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          textTitle(title: "When do you want to meet/call CV Anugrah Jaya?"),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  enabled: false,
                  controller: _date..text,
                  validator: (value) =>
                      value == '' ? "Tidak boleh kosong" : null,
                  decoration: InputDecoration(
                    hintText: 'Tanggal Lahir',
                    border: styleBorder(),
                    enabledBorder: styleBorder(),
                    focusedBorder: styleBorder(),
                    disabledBorder: styleBorder(),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    fillColor: const Color(0xFFF8F8F8),
                    filled: true,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 1, right: 1, bottom: 1),
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(20))),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      elevation: 0,
                      primary: ColorPallate.blueColor),
                  child: const Icon(Icons.date_range),
                  onPressed: () {
                    // KETIKA BUTTON DATE DI TEKAN
                    _showDateDialog(this.context);
                  },
                ),
              ),
            ],
          ),
          textTitle(title: "What do you want to do ?"),
          const SizedBox(
            height: 12,
          ),
          DropdownButtonFormField(
            onChanged: (value) {},
            items: itemMeet,
            value: selectedMeet,
            decoration: styleDropdown(),
            validator: (value) => value == null ? "New Order" : null,
          ),
          const SizedBox(height: 12),
          textTitle(title: "Could your describe it more details ?"),
          const SizedBox(height: 12),
          TextFormField(
            style: blackTextStyle,
            controller: _placeHolder,
            obscureText: false,
            autocorrect: false,
            maxLines: 5,
            minLines: 4,
            decoration: InputDecoration(
              hintText: 'Placeholder',
              border: styleBorder(),
              enabledBorder: styleBorder(),
              focusedBorder: styleBorder(),
              disabledBorder: styleBorder(),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          InkWell(
            onTap: () => context.read<ActivityCubit>().saveActivity(
                id: 123456,
                type: selectedBulan.toString(),
                institution: _textController.text,
                when: _date.text,
                objective: selectedMeet.toString(),
                remark: _placeHolder.text),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF20C3AF),
                    Color.fromARGB(255, 11, 113, 101),
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text("Submit",
                    textAlign: TextAlign.center,
                    style:
                        whiteTextStyle.copyWith(fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Text textTitle({required String title}) {
    return Text(
      title,
      style: const TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
    );
  }

  static InputBorder styleBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        width: 0,
        color: ColorPallate.blueColor,
      ),
    );
  }

  void _showDateDialog(BuildContext context) {
    DatePicker.showDatePicker(context,
        showTitleActions: true,
        minTime: DateTime(1890, 3, 5),
        maxTime: DateTime(2022, 6, 7), onChanged: (date) {
      setState(() {
        _date.text = date.toString().substring(0, 10);
      });
    },
        onConfirm: (date) {},
        currentTime: DateTime.now(),
        locale: LocaleType.id);
  }

  InputDecoration styleDropdown() {
    return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      filled: true,
      fillColor: Colors.white,
    );
  }
}

List<DropdownMenuItem<String>> item = [
  const DropdownMenuItem(child: Text("Meeting"), value: "Meeting"),
  const DropdownMenuItem(child: Text("Phone Call"), value: "Phone Call"),
];
List<DropdownMenuItem<String>> itemMeet = [
  const DropdownMenuItem(child: Text("New Order"), value: "New Order"),
  const DropdownMenuItem(child: Text("Invoice"), value: "Invoice"),
  const DropdownMenuItem(child: Text("New Leads"), value: "New Leads"),
];
