/*
** EPITECH PROJECT, 2025
** test_shell.c
** File description:
** function
*/

#include "../my.h"
#include <criterion/criterion.h>
#include <criterion/redirect.h>
void redirect_all_std(void)
{
    cr_redirect_stdout();
    cr_redirect_stderr();
}

Test(test, print)
{
    int d = test();
    cr_assert_eq(d, 0, "expected 5 but got %d", d);
}
