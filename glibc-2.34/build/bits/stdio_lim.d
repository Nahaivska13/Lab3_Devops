$(common-objpfx)bits/stdio_lim.h $(common-objpfx)bits/stdio_lim.d: \
 $(..)include/stdc-predef.h $(..)posix/bits/posix1_lim.h \
 $(..)sysdeps/aarch64/bits/wordsize.h $(..)sysdeps/unix/sysv/linux/bits/local_lim.h \
 /usr/include/linux/limits.h \
 $(..)sysdeps/unix/sysv/linux/include/bits/pthread_stack_min-dynamic.h \
 $(..)sysdeps/unix/sysv/linux/aarch64/bits/pthread_stack_min.h
$(..)posix/bits/posix1_lim.h:
$(..)sysdeps/aarch64/bits/wordsize.h:
$(..)sysdeps/unix/sysv/linux/bits/local_lim.h:
/usr/include/linux/limits.h:
$(..)sysdeps/unix/sysv/linux/include/bits/pthread_stack_min-dynamic.h:
$(..)sysdeps/unix/sysv/linux/aarch64/bits/pthread_stack_min.h:
