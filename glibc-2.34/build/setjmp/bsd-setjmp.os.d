$(common-objpfx)setjmp/bsd-setjmp.os: \
 ../sysdeps/aarch64/bsd-setjmp.c ../include/stdc-predef.h \
 $(common-objpfx)libc-modules.h \
 ../include/libc-symbols.h \
 $(common-objpfx)config.h \
 ../sysdeps/generic/libc-symver.h ../sysdeps/generic/symbol-hacks.h
../include/stdc-predef.h:
$(common-objpfx)libc-modules.h:
../include/libc-symbols.h:
$(common-objpfx)config.h:
../sysdeps/generic/libc-symver.h:
../sysdeps/generic/symbol-hacks.h:
