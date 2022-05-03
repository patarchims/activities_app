import 'package:flutter/material.dart';

String iconAssets = "assets/icons/";
String imageAssets = "assets/images/";

class AppConstant {
  static const String appName = "Unimed Library System App";
  static const String androidID = "com.indosistem.unimed.library_app";

  static String dangerIcon = imageAssets + 'danger.png';
  static String kosong = imageAssets + 'ebook_kosong.png';
  static String searchIcon = imageAssets + 'search.png';
  static String bgLogin = imageAssets + 'bg_login.png';
  static String appNameDev = "Unimed Library System Development";
  static String bgSplash = imageAssets + "bg_splash.png";
  static String unimedLogo = iconAssets + "unimed_logo.png";
  static String imageScan = imageAssets + "image_scan.png";
  static String scannerIcon = iconAssets + "scanner_icon.png";
  static String bgDashboard = imageAssets + "bg_dashboard.png";
  static String search = iconAssets + "search.png";
  static String bukuFisika = imageAssets + "buku_fisika.png";
  static String bukuPTK = imageAssets + "buku_ptk.png";
  static String bukuAkuntansi = imageAssets + "buku_akuntansi.png";
  static String homeIcon = iconAssets + "home_icon.png";
  static String profile = iconAssets + "profile.png";
  static String history = iconAssets + "history.png";
  static String loveIcon = iconAssets + "love_icon.png";
  static String notifIcon = iconAssets + "notif_icon.png";
  static String reportIcon = iconAssets + "report_icon.png";
  static String userPicture = iconAssets + "user_pic.png";
  static String bgDrawer = imageAssets + "bg_drawer.png";
  static String iconPinjam = iconAssets + "pinjam.png";
  static String iconRiwayat = iconAssets + "riwayat.png";
  static String iconProfile = iconAssets + "user.png";
  static String iconTotalDenda = iconAssets + "total_denda.png";
  static String editPassword = iconAssets + "edit_password.png";
  static String grayLogo = iconAssets + "unimed_logo_gray.png";
  static String emtyBook = imageAssets + "emty_book.png";
  static String updateImage = imageAssets + "update.png";
  static String keluarIcon = iconAssets + "keluar_drawer.png";

  static List<DropdownMenuItem<String>> itemsBulan = [
    const DropdownMenuItem(child: Text("JANUARI"), value: "1"),
    const DropdownMenuItem(child: Text("FEBRUARI"), value: "2"),
    const DropdownMenuItem(child: Text("MARET"), value: "3"),
    const DropdownMenuItem(child: Text("APRIL"), value: "4"),
    const DropdownMenuItem(child: Text("MEI"), value: "5"),
    const DropdownMenuItem(child: Text("JUNI"), value: "6"),
    const DropdownMenuItem(child: Text("JULI"), value: "7"),
    const DropdownMenuItem(child: Text("AGUSTUS"), value: "8"),
    const DropdownMenuItem(child: Text("SEPTEMBER"), value: "9"),
    const DropdownMenuItem(child: Text("OCTOBER"), value: "10"),
    const DropdownMenuItem(child: Text("NOVEMBER"), value: "11"),
    const DropdownMenuItem(child: Text("DESEMBER"), value: "12"),
  ];

  static List<DropdownMenuItem<String>> itemTipeKoleksi = [
    const DropdownMenuItem(
        child: Text("Semua Koleksi"), value: "Semua Koleksi"),
    const DropdownMenuItem(child: Text("Fiction"), value: "Fiction"),
    const DropdownMenuItem(child: Text("Reference"), value: "Reference"),
    const DropdownMenuItem(child: Text("Textbook"), value: "Textbook"),
    const DropdownMenuItem(
        child: Text("Textbook-Tandon"), value: "Textbook-Tandon"),
  ];
  static List<DropdownMenuItem<String>> itemGMD = [
    const DropdownMenuItem(
        child: Text("Semua GMD/Media"), value: "Semua GMD/Media"),
    const DropdownMenuItem(child: Text("Art Original"), value: "Art Original"),
    const DropdownMenuItem(
        child: Text("Berempati adalah kekuatan saya"),
        value: "Berempati adalah kekuatan saya"),
    const DropdownMenuItem(child: Text("CD-ROOM"), value: "CD-ROOM"),
    const DropdownMenuItem(child: Text("Diorama"), value: "Diorama"),
    const DropdownMenuItem(child: Text("Equipment"), value: "Equipment"),
    const DropdownMenuItem(child: Text("fisika"), value: "fisika"),
    const DropdownMenuItem(child: Text("Globe"), value: "Globe"),
    const DropdownMenuItem(
        child: Text("isi dan sunting teks"), value: "isi dan sunting teks"),
  ];
  static List<DropdownMenuItem<String>> itemLokasi = [
    const DropdownMenuItem(child: Text("Semua Lokasi"), value: "Semua Lokasi"),
    const DropdownMenuItem(
        child: Text("Digital Library"), value: "Digital Library"),
    const DropdownMenuItem(
        child: Text("Ruang Baca FBS Unimed"), value: "Ruang Baca FBS Unimed"),
    const DropdownMenuItem(
        child: Text("Ruang Baca FE Unimed"), value: "Ruang Baca FE Unimed"),
    const DropdownMenuItem(
        child: Text("Ruang Baca FIK Unimed"), value: "Ruang Baca FIK Unimed"),
    const DropdownMenuItem(
        child: Text("Ruang Baca FIP Unimed"), value: "Ruang Baca FIP Unimed"),
    const DropdownMenuItem(
        child: Text("Ruang Baca FIS Unimed"), value: "Ruang Baca FIS Unimed"),
    const DropdownMenuItem(
        child: Text("Ruang Baca FMIPA Unimed"),
        value: "Ruang Baca FMIPA Unimed"),
    const DropdownMenuItem(
        child: Text("Ruang Baca FT Unimed"), value: "Ruang Baca FT Unimed"),
    const DropdownMenuItem(
        child: Text("Ruang Baca PPs Unimed"), value: "Ruang Baca PPs Unimed"),
  ];
}
