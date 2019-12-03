int source[] = {3, 2, 5, 6, 4, 1, 0};
int destination[16];

int main()
{
    int i;
    for (i = 0; source[i] != 0; i++)
    {
        destination[2 * i] = 2 * source[i];
    }
    return 0;
}