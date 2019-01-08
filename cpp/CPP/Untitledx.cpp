#include <cstdio>
#include <gmp.h>

int main(int argc, char** argv) 
{
	mpz_t m; 
	mpz_init_set_str (m, "1", 0);
	mpz_t n; 
	mpz_init_set_str (n, "2", 0);

    gmp_printf ("%s is an mpz %Zd\n", "here", m);
	gmp_printf ("%s is an mpz %Zd\n", "here", n);
	gmp_printf ("%s is an mpz %Zd\n", "here", n+m);

    mpz_clear(n);
    mpz_clear(m);

    return 0;
}
