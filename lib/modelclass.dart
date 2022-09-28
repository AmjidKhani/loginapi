class Modelclass
{
  List<Product?>? product;

}
class Product{



  List<Images?>? images;
}

class Images{

 String? id;
 String? filename;
 String? ur;
 Images({
  required this.id,
  required this.filename,
  required this.ur

});
 factory Images.fromjson(Map<String,dynamic> parsejson)
 {
   return Images(
     id: parsejson["id"],
     filename: parsejson["filename"],
     ur: parsejson["ur"]

   );

 }
}
