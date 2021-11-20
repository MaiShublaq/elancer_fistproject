
class CosmeticsCategories{

  late int id;
  late String name;

  CosmeticsCategories();

  CosmeticsCategories.fromMab(Map<String,dynamic> rowMap){
    id=rowMap['id'];
    name=rowMap['name'];

  }
  Map<String,dynamic> toMap(){
    Map<String,dynamic> rowMap=<String,dynamic>{};
    rowMap['name']= name;

    return rowMap;
  }
}