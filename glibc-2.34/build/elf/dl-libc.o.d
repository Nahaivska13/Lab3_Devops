$(common-objpfx)elf/dl-libc.o: dl-libc.c \
 ../include/stdc-predef.h \
 $(common-objpfx)libc-modules.h \
 ../include/libc-symbols.h \
 $(common-objpfx)config.h \
 ../sysdeps/generic/libc-symver.h ../sysdeps/generic/symbol-hacks.h \
 ../include/dlfcn.h ../dlfcn/dlfcn.h ../include/features.h \
 ../include/features-time64.h \
 ../sysdeps/unix/sysv/linux/features-time64.h \
 ../sysdeps/aarch64/bits/wordsize.h ../bits/timesize.h \
 ../include/sys/cdefs.h ../misc/sys/cdefs.h \
 ../sysdeps/ieee754/ldbl-128/bits/long-double.h ../include/gnu/stubs.h \
 /usr/lib/gcc/aarch64-linux-gnu/11/include/stddef.h \
 ../include/bits/dlfcn.h ../bits/dlfcn.h ../include/link.h ../elf/link.h \
 ../include/elf.h ../elf/elf.h ../include/stdint.h ../stdlib/stdint.h \
 ../bits/libc-header-start.h ../include/bits/types.h \
 ../posix/bits/types.h \
 ../sysdeps/unix/sysv/linux/generic/bits/typesizes.h ../bits/time64.h \
 ../bits/wchar.h ../bits/stdint-intn.h ../bits/stdint-uintn.h \
 ../include/libc-pointer-arith.h ../sysdeps/aarch64/dl-dtprocnum.h \
 ../include/sys/types.h ../posix/sys/types.h \
 ../include/bits/types/clock_t.h ../time/bits/types/clock_t.h \
 ../include/bits/types/clockid_t.h ../time/bits/types/clockid_t.h \
 ../include/bits/types/time_t.h ../time/bits/types/time_t.h \
 ../include/bits/types/timer_t.h ../time/bits/types/timer_t.h \
 ../include/endian.h ../string/endian.h ../include/bits/endian.h \
 ../string/bits/endian.h ../sysdeps/aarch64/bits/endianness.h \
 ../bits/byteswap.h ../bits/uintn-identity.h ../include/sys/select.h \
 ../misc/sys/select.h ../bits/select.h ../include/bits/types/sigset_t.h \
 ../signal/bits/types/sigset_t.h \
 ../sysdeps/unix/sysv/linux/bits/types/__sigset_t.h \
 ../include/bits/types/struct_timeval.h \
 ../time/bits/types/struct_timeval.h \
 ../include/bits/types/struct_timespec.h \
 ../time/bits/types/struct_timespec.h ../sysdeps/nptl/bits/pthreadtypes.h \
 ../sysdeps/nptl/bits/thread-shared-types.h \
 ../sysdeps/aarch64/nptl/bits/pthreadtypes-arch.h \
 ../sysdeps/nptl/bits/struct_mutex.h \
 ../sysdeps/aarch64/nptl/bits/struct_rwlock.h ../bits/elfclass.h \
 ../sysdeps/aarch64/bits/link.h ../sysdeps/aarch64/linkmap.h \
 /usr/lib/gcc/aarch64-linux-gnu/11/include/stdbool.h \
 ../sysdeps/posix/dl-fileid.h ../include/sys/stat.h ../io/sys/stat.h \
 ../sysdeps/unix/sysv/linux/bits/stat.h \
 ../sysdeps/unix/sysv/linux/generic/bits/struct_stat.h \
 ../include/bits/statx.h ../io/bits/statx.h \
 ../include/bits/statx-generic.h ../io/bits/statx-generic.h \
 ../include/bits/types/struct_statx_timestamp.h \
 ../io/bits/types/struct_statx_timestamp.h \
 ../include/bits/types/struct_statx.h ../io/bits/types/struct_statx.h \
 ../sysdeps/unix/sysv/linux/generic/xstatver.h \
 ../include/struct___timespec64.h \
 ../sysdeps/unix/sysv/linux/struct_stat_time64.h \
 ../sysdeps/aarch64/dl-lookupcfg.h ../sysdeps/generic/dl-lookupcfg.h \
 ../sysdeps/aarch64/nptl/tls.h ../sysdeps/unix/sysv/linux/dl-sysdep.h \
 ../sysdeps/aarch64/dl-sysdep.h ../sysdeps/generic/dl-sysdep.h \
 ../sysdeps/generic/dl-dtv.h ../sysdeps/unix/sysv/linux/aarch64/sysdep.h \
 ../sysdeps/unix/sysdep.h ../sysdeps/generic/sysdep.h \
 ../sysdeps/generic/dwarf2.h ../sysdeps/unix/sysv/linux/single-thread.h \
 ../sysdeps/unix/sysv/linux/include/sys/syscall.h \
 ../sysdeps/unix/sysv/linux/aarch64/arch-syscall.h \
 ../sysdeps/aarch64/sysdep.h ../sysdeps/unix/sysv/linux/generic/sysdep.h \
 ../sysdeps/unix/sysv/linux/aarch64/kernel-features.h \
 ../sysdeps/unix/sysv/linux/kernel-features.h \
 ../sysdeps/unix/sysv/linux/sysdep.h ../include/errno.h ../stdlib/errno.h \
 ../sysdeps/unix/sysv/linux/bits/errno.h /usr/include/linux/errno.h \
 /usr/include/aarch64-linux-gnu/asm/errno.h \
 /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
 ../bits/types/error_t.h ../nptl/descr.h ../include/limits.h \
 /usr/lib/gcc/aarch64-linux-gnu/11/include/limits.h \
 ../include/bits/posix1_lim.h ../posix/bits/posix1_lim.h \
 ../sysdeps/unix/sysv/linux/bits/local_lim.h /usr/include/linux/limits.h \
 ../sysdeps/unix/sysv/linux/include/bits/pthread_stack_min-dynamic.h \
 ../sysdeps/unix/sysv/linux/aarch64/bits/pthread_stack_min.h \
 ../include/bits/posix2_lim.h ../posix/bits/posix2_lim.h \
 ../include/bits/xopen_lim.h ../sysdeps/unix/sysv/linux/bits/uio_lim.h \
 ../include/sched.h ../posix/sched.h \
 ../sysdeps/unix/sysv/linux/bits/sched.h \
 ../bits/types/struct_sched_param.h ../include/bits/cpu-set.h \
 ../posix/bits/cpu-set.h ../include/setjmp.h ../setjmp/setjmp.h \
 ../sysdeps/aarch64/bits/setjmp.h \
 ../include/bits/types/struct___jmp_buf_tag.h \
 ../setjmp/bits/types/struct___jmp_buf_tag.h \
 ../sysdeps/unix/sysv/linux/aarch64/jmp_buf-macros.h \
 ../sysdeps/aarch64/hp-timing.h ../include/time.h ../time/time.h \
 ../sysdeps/unix/sysv/linux/bits/time.h \
 ../sysdeps/unix/sysv/linux/bits/timex.h \
 ../include/bits/types/struct_tm.h ../time/bits/types/struct_tm.h \
 ../include/bits/types/struct_itimerspec.h \
 ../time/bits/types/struct_itimerspec.h ../include/bits/types/locale_t.h \
 ../locale/bits/types/locale_t.h ../include/bits/types/__locale_t.h \
 ../locale/bits/types/__locale_t.h ../include/struct___timeval64.h \
 ../time/mktime-internal.h ../include/sys/time.h ../time/sys/time.h \
 ../sysdeps/unix/sysv/linux/time-clockid.h \
 ../sysdeps/generic/hp-timing-common.h ../include/string.h \
 ../include/locale.h ../locale/locale.h ../include/bits/locale.h \
 ../locale/bits/locale.h ../sysdeps/aarch64/string_private.h \
 ../string/string.h ../include/strings.h ../string/strings.h \
 ../include/sys/param.h ../misc/sys/param.h ../include/signal.h \
 ../signal/signal.h ../bits/signum-generic.h \
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
 ../sysdeps/unix/sysv/linux/sys/procfs.h \
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
 ../sysdeps/unix/sysv/linux/sigsetops.h \
 ../sysdeps/unix/sysv/linux/bits/param.h /usr/include/linux/param.h \
 /usr/include/aarch64-linux-gnu/asm/param.h \
 /usr/include/asm-generic/param.h ../sysdeps/generic/_itoa.h \
 ../include/libc-symbols.h ../include/list_t.h \
 ../sysdeps/nptl/lowlevellock.h ../include/atomic.h ../include/stdlib.h \
 ../sysdeps/ieee754/ldbl-128/bits/floatn.h ../bits/floatn-common.h \
 ../stdlib/stdlib.h ../sysdeps/unix/sysv/linux/bits/waitflags.h \
 ../bits/waitstatus.h ../include/alloca.h ../stdlib/alloca.h \
 ../include/stackinfo.h ../sysdeps/aarch64/stackinfo.h \
 ../sysdeps/pthread/allocalim.h ../bits/stdlib-bsearch.h \
 ../include/bits/stdlib-float.h ../stdlib/bits/stdlib-float.h \
 ../include/rtld-malloc.h ../sysdeps/aarch64/atomic-machine.h \
 ../sysdeps/pthread/elision-conf.h ../sysdeps/nptl/lowlevellock-futex.h \
 ../sysdeps/unix/sysv/linux/sysdep-cancel.h \
 ../sysdeps/aarch64/nptl/pthreaddef.h ../sysdeps/nptl/thread_db.h \
 ../include/pthread.h ../sysdeps/nptl/pthread.h \
 ../sysdeps/generic/unwind.h ../include/bits/types/res_state.h \
 ../resolv/bits/types/res_state.h ../include/netinet/in.h \
 ../inet/netinet/in.h ../include/sys/socket.h ../socket/sys/socket.h \
 ../include/bits/types/struct_iovec.h ../misc/bits/types/struct_iovec.h \
 ../sysdeps/unix/sysv/linux/bits/socket.h \
 ../sysdeps/unix/sysv/linux/bits/socket_type.h ../bits/sockaddr.h \
 /usr/include/aarch64-linux-gnu/asm/socket.h \
 /usr/include/asm-generic/socket.h \
 /usr/include/aarch64-linux-gnu/asm/sockios.h \
 /usr/include/asm-generic/sockios.h \
 ../include/bits/types/struct_osockaddr.h \
 ../socket/bits/types/struct_osockaddr.h \
 ../sysdeps/unix/sysv/linux/bits/in.h \
 ../sysdeps/generic/tls-internal-struct.h ../sysdeps/nptl/libc-lock.h \
 ../sysdeps/nptl/libc-lockP.h ../sysdeps/generic/link_map.h \
 ../sysdeps/unix/sysv/linux/ldsodefs.h ../sysdeps/gnu/ldsodefs.h \
 $(common-objpfx)libc-abis.h \
 ../sysdeps/aarch64/ldsodefs.h \
 ../sysdeps/unix/sysv/linux/aarch64/cpu-features.h \
 ../sysdeps/generic/ldsodefs.h ../include/fpu_control.h \
 ../sysdeps/aarch64/fpu/fpu_control.h ../include/sys/mman.h \
 ../misc/sys/mman.h ../sysdeps/unix/sysv/linux/aarch64/bits/mman.h \
 ../sysdeps/unix/sysv/linux/bits/mman-map-flags-generic.h \
 ../sysdeps/unix/sysv/linux/bits/mman-linux.h \
 ../sysdeps/unix/sysv/linux/bits/mman-shared.h \
 ../sysdeps/generic/dl-procruntime.c \
 ../sysdeps/unix/sysv/linux/aarch64/dl-procinfo.c \
 ../sysdeps/unix/sysv/linux/dl-vdso-setup.c ../sysdeps/generic/dl-hash.h
../include/stdc-predef.h:
$(common-objpfx)libc-modules.h:
../include/libc-symbols.h:
$(common-objpfx)config.h:
../sysdeps/generic/libc-symver.h:
../sysdeps/generic/symbol-hacks.h:
../include/dlfcn.h:
../dlfcn/dlfcn.h:
../include/features.h:
../include/features-time64.h:
../sysdeps/unix/sysv/linux/features-time64.h:
../sysdeps/aarch64/bits/wordsize.h:
../bits/timesize.h:
../include/sys/cdefs.h:
../misc/sys/cdefs.h:
../sysdeps/ieee754/ldbl-128/bits/long-double.h:
../include/gnu/stubs.h:
/usr/lib/gcc/aarch64-linux-gnu/11/include/stddef.h:
../include/bits/dlfcn.h:
../bits/dlfcn.h:
../include/link.h:
../elf/link.h:
../include/elf.h:
../elf/elf.h:
../include/stdint.h:
../stdlib/stdint.h:
../bits/libc-header-start.h:
../include/bits/types.h:
../posix/bits/types.h:
../sysdeps/unix/sysv/linux/generic/bits/typesizes.h:
../bits/time64.h:
../bits/wchar.h:
../bits/stdint-intn.h:
../bits/stdint-uintn.h:
../include/libc-pointer-arith.h:
../sysdeps/aarch64/dl-dtprocnum.h:
../include/sys/types.h:
../posix/sys/types.h:
../include/bits/types/clock_t.h:
../time/bits/types/clock_t.h:
../include/bits/types/clockid_t.h:
../time/bits/types/clockid_t.h:
../include/bits/types/time_t.h:
../time/bits/types/time_t.h:
../include/bits/types/timer_t.h:
../time/bits/types/timer_t.h:
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
../bits/elfclass.h:
../sysdeps/aarch64/bits/link.h:
../sysdeps/aarch64/linkmap.h:
/usr/lib/gcc/aarch64-linux-gnu/11/include/stdbool.h:
../sysdeps/posix/dl-fileid.h:
../include/sys/stat.h:
../io/sys/stat.h:
../sysdeps/unix/sysv/linux/bits/stat.h:
../sysdeps/unix/sysv/linux/generic/bits/struct_stat.h:
../include/bits/statx.h:
../io/bits/statx.h:
../include/bits/statx-generic.h:
../io/bits/statx-generic.h:
../include/bits/types/struct_statx_timestamp.h:
../io/bits/types/struct_statx_timestamp.h:
../include/bits/types/struct_statx.h:
../io/bits/types/struct_statx.h:
../sysdeps/unix/sysv/linux/generic/xstatver.h:
../include/struct___timespec64.h:
../sysdeps/unix/sysv/linux/struct_stat_time64.h:
../sysdeps/aarch64/dl-lookupcfg.h:
../sysdeps/generic/dl-lookupcfg.h:
../sysdeps/aarch64/nptl/tls.h:
../sysdeps/unix/sysv/linux/dl-sysdep.h:
../sysdeps/aarch64/dl-sysdep.h:
../sysdeps/generic/dl-sysdep.h:
../sysdeps/generic/dl-dtv.h:
../sysdeps/unix/sysv/linux/aarch64/sysdep.h:
../sysdeps/unix/sysdep.h:
../sysdeps/generic/sysdep.h:
../sysdeps/generic/dwarf2.h:
../sysdeps/unix/sysv/linux/single-thread.h:
../sysdeps/unix/sysv/linux/include/sys/syscall.h:
../sysdeps/unix/sysv/linux/aarch64/arch-syscall.h:
../sysdeps/aarch64/sysdep.h:
../sysdeps/unix/sysv/linux/generic/sysdep.h:
../sysdeps/unix/sysv/linux/aarch64/kernel-features.h:
../sysdeps/unix/sysv/linux/kernel-features.h:
../sysdeps/unix/sysv/linux/sysdep.h:
../include/errno.h:
../stdlib/errno.h:
../sysdeps/unix/sysv/linux/bits/errno.h:
/usr/include/linux/errno.h:
/usr/include/aarch64-linux-gnu/asm/errno.h:
/usr/include/asm-generic/errno.h:
/usr/include/asm-generic/errno-base.h:
../bits/types/error_t.h:
../nptl/descr.h:
../include/limits.h:
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
../include/sched.h:
../posix/sched.h:
../sysdeps/unix/sysv/linux/bits/sched.h:
../bits/types/struct_sched_param.h:
../include/bits/cpu-set.h:
../posix/bits/cpu-set.h:
../include/setjmp.h:
../setjmp/setjmp.h:
../sysdeps/aarch64/bits/setjmp.h:
../include/bits/types/struct___jmp_buf_tag.h:
../setjmp/bits/types/struct___jmp_buf_tag.h:
../sysdeps/unix/sysv/linux/aarch64/jmp_buf-macros.h:
../sysdeps/aarch64/hp-timing.h:
../include/time.h:
../time/time.h:
../sysdeps/unix/sysv/linux/bits/time.h:
../sysdeps/unix/sysv/linux/bits/timex.h:
../include/bits/types/struct_tm.h:
../time/bits/types/struct_tm.h:
../include/bits/types/struct_itimerspec.h:
../time/bits/types/struct_itimerspec.h:
../include/bits/types/locale_t.h:
../locale/bits/types/locale_t.h:
../include/bits/types/__locale_t.h:
../locale/bits/types/__locale_t.h:
../include/struct___timeval64.h:
../time/mktime-internal.h:
../include/sys/time.h:
../time/sys/time.h:
../sysdeps/unix/sysv/linux/time-clockid.h:
../sysdeps/generic/hp-timing-common.h:
../include/string.h:
../include/locale.h:
../locale/locale.h:
../include/bits/locale.h:
../locale/bits/locale.h:
../sysdeps/aarch64/string_private.h:
../string/string.h:
../include/strings.h:
../string/strings.h:
../include/sys/param.h:
../misc/sys/param.h:
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
../sysdeps/unix/sysv/linux/bits/param.h:
/usr/include/linux/param.h:
/usr/include/aarch64-linux-gnu/asm/param.h:
/usr/include/asm-generic/param.h:
../sysdeps/generic/_itoa.h:
../include/libc-symbols.h:
../include/list_t.h:
../sysdeps/nptl/lowlevellock.h:
../include/atomic.h:
../include/stdlib.h:
../sysdeps/ieee754/ldbl-128/bits/floatn.h:
../bits/floatn-common.h:
../stdlib/stdlib.h:
../sysdeps/unix/sysv/linux/bits/waitflags.h:
../bits/waitstatus.h:
../include/alloca.h:
../stdlib/alloca.h:
../include/stackinfo.h:
../sysdeps/aarch64/stackinfo.h:
../sysdeps/pthread/allocalim.h:
../bits/stdlib-bsearch.h:
../include/bits/stdlib-float.h:
../stdlib/bits/stdlib-float.h:
../include/rtld-malloc.h:
../sysdeps/aarch64/atomic-machine.h:
../sysdeps/pthread/elision-conf.h:
../sysdeps/nptl/lowlevellock-futex.h:
../sysdeps/unix/sysv/linux/sysdep-cancel.h:
../sysdeps/aarch64/nptl/pthreaddef.h:
../sysdeps/nptl/thread_db.h:
../include/pthread.h:
../sysdeps/nptl/pthread.h:
../sysdeps/generic/unwind.h:
../include/bits/types/res_state.h:
../resolv/bits/types/res_state.h:
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
../sysdeps/generic/tls-internal-struct.h:
../sysdeps/nptl/libc-lock.h:
../sysdeps/nptl/libc-lockP.h:
../sysdeps/generic/link_map.h:
../sysdeps/unix/sysv/linux/ldsodefs.h:
../sysdeps/gnu/ldsodefs.h:
$(common-objpfx)libc-abis.h:
../sysdeps/aarch64/ldsodefs.h:
../sysdeps/unix/sysv/linux/aarch64/cpu-features.h:
../sysdeps/generic/ldsodefs.h:
../include/fpu_control.h:
../sysdeps/aarch64/fpu/fpu_control.h:
../include/sys/mman.h:
../misc/sys/mman.h:
../sysdeps/unix/sysv/linux/aarch64/bits/mman.h:
../sysdeps/unix/sysv/linux/bits/mman-map-flags-generic.h:
../sysdeps/unix/sysv/linux/bits/mman-linux.h:
../sysdeps/unix/sysv/linux/bits/mman-shared.h:
../sysdeps/generic/dl-procruntime.c:
../sysdeps/unix/sysv/linux/aarch64/dl-procinfo.c:
../sysdeps/unix/sysv/linux/dl-vdso-setup.c:
../sysdeps/generic/dl-hash.h:
