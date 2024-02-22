void putint(int);

int sum(int e, int f)
{
    return e + f;
}

int main()
{
    int a, b;

	a = 5;
    b = a + 7 + a;

	// 显示b的值
    putint(b);

    a = b - (3 - a) ;
    b = b - 10;

    /*
     * 显示a+b的值
     */
    putint(sum(a, b));

    return 0;
}
