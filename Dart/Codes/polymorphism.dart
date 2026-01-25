class Animal{
  void sound(){
    print("Animal makes a sound");
  }
}

class Dog extends Animal{
  @override
  void sound(){
    print("Dog barks");
  }
}

class Cat extends Animal{
  @override
  void sound(){
    print("Cat meows");
  }
}


void main(){
  Animal a1 = Dog();
  Animal a2 = Cat();

  a1.sound(); // Output: Dog barks
  a2.sound(); // Output: Cat meows  
}