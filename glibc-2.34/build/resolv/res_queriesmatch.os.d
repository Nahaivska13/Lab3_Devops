$(common-objpfx)resolv/res_queriesmatch.os: \
 res_queriesmatch.c ../include/stdc-predef.h \
 $(common-objpfx)libc-modules.h \
 ../include/libc-symbols.h \
 $(common-objpfx)config.h \
 ../sysdeps/generic/libc-symver.h ../sysdeps/generic/symbol-hacks.h \
 ../include/resolv.h /usr/lib/gcc/aarch64-linux-gnu/11/include/stdbool.h \
 ../resolv/resolv.h ../include/sys/cdefs.h ../misc/sys/cdefs.h \
 ../include/features.h ../include/features-time64.h \
 ../sysdeps/unix/sysv/linux/features-time64.h \
 ../sysdeps/aarch64/bits/wordsize.h ../bits/timesize.h \
 ../include/gnu/stubs.h ../sysdeps/ieee754/ldbl-128/bits/long-double.h \
 ../include/sys/param.h ../misc/sys/param.h \
 /usr/lib/gcc/aarch64-linux-gnu/11/include/stddef.h \
 ../include/sys/types.h ../posix/sys/types.h ../include/bits/types.h \
 ../posix/bits/types.h \
 ../sysdeps/unix/sysv/linux/generic/bits/typesizes.h ../bits/time64.h \
 ../include/bits/types/clock_t.h ../time/bits/types/clock_t.h \
 ../include/bits/types/clockid_t.h ../time/bits/types/clockid_t.h \
 ../include/bits/types/time_t.h ../time/bits/types/time_t.h \
 ../include/bits/types/timer_t.h ../time/bits/types/timer_t.h \
 ../bits/stdint-intn.h ../include/endian.h ../string/endian.h \
 ../include/bits/endian.h ../string/bits/endian.h \
 ../sysdeps/aarch64/bits/endianness.h ../bits/byteswap.h \
 ../bits/uintn-identity.h ../include/sys/select.h ../misc/sys/select.h \
 ../bits/select.h ../include/bits/types/sigset_t.h \
 ../signal/bits/types/sigset_t.h \
 ../sysdeps/unix/sysv/linux/bits/types/__sigset_t.h \
 ../include/bits/types/struct_timeval.h \
 ../time/bits/types/struct_timeval.h \
 ../include/bits/types/struct_timespec.h \
 ../time/bits/types/struct_timespec.h ../sysdeps/nptl/bits/pthreadtypes.h \
 ../sysdeps/nptl/bits/thread-shared-types.h \
 ../sysdeps/aarch64/nptl/bits/pthreadtypes-arch.h \
 ../sysdeps/nptl/bits/struct_mutex.h \
 ../sysdeps/aarch64/nptl/bits/struct_rwlock.h ../include/limits.h \
 ../bits/libc-header-start.h \
 /usr/lib/gcc/aarch64-linux-gnu/11/include/limits.h \
 ../include/bits/posix1_lim.h ../posix/bits/posix1_lim.h \
 ../sysdeps/unix/sysv/linux/bits/local_lim.h /usr/include/linux/limits.h \
 ../sysdeps/unix/sysv/linux/include/bits/pthread_stack_min-dynamic.h \
 ../sysdeps/unix/sysv/linux/aarch64/bits/pthread_stack_min.h \
 ../include/bits/posix2_lim.h ../posix/bits/posix2_lim.h \
 ../include/bits/xopen_lim.h ../sysdeps/unix/sysv/linux/bits/uio_lim.h \
 ../include/signal.h ../signal/signal.h ../bits/signum-generic.h \
 ../sysdeps/unix/sysv/linux/bits/signum-arch.h \
 ../include/bits/types/sig_atomic_t.h ../signal/bits/types/sig_atomic_t.h \
 ../sysdeps/unix/sysv/linux/bits/types/siginfo_t.h \
 ../include/bits/types/__sigval_t.h ../signal/bits/types/__sigval_t.h \
 ../sysdeps/unix/sysv/linux/bits/siginfo-arch.h \
 ../sysdeps/unix/sysv/linux/bits/siginfo-consts.h \
 ../sysdeps/unix/sysv/linux/bits/siginfo-consts-arch.h \
 ../include/bits/types/sigval_t.h ../signal/bits/types/sigval_t.h \
 ../sysdeps/unix/sysv/linux/bits/types/sigevent_t.h \
 ../sysdeps/unix/sysv/linux/bits/sigevent-consts.h \
 ../sysdeps/unix/sysv/linux/bits/sigaction.h \
 ../sysdeps/unix/sysv/linux/bits/sigcontext.h \
 /usr/include/aarch64-linux-gnu/asm/sigcontext.h \
 /usr/include/linux/types.h /usr/include/aarch64-linux-gnu/asm/types.h \
 /usr/include/asm-generic/types.h /usr/include/asm-generic/int-ll64.h \
 /usr/include/aarch64-linux-gnu/asm/bitsperlong.h \
 /usr/include/asm-generic/bitsperlong.h /usr/include/linux/posix_types.h \
 /usr/include/linux/stddef.h \
 /usr/include/aarch64-linux-gnu/asm/posix_types.h \
 /usr/include/asm-generic/posix_types.h \
 /usr/include/aarch64-linux-gnu/asm/sve_context.h \
 ../sysdeps/unix/sysv/linux/bits/types/stack_t.h \
 ../sysdeps/unix/sysv/linux/aarch64/sys/ucontext.h \
 ../sysdeps/unix/sysv/linux/sys/procfs.h ../include/sys/time.h \
 ../time/sys/time.h ../include/struct___timeval64.h \
 ../sysdeps/unix/sysv/linux/aarch64/sys/user.h \
 ../sysdeps/unix/sysv/linux/aarch64/bits/procfs.h \
 ../sysdeps/unix/sysv/linux/bits/procfs-id.h \
 ../sysdeps/unix/sysv/linux/bits/procfs-prregset.h \
 ../sysdeps/unix/sysv/linux/bits/procfs-extra.h \
 ../include/bits/sigstack.h \
 ../sysdeps/unix/sysv/linux/aarch64/bits/sigstack.h \
 ../include/bits/sigstksz.h ../sysdeps/unix/sysv/linux/bits/ss_flags.h \
 ../include/bits/types/struct_sigstack.h \
 ../signal/bits/types/struct_sigstack.h \
 ../sysdeps/pthread/bits/sigthread.h \
 ../sysdeps/unix/sysv/linux/bits/signal_ext.h \
 ../sysdeps/unix/sysv/linux/sigsetops.h ../include/libc-pointer-arith.h \
 ../include/stdint.h ../stdlib/stdint.h ../bits/wchar.h \
 ../bits/stdint-uintn.h ../sysdeps/unix/sysv/linux/bits/param.h \
 /usr/include/linux/param.h /usr/include/aarch64-linux-gnu/asm/param.h \
 /usr/include/asm-generic/param.h ../include/stdio.h \
 ../sysdeps/ieee754/ldbl-128/bits/floatn.h ../bits/floatn-common.h \
 ../libio/stdio.h /usr/lib/gcc/aarch64-linux-gnu/11/include/stdarg.h \
 ../include/bits/types/__fpos_t.h ../libio/bits/types/__fpos_t.h \
 ../include/bits/types/__mbstate_t.h ../wcsmbs/bits/types/__mbstate_t.h \
 ../include/bits/types/__fpos64_t.h ../libio/bits/types/__fpos64_t.h \
 ../include/bits/types/__FILE.h ../libio/bits/types/__FILE.h \
 ../include/bits/types/FILE.h ../libio/bits/types/FILE.h \
 ../include/bits/types/struct_FILE.h ../libio/bits/types/struct_FILE.h \
 ../include/bits/types/cookie_io_functions_t.h \
 ../libio/bits/types/cookie_io_functions_t.h \
 $(common-objpfx)bits/stdio_lim.h \
 ../libio/libio.h ../include/bits/types/wint_t.h \
 ../wcsmbs/bits/types/wint_t.h ../include/gconv.h ../iconv/gconv.h \
 ../include/shlib-compat.h \
 $(common-objpfx)abi-versions.h \
 ../include/netinet/in.h ../inet/netinet/in.h ../include/sys/socket.h \
 ../socket/sys/socket.h ../include/bits/types/struct_iovec.h \
 ../misc/bits/types/struct_iovec.h \
 ../sysdeps/unix/sysv/linux/bits/socket.h \
 ../sysdeps/unix/sysv/linux/bits/socket_type.h ../bits/sockaddr.h \
 /usr/include/aarch64-linux-gnu/asm/socket.h \
 /usr/include/asm-generic/socket.h \
 /usr/include/aarch64-linux-gnu/asm/sockios.h \
 /usr/include/asm-generic/sockios.h \
 ../include/bits/types/struct_osockaddr.h \
 ../socket/bits/types/struct_osockaddr.h \
 ../sysdeps/unix/sysv/linux/bits/in.h ../include/arpa/nameser.h \
 ../resolv/arpa/nameser.h ../include/arpa/nameser_compat.h \
 ../resolv/arpa/nameser_compat.h ../include/string.h ../include/locale.h \
 ../locale/locale.h ../include/bits/locale.h ../locale/bits/locale.h \
 ../include/bits/types/locale_t.h ../locale/bits/types/locale_t.h \
 ../include/bits/types/__locale_t.h ../locale/bits/types/__locale_t.h \
 ../sysdeps/aarch64/string_private.h ../string/string.h \
 ../include/strings.h ../string/strings.h \
 ../include/bits/types/res_state.h ../resolv/bits/types/res_state.h
../include/stdc-predef.h:
$(common-objpfx)libc-modules.h:
../include/libc-symbols.h:
$(common-objpfx)config.h:
../sysdeps/generic/libc-symver.h:
../sysdeps/generic/symbol-hacks.h:
../include/resolv.h:
/usr/lib/gcc/aarch64-linux-gnu/11/include/stdbool.h:
../resolv/resolv.h:
../include/sys/cdefs.h:
../misc/sys/cdefs.h:
../include/features.h:
../include/features-time64.h:
../sysdeps/unix/sysv/linux/features-time64.h:
../sysdeps/aarch64/bits/wordsize.h:
../bits/timesize.h:
../include/gnu/stubs.h:
../sysdeps/ieee754/ldbl-128/bits/long-double.h:
../include/sys/param.h:
../misc/sys/param.h:
/usr/lib/gcc/aarch64-linux-gnu/11/include/stddef.h:
../include/sys/types.h:
../posix/sys/types.h:
../include/bits/types.h:
../posix/bits/types.h:
../sysdeps/unix/sysv/linux/generic/bits/typesizes.h:
../bits/time64.h:
../include/bits/types/clock_t.h:
../time/bits/types/clock_t.h:
../include/bits/types/clockid_t.h:
../time/bits/types/clockid_t.h:
../include/bits/types/time_t.h:
../time/bits/types/time_t.h:
../include/bits/types/timer_t.h:
../time/bits/types/timer_t.h:
../bits/stdint-intn.h:
../include/endian.h:
../string/endian.h:
../include/bits/endian.h:
../string/bits/endian.h:
../sysdeps/aarch64/bits/endianness.h:
../bits/byteswap.h:
../bits/uintn-identity.h:
../include/sys/select.h:
../misc/sys/select.h:
../bits/select.h:
../include/bits/types/sigset_t.h:
../signal/bits/types/sigset_t.h:
../sysdeps/unix/sysv/linux/bits/types/__sigset_t.h:
../include/bits/types/struct_timeval.h:
../time/bits/types/struct_timeval.h:
../include/bits/types/struct_timespec.h:
../time/bits/types/struct_timespec.h:
../sysdeps/nptl/bits/pthreadtypes.h:
../sysdeps/nptl/bits/thread-shared-types.h:
../sysdeps/aarch64/nptl/bits/pthreadtypes-arch.h:
../sysdeps/nptl/bits/struct_mutex.h:
../sysdeps/aarch64/nptl/bits/struct_rwlock.h:
../include/limits.h:
../bits/libc-header-start.h:
/usr/lib/gcc/aarch64-linux-gnu/11/include/limits.h:
../include/bits/posix1_lim.h:
../posix/bits/posix1_lim.h:
../sysdeps/unix/sysv/linux/bits/local_lim.h:
/usr/include/linux/limits.h:
../sysdeps/unix/sysv/linux/include/bits/pthread_stack_min-dynamic.h:
../sysdeps/unix/sysv/linux/aarch64/bits/pthread_stack_min.h:
../include/bits/posix2_lim.h:
../posix/bits/posix2_lim.h:
../include/bits/xopen_lim.h:
../sysdeps/unix/sysv/linux/bits/uio_lim.h:
../include/signal.h:
../signal/signal.h:
../bits/signum-generic.h:
../sysdeps/unix/sysv/linux/bits/signum-arch.h:
../include/bits/types/sig_atomic_t.h:
../signal/bits/types/sig_atomic_t.h:
../sysdeps/unix/sysv/linux/bits/types/siginfo_t.h:
../include/bits/types/__sigval_t.h:
../signal/bits/types/__sigval_t.h:
../sysdeps/unix/sysv/linux/bits/siginfo-arch.h:
../sysdeps/unix/sysv/linux/bits/siginfo-consts.h:
../sysdeps/unix/sysv/linux/bits/siginfo-consts-arch.h:
../include/bits/types/sigval_t.h:
../signal/bits/types/sigval_t.h:
../sysdeps/unix/sysv/linux/bits/types/sigevent_t.h:
../sysdeps/unix/sysv/linux/bits/sigevent-consts.h:
../sysdeps/unix/sysv/linux/bits/sigaction.h:
../sysdeps/unix/sysv/linux/bits/sigcontext.h:
/usr/include/aarch64-linux-gnu/asm/sigcontext.h:
/usr/include/linux/types.h:
/usr/include/aarch64-linux-gnu/asm/types.h:
/usr/include/asm-generic/types.h:
/usr/include/asm-generic/int-ll64.h:
/usr/include/aarch64-linux-gnu/asm/bitsperlong.h:
/usr/include/asm-generic/bitsperlong.h:
/usr/include/linux/posix_types.h:
/usr/include/linux/stddef.h:
/usr/include/aarch64-linux-gnu/asm/posix_types.h:
/usr/include/asm-generic/posix_types.h:
/usr/include/aarch64-linux-gnu/asm/sve_context.h:
../sysdeps/unix/sysv/linux/bits/types/stack_t.h:
../sysdeps/unix/sysv/linux/aarch64/sys/ucontext.h:
../sysdeps/unix/sysv/linux/sys/procfs.h:
../include/sys/time.h:
../time/sys/time.h:
../include/struct___timeval64.h:
../sysdeps/unix/sysv/linux/aarch64/sys/user.h:
../sysdeps/unix/sysv/linux/aarch64/bits/procfs.h:
../sysdeps/unix/sysv/linux/bits/procfs-id.h:
../sysdeps/unix/sysv/linux/bits/procfs-prregset.h:
../sysdeps/unix/sysv/linux/bits/procfs-extra.h:
../include/bits/sigstack.h:
../sysdeps/unix/sysv/linux/aarch64/bits/sigstack.h:
../include/bits/sigstksz.h:
../sysdeps/unix/sysv/linux/bits/ss_flags.h:
../include/bits/types/struct_sigstack.h:
../signal/bits/types/struct_sigstack.h:
../sysdeps/pthread/bits/sigthread.h:
../sysdeps/unix/sysv/linux/bits/signal_ext.h:
../sysdeps/unix/sysv/linux/sigsetops.h:
../include/libc-pointer-arith.h:
../include/stdint.h:
../stdlib/stdint.h:
../bits/wchar.h:
../bits/stdint-uintn.h:
../sysdeps/unix/sysv/linux/bits/param.h:
/usr/include/linux/param.h:
/usr/include/aarch64-linux-gnu/asm/param.h:
/usr/include/asm-generic/param.h:
../include/stdio.h:
../sysdeps/ieee754/ldbl-128/bits/floatn.h:
../bits/floatn-common.h:
../libio/stdio.h:
/usr/lib/gcc/aarch64-linux-gnu/11/include/stdarg.h:
../include/bits/types/__fpos_t.h:
../libio/bits/types/__fpos_t.h:
../include/bits/types/__mbstate_t.h:
../wcsmbs/bits/types/__mbstate_t.h:
../include/bits/types/__fpos64_t.h:
../libio/bits/types/__fpos64_t.h:
../include/bits/types/__FILE.h:
../libio/bits/types/__FILE.h:
../include/bits/types/FILE.h:
../libio/bits/types/FILE.h:
../include/bits/types/struct_FILE.h:
../libio/bits/types/struct_FILE.h:
../include/bits/types/cookie_io_functions_t.h:
../libio/bits/types/cookie_io_functions_t.h:
$(common-objpfx)bits/stdio_lim.h:
../libio/libio.h:
../include/bits/types/wint_t.h:
../wcsmbs/bits/types/wint_t.h:
../include/gconv.h:
../iconv/gconv.h:
../include/shlib-compat.h:
$(common-objpfx)abi-versions.h:
../include/netinet/in.h:
../inet/netinet/in.h:
../include/sys/socket.h:
../socket/sys/socket.h:
../include/bits/types/struct_iovec.h:
../misc/bits/types/struct_iovec.h:
../sysdeps/unix/sysv/linux/bits/socket.h:
../sysdeps/unix/sysv/linux/bits/socket_type.h:
../bits/sockaddr.h:
/usr/include/aarch64-linux-gnu/asm/socket.h:
/usr/include/asm-generic/socket.h:
/usr/include/aarch64-linux-gnu/asm/sockios.h:
/usr/include/asm-generic/sockios.h:
../include/bits/types/struct_osockaddr.h:
../socket/bits/types/struct_osockaddr.h:
../sysdeps/unix/sysv/linux/bits/in.h:
../include/arpa/nameser.h:
../resolv/arpa/nameser.h:
../include/arpa/nameser_compat.h:
../resolv/arpa/nameser_compat.h:
../include/string.h:
../include/locale.h:
../locale/locale.h:
../include/bits/locale.h:
../locale/bits/locale.h:
../include/bits/types/locale_t.h:
../locale/bits/types/locale_t.h:
../include/bits/types/__locale_t.h:
../locale/bits/types/__locale_t.h:
../sysdeps/aarch64/string_private.h:
../string/string.h:
../include/strings.h:
../string/strings.h:
../include/bits/types/res_state.h:
../resolv/bits/types/res_state.h:
