
import 'package:belajar_flutter1/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  // data makanan berupa List, masih hardcoded

  List<MakananModel> dataMakanan = [
    MakananModel(
      namaMakanan: "Wagyu Steak",
      harga: "185.000",
      gambar:
          "https://axwwgrkdco.cloudimg.io/v7/__gmpics3__/8cdd895dc54440fba3931b0056358c12.jpeg?width=1000",
      deskripsi:
          "Steak premium dengan tekstur lembut dan cita rasa kaya. "
          "Disajikan bersama saus spesial dan sayuran pilihan "
          "untuk pengalaman bersantap yang istimewa.",
    ),
    MakananModel(
      namaMakanan: "Lobster Thermidor",
      harga: "220.000",
      gambar:
          "https://www.sternefresser.de/fileadmin/user_upload/koenigshof_2017/hummer.jpg",
      deskripsi:
          "Hidangan lobster dengan saus krim gurih dan keju "
          "yang dipanggang hingga keemasan. Pilihan istimewa "
          "bagi pencinta hidangan laut.",
    ),
    MakananModel(
      namaMakanan: "Truffle Cream Pasta",
      harga: "145.000",
      gambar:
          "https://axwwgrkdco.cloudimg.io/v7/__gmpics3__/4d27d5ca405a4733977bb945e1f5cd4e.jpeg",
      deskripsi:
          "Pasta dengan saus krim lembut dan aroma khas truffle. "
          "Perpaduan rasa gurih dan tekstur creamy dalam "
          "sajian bergaya restoran fine dining.",
    ),
    MakananModel(
      namaMakanan: "Grilled Salmon",
      harga: "125.000",
      gambar:
          "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?q=80&w=1170&auto=format&fit=crop",
      deskripsi:
          "Fillet salmon panggang yang disajikan dengan "
          "saus lemon butter dan sayuran pilihan. "
          "Memiliki cita rasa gurih dengan sentuhan segar.",
    ),
    MakananModel(
      namaMakanan: "Beef Wellington",
      harga: "195.000",
      gambar:
          "https://axwwgrkdco.cloudimg.io/v7/__gmpics3__/fc4720aca2494041ab963d16ff203042.jpg",
      deskripsi:
          "Hidangan daging sapi premium dengan inspirasi "
          "kuliner klasik Eropa. Disajikan dengan pelengkap "
          "dan saus gurih untuk pengalaman makan yang elegan.",
    ),
  ];
}
