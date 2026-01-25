class Student{
  String name;
  int marks;

  Student(this.name, this.marks);

  void display(){
    print("Name: $name, Marks: $marks");
  }
}


class Book{
  String title;
  String author;

  Book(this.title, this.author);

  void showInfo(){
    print("Title: $title, Author: $author");
  }
}


void main(){
  Student s1 = Student("Anan", 85);
  Student s2 = Student("Arif", 90);

  s1.display();
  s2.display();


  Book b1 = Book("Dart","Anan");
  Book b2 = Book("Flutter","Arif");

  b1.showInfo();
  b2.showInfo();
}