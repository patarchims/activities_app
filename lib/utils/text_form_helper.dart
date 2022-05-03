import 'package:activities_app/style/color_style.dart';
import 'package:activities_app/utils/font_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFormWidget {
  static Obx passwordField(
      RxBool valueText, TextEditingController textController) {
    return Obx(
      () => TextFormField(
        style: blackTextStyle,
        controller: textController,
        validator: (value) => value == '' ? "Tidak Boleh Kosong" : null,
        obscureText: valueText.value,
        decoration: InputDecoration(
          hintText: '*******',
          suffixIcon: Obx(
            () => GestureDetector(
              onTap: () {
                valueText.value = !valueText.value;
              },
              child: Icon(
                valueText.value ? Icons.visibility_off : Icons.visibility,
                color: ColorPallate.blueColor,
              ),
            ),
          ),
          border: styleBorder(),
          enabledBorder: styleBorder(),
          focusedBorder: styleBorder(),
          disabledBorder: styleBorder(),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }

  static TextFormField textFormFieldNumberInput(
      TextEditingController textController, BuildContext context) {
    return TextFormField(
      style: blackTextStyle,
      controller: textController,
      onTap: () {},
      obscureText: false,
      autocorrect: false,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        border: styleBorder(),
        enabledBorder: styleBorder(),
        focusedBorder: styleBorder(),
        disabledBorder: styleBorder(),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }

  static Row selectedDateInput(TextEditingController controller,
      String hintText, Function onTap, Function onSearch) {
    return Row(
      children: [
        SizedBox(
          width: Get.width - 10 * 24,
          child: TextFormField(
            enabled: false,
            controller: controller,
            validator: (value) => value == '' ? "Tidak boleh kosong" : null,
            decoration: InputDecoration(
              hintText: hintText,
              border: styleBorderOnly(),
              enabledBorder: styleBorderOnly(),
              focusedBorder: styleBorderOnly(),
              disabledBorder: styleBorderOnly(),
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
              borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
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
              onTap();
            },
          ),
        ),
        const Spacer(),
        SizedBox(
          height: 50,
          width: 50,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: ColorPallate.blueColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero)),
              ),
              onPressed: () {
                // FUNGSI CARI DI SINI
                onSearch();
              },
              child: Icon(
                Icons.search,
                color: ColorPallate.blueColor,
              )),
        )
      ],
    );
  }
}

InputBorder styleBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      width: 0,
      color: Color(0xFF001689),
    ),
  );
}

InputBorder styleBorderOnly() {
  return OutlineInputBorder(
    borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(0),
        topRight: Radius.circular(0)),
    borderSide: BorderSide(
      width: 0,
      color: ColorPallate.blueColor,
    ),
  );
}
