# KDAPTA_OPTION(VARIABLE, FEATURE, HELP-NAME, DISABLE/ENABLE)
# -----------------------------------------------------------
AC_DEFUN([KDAPTA_OPTION], [
    AC_ARG_ENABLE(
        [$2],
        [AS_HELP_STRING(
            [--$4-$2],
            [$4 $3 support]
        )],
        [ENABLE_$1="$enableval"],
        [AS_IF(
            [test "x$4" = "xdisable"],
            [ENABLE_$1="no"],
            [ENABLE_$1="yes"]
        )]
    )
    AM_CONDITIONAL([ENABLE_$1], [test "x$ENABLE_$1" = "xyes"])
    AC_SUBST([ENABLE_$1])
])
