const int len = 20;

int main()
{
	int i, j, t, n, temp;
    int mult1[len];
    //= {1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
    mult1[0] = 1;
    mult1[1] = 2;
    mult1[2] = 3;
    mult1[3] = 4;
    mult1[4] = 5;
    mult1[5] = 6;
    mult1[6] = 7;
    mult1[7] = 8;
    mult1[8] = 9;
    mult1[9] = 0;
	mult1[10] = 1;
    mult1[11] = 2;
    mult1[12] = 3;
    mult1[13] = 4;
    mult1[14] = 5;
    mult1[15] = 6;
    mult1[16] = 7;
    mult1[17] = 8;
    mult1[18] = 9;
    mult1[19] = 0;

    int mult2[len];
    //= {2, 3, 4, 2, 5, 7, 9, 9, 0, 1, 9, 8, 7, 6, 4, 3, 2, 1, 2, 2};
    mult1[0] = 2;
    mult1[1] = 3;
    mult1[2] = 4;
    mult1[3] = 2;
    mult1[4] = 5;
    mult1[5] = 7;
    mult1[6] = 9;
    mult1[7] = 9;
    mult1[8] = 0;
    mult1[9] = 1;
	mult1[10] = 9;
    mult1[11] = 8;
    mult1[12] = 7;
    mult1[13] = 6;
    mult1[14] = 4;
    mult1[15] = 3;
    mult1[16] = 2;
    mult1[17] = 1;
    mult1[18] = 2;
    mult1[19] = 2;

	int len1 = len;
	int len2 = len;
	int c1[len + 5];
	int c2[len + 5];
	int result[len * 2] = {};

	i = 0;
	while (i < len1) {
		c1[i] = mult1[i];
		i = i + 1;
	}	

	i = 0;
	while (i < len2) {
		c2[i] = mult2[i];
		i = i + 1;
	}	

	n = len1 + len2 - 1;

	i = 0;
	while (i <= n) {
		result[i]=0;
		i = i + 1;
	}	 

	temp=0;

	i = len2 - 1;
	while (i > -1) {
		t = c2[i];
		j = len1 - 1;
		while (j > -1) {
			temp = result[n] + t * c1[j];
			if(temp >= 10) {
				result[n] = (temp);
				result[n-1] = result[n-1] + temp / 10;
			}
			else
				result[n] = temp;
			j = j - 1;
			n = n - 1;
		}
		n = n + len1 - 1;
		i = i - 1;
	}

	if(result[0] != 0)
		putint(result[0]); 

	i = 1;
	while (i <= len1 + len2 - 1) {
		putint(result[i]); 
		i = i + 1;
	}

	return 0;
}