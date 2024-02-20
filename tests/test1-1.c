// 可追加putint函数的原型，避免静态检查或编译警告的产生
// 如果不追加原型，编译时需通过--include选型指定头文件忽略警告
void putint(int);

int main()
{
    int a, b;

    a = 0;
    b = 7;
    putint(b);

    a = 3 + a;
    b = b + 10;
    putint(a + b);

    return 0;
}
