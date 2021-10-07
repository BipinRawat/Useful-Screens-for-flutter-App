import 'package:flut_app/NewsApp/models/category_model.dart';
List<CategoryModel> getCategories(){
  List<CategoryModel> category = new List<CategoryModel>();
  CategoryModel categoryModel = new CategoryModel();


  //1
  categoryModel.categoryName= "Business";
  categoryModel.imageUrl= "https://images.unsplash.com/39/lIZrwvbeRuuzqOoWJUEn_Photoaday_CSD%20(1%20of%201)-5.jpg?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=750&q=80";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  //2
  categoryModel.categoryName= "Entertainment";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1576586280988-593367f1430f?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=752&q=80";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  //3
  categoryModel.categoryName= "General";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1489533119213-66a5cd877091?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Z2VuZXJhbCUyMG5ld3N8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  //4
  categoryModel.categoryName= "Health";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1538333702852-c1b7a2a93001?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8aGVhbHRoJTIwbmV3c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60";
  category.add(categoryModel);
  categoryModel=new CategoryModel();


  //5
  categoryModel.categoryName= "Science";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1561328399-f94d2ce78679?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fHNjaWVuY2UlMjBuZXdzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60";
  category.add(categoryModel);
  categoryModel=new CategoryModel();


  //6
  categoryModel.categoryName= "Sports";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1531415074968-036ba1b575da?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Y3JpY2tldHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60";
  category.add(categoryModel);
  categoryModel=new CategoryModel();


  //7
  categoryModel.categoryName= "Technology";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dGVjaG5vbG9neXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  return category;
}