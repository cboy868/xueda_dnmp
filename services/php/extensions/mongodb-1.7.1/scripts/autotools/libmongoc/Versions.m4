MONGOC_CURRENT_FILE=[]PHP_EXT_SRCDIR(mongodb)[/src/LIBMONGOC_VERSION_CURRENT]
MONGOC_VERSION=$(cat $MONGOC_CURRENT_FILE)

dnl Ensure newline for "cut" implementations that need it, e.g. HP-UX.
MONGOC_MAJOR_VERSION=$( (cat $MONGOC_CURRENT_FILE; echo) | cut -d- -f1 | cut -d. -f1 )
MONGOC_MINOR_VERSION=$( (cat $MONGOC_CURRENT_FILE; echo) | cut -d- -f1 | cut -d. -f2 )
MONGOC_MICRO_VERSION=$( (cat $MONGOC_CURRENT_FILE; echo) | cut -d- -f1 | cut -d. -f3 )
MONGOC_PRERELEASE_VERSION=$(cut -s -d- -f2 $MONGOC_CURRENT_FILE)

AC_SUBST(MONGOC_VERSION)
AC_SUBST(MONGOC_MAJOR_VERSION)
AC_SUBST(MONGOC_MINOR_VERSION)
AC_SUBST(MONGOC_MICRO_VERSION)
AC_SUBST(MONGOC_PRERELEASE_VERSION)