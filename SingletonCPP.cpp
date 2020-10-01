#include <iostream>
//Program for cerner_2^5_2020 
using namespace std;
class SingletonCPP {
   static SingletonCPP *instance;
   int data;
   // Private constructor so that no objects can be created.
   SingletonCPP() {
      data = 0;
   }
   // cerner_2^5_2020 
   public:
   static SingletonCPP *getInstance() {
      if (!instance)
      instance = new SingletonCPP;
      return instance;
   }
   int getData() { return this -> data; }
   void setData(int data) { this -> data = data;  }
};
SingletonCPP *SingletonCPP::instance = 0;
int main(){
   SingletonCPP *s = s->getInstance();
   cout << s->getData() << endl;
   s->setData(100);
   cout << s->getData() << endl;
   return 0;
}
