$(common-objpfx)support/xsigaction.oS: \
 xsigaction.c ../include/stdc-predef.h \
 $(common-objpfx)libc-modules.h \
 ../include/libc-symbols.h \
 $(common-objpfx)config.h \
 ../sysdeps/generic/libc-symver.h ../sysdeps/generic/symbol-hacks.h \
 ../support/check.h ../include/sys/cdefs.h ../misc/sys/cdefs.h \
 ../include/features.h ../include/features-time64.h \
 ../sysdeps/unix/sysv/linux/features-time64.h \
 ../sysdeps/aarch64/bits/wordsize.h ../bits/timesize.h \
 ../include/gnu/stubs.h ../sysdeps/ieee754/ldbl-128/bits/long-double.h \
 ../support/xsignal.h ../include/signal.h ../signal/signal.h \
 ../include/bits/types.h ../posix/bits/types.h \
 ../sysdeps/unix/sysv/linux/generic/bits/typesizes.h ../bits/time64.h \
 ../bits/signum-generic.h ../sysdeps/unix/sysv/linux/bits/signum-arch.h \
 ../include/bits/types/sig_atomic_t.h ../signal/bits/types/sig_atomic_t.h \
 ../include/bits/types/sigset_t.h ../signal/bits/types/sigset_t.h \
 ../sysdeps/unix/sysv/linux/bits/types/__sigset_t.h \
 ../include/bits/types/struct_timespec.h \
 ../time/bits/types/struct_timespec.h ../include/bits/endian.h \
 ../string/bits/endian.h ../sysdeps/aarch64/bits/endianness.h \
 ../include/bits/types/time_t.h ../time/bits/types/time_t.h \
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
 /usr/lib/gcc/aarch64-linux-gnu/11/include/stddef.h \
 ../sysdeps/unix/sysv/linux/bits/types/stack_t.h \
 ../sysdeps/unix/sysv/linux/aarch64/sys/ucontext.h \
 ../sysdeps/unix/sysv/linux/sys/procfs.h ../include/sys/time.h \
 ../time/sys/time.h ../include/bits/types/struct_timeval.h \
 ../time/bits/types/struct_timeval.h ../include/sys/select.h \
 ../misc/sys/select.h ../bits/select.h ../include/struct___timeval64.h \
 ../include/sys/types.h ../posix/sys/types.h \
 ../include/bits/types/clock_t.h ../time/bits/types/clock_t.h \
 ../include/bits/types/clockid_t.h ../time/bits/types/clockid_t.h \
 ../include/bits/types/timer_t.h ../time/bits/types/timer_t.h \
 ../bits/stdint-intn.h ../include/endian.h ../string/endian.h \
 ../bits/byteswap.h ../bits/uintn-identity.h \
 ../sysdeps/nptl/bits/pthreadtypes.h \
 ../sysdeps/nptl/bits/thread-shared-types.h \
 ../sysdeps/aarch64/nptl/bits/pthreadtypes-arch.h \
 ../sysdeps/nptl/bits/struct_mutex.h \
 ../sysdeps/aarch64/nptl/bits/struct_rwlock.h \
 ../sysdeps/unix/sysv/linux/aarch64/sys/user.h \
 ../sysdeps/unix/sysv/linux/aarch64/bits/procfs.h \
 ../sysdeps/unix/sysv/linux/bits/procfs-id.h \
 ../sysdeps/unix/sysv/linux/bits/procfs-prregset.h \
 ../sysdeps/unix/sysv/linux/bits/procfs-extra.h \
 ../include/bits/sigstack.h \
 ../sysdeps/unix/sysv/linux/aarch64/bits/sigstack.h \
 ../include/bits/sigstksz.h ../sysdeps/unix/sysv/linux/bits/sigstksz.h \
 ../include/unistd.h ../posix/unistd.h \
 ../sysdeps/unix/sysv/linux/bits/posix_opt.h ../bits/environments.h \
 ../bits/confname.h ../include/bits/getopt_posix.h \
 ../posix/bits/getopt_posix.h ../include/bits/getopt_core.h \
 ../posix/bits/getopt_core.h ../include/bits/unistd_ext.h \
 ../sysdeps/unix/sysv/linux/bits/unistd_ext.h \
 /usr/include/linux/close_range.h \
 ../sysdeps/unix/sysv/linux/bits/ss_flags.h \
 ../include/bits/types/struct_sigstack.h \
 ../signal/bits/types/struct_sigstack.h \
 ../sysdeps/pthread/bits/sigthread.h \
 ../sysdeps/unix/sysv/linux/bits/signal_ext.h \
 ../sysdeps/unix/sysv/linux/sigsetops.h ../include/limits.h \
 ../bits/libc-header-start.h \
 /usr/lib/gcc/aarch64-linux-gnu/11/include/limits.h \
 ../include/bits/posix1_lim.h ../posix/bits/posix1_lim.h \
 ../sysdeps/unix/sysv/linux/bits/local_lim.h /usr/include/linux/limits.h \
 ../sysdeps/unix/sysv/linux/include/bits/pthread_stack_min-dynamic.h \
 ../sysdeps/unix/sysv/linux/aarch64/bits/pthread_stack_min.h \
 ../include/bits/posix2_lim.h ../posix/bits/posix2_lim.h \
 ../include/bits/xopen_lim.h ../sysdeps/unix/sysv/linux/bits/uio_lim.h \
 ../include/libc-pointer-arith.h ../include/stdint.h ../stdlib/stdint.h \
 ../bits/wchar.h ../bits/stdint-uintn.h
../include/stdc-predef.h:
$(common-objpfx)libc-modules.h:
../include/libc-symbols.h:
$(common-objpfx)config.h:
../sysdeps/generic/libc-symver.h:
../sysdeps/generic/symbol-hacks.h:
../support/check.h:
../include/sys/cdefs.h:
../misc/sys/cdefs.h:
../include/features.h:
../include/features-time64.h:
../sysdeps/unix/sysv/linux/features-time64.h:
../sysdeps/aarch64/bits/wordsize.h:
../bits/timesize.h:
../include/gnu/stubs.h:
../sysdeps/ieee754/ldbl-128/bits/long-double.h:
../support/xsignal.h:
../include/signal.h:
../signal/signal.h:
../include/bits/types.h:
../posix/bits/types.h:
../sysdeps/unix/sysv/linux/generic/bits/typesizes.h:
../bits/time64.h:
../bits/signum-generic.h:
../sysdeps/unix/sysv/linux/bits/signum-arch.h:
../include/bits/types/sig_atomic_t.h:
../signal/bits/types/sig_atomic_t.h:
../include/bits/types/sigset_t.h:
../signal/bits/types/sigset_t.h:
../sysdeps/unix/sysv/linux/bits/types/__sigset_t.h:
../include/bits/types/struct_timespec.h:
../time/bits/types/struct_timespec.h:
../include/bits/endian.h:
../string/bits/endian.h:
../sysdeps/aarch64/bits/endianness.h:
../include/bits/types/time_t.h:
../time/bits/types/time_t.h:
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
/usr/lib/gcc/aarch64-linux-gnu/11/include/stddef.h:
../sysdeps/unix/sysv/linux/bits/types/stack_t.h:
../sysdeps/unix/sysv/linux/aarch64/sys/ucontext.h:
../sysdeps/unix/sysv/linux/sys/procfs.h:
../include/sys/time.h:
../time/sys/time.h:
../include/bits/types/struct_timeval.h:
../time/bits/types/struct_timeval.h:
../include/sys/select.h:
../misc/sys/select.h:
../bits/select.h:
../include/struct___timeval64.h:
../include/sys/types.h:
../posix/sys/types.h:
../include/bits/types/clock_t.h:
../time/bits/types/clock_t.h:
../include/bits/types/clockid_t.h:
../time/bits/types/clockid_t.h:
../include/bits/types/timer_t.h:
../time/bits/types/timer_t.h:
../bits/stdint-intn.h:
../include/endian.h:
../string/endian.h:
../bits/byteswap.h:
../bits/uintn-identity.h:
../sysdeps/nptl/bits/pthreadtypes.h:
../sysdeps/nptl/bits/thread-shared-types.h:
../sysdeps/aarch64/nptl/bits/pthreadtypes-arch.h:
../sysdeps/nptl/bits/struct_mutex.h:
../sysdeps/aarch64/nptl/bits/struct_rwlock.h:
../sysdeps/unix/sysv/linux/aarch64/sys/user.h:
../sysdeps/unix/sysv/linux/aarch64/bits/procfs.h:
../sysdeps/unix/sysv/linux/bits/procfs-id.h:
../sysdeps/unix/sysv/linux/bits/procfs-prregset.h:
../sysdeps/unix/sysv/linux/bits/procfs-extra.h:
../include/bits/sigstack.h:
../sysdeps/unix/sysv/linux/aarch64/bits/sigstack.h:
../include/bits/sigstksz.h:
../sysdeps/unix/sysv/linux/bits/sigstksz.h:
../include/unistd.h:
../posix/unistd.h:
../sysdeps/unix/sysv/linux/bits/posix_opt.h:
../bits/environments.h:
../bits/confname.h:
../include/bits/getopt_posix.h:
../posix/bits/getopt_posix.h:
../include/bits/getopt_core.h:
../posix/bits/getopt_core.h:
../include/bits/unistd_ext.h:
../sysdeps/unix/sysv/linux/bits/unistd_ext.h:
/usr/include/linux/close_range.h:
../sysdeps/unix/sysv/linux/bits/ss_flags.h:
../include/bits/types/struct_sigstack.h:
../signal/bits/types/struct_sigstack.h:
../sysdeps/pthread/bits/sigthread.h:
../sysdeps/unix/sysv/linux/bits/signal_ext.h:
../sysdeps/unix/sysv/linux/sigsetops.h:
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
../include/libc-pointer-arith.h:
../include/stdint.h:
../stdlib/stdint.h:
../bits/wchar.h:
../bits/stdint-uintn.h:
