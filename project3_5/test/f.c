void func(void){
	int a;
	return a;
}
int funb(int c){
	c = 1;
}
int main(void){
	func(); funb(1);
}
