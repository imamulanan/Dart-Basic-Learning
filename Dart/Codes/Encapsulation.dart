class BankAccount{
  double _balance = 0.0; // private variable

  double get balance => _balance; // getter to access balance

  void deposit(double amount){
    if(amount > 0) _balance += amount;
  }

  void withdraw( double amount){
    if(amount > 0 && amount <= _balance)_balance -=amount;
  }
}


void main(){
  BankAccount acc  =  BankAccount();
  acc.deposit(1000);
  print("Balance after deposit: \$${acc.balance}");
  acc.withdraw(500);
  print("Balance after withdrawal: \$${acc.balance}");
}