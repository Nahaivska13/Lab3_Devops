#!/bin/bash
builddir=`dirname "$0"`
GCONV_PATH="${builddir}/iconvdata"

usage () {
cat << EOF
Usage: $0 [OPTIONS] <program> [ARGUMENTS...]

  --tool=TOOL  Run with the specified TOOL. It can be strace, valgrind or
               container. The container will run within support/test-container.
EOF

  exit 1
}

toolname=default
while test $# -gt 0 ; do
  case "$1" in
    --tool=*)
      toolname="${1:7}"
      shift
      ;;
    --*)
      usage
      ;;
    *)
      break
      ;;
  esac
done

if test $# -eq 0 ; then
  usage
fi

case "$toolname" in
  default)
    exec   env GCONV_PATH="${builddir}"/iconvdata LOCPATH="${builddir}"/localedata LC_ALL=C  "${builddir}"/elf/ld-linux-aarch64.so.1 --library-path "${builddir}":"${builddir}"/math:"${builddir}"/elf:"${builddir}"/dlfcn:"${builddir}"/nss:"${builddir}"/nis:"${builddir}"/rt:"${builddir}"/resolv:"${builddir}"/mathvec:"${builddir}"/support:"${builddir}"/crypt:"${builddir}"/nptl ${1+"$@"}
    ;;
  strace)
    exec strace  -EGCONV_PATH=/home/ubuntu/Lab3_Devops/glibc-2.34/build/iconvdata  -ELOCPATH=/home/ubuntu/Lab3_Devops/glibc-2.34/build/localedata  -ELC_ALL=C  /home/ubuntu/Lab3_Devops/glibc-2.34/build/elf/ld-linux-aarch64.so.1 --library-path /home/ubuntu/Lab3_Devops/glibc-2.34/build:/home/ubuntu/Lab3_Devops/glibc-2.34/build/math:/home/ubuntu/Lab3_Devops/glibc-2.34/build/elf:/home/ubuntu/Lab3_Devops/glibc-2.34/build/dlfcn:/home/ubuntu/Lab3_Devops/glibc-2.34/build/nss:/home/ubuntu/Lab3_Devops/glibc-2.34/build/nis:/home/ubuntu/Lab3_Devops/glibc-2.34/build/rt:/home/ubuntu/Lab3_Devops/glibc-2.34/build/resolv:/home/ubuntu/Lab3_Devops/glibc-2.34/build/mathvec:/home/ubuntu/Lab3_Devops/glibc-2.34/build/support:/home/ubuntu/Lab3_Devops/glibc-2.34/build/crypt:/home/ubuntu/Lab3_Devops/glibc-2.34/build/nptl ${1+"$@"}
    ;;
  valgrind)
    exec env GCONV_PATH=/home/ubuntu/Lab3_Devops/glibc-2.34/build/iconvdata LOCPATH=/home/ubuntu/Lab3_Devops/glibc-2.34/build/localedata LC_ALL=C valgrind  /home/ubuntu/Lab3_Devops/glibc-2.34/build/elf/ld-linux-aarch64.so.1 --library-path /home/ubuntu/Lab3_Devops/glibc-2.34/build:/home/ubuntu/Lab3_Devops/glibc-2.34/build/math:/home/ubuntu/Lab3_Devops/glibc-2.34/build/elf:/home/ubuntu/Lab3_Devops/glibc-2.34/build/dlfcn:/home/ubuntu/Lab3_Devops/glibc-2.34/build/nss:/home/ubuntu/Lab3_Devops/glibc-2.34/build/nis:/home/ubuntu/Lab3_Devops/glibc-2.34/build/rt:/home/ubuntu/Lab3_Devops/glibc-2.34/build/resolv:/home/ubuntu/Lab3_Devops/glibc-2.34/build/mathvec:/home/ubuntu/Lab3_Devops/glibc-2.34/build/support:/home/ubuntu/Lab3_Devops/glibc-2.34/build/crypt:/home/ubuntu/Lab3_Devops/glibc-2.34/build/nptl ${1+"$@"}
    ;;
  container)
    exec env GCONV_PATH=/home/ubuntu/Lab3_Devops/glibc-2.34/build/iconvdata LOCPATH=/home/ubuntu/Lab3_Devops/glibc-2.34/build/localedata LC_ALL=C  /home/ubuntu/Lab3_Devops/glibc-2.34/build/elf/ld-linux-aarch64.so.1 --library-path /home/ubuntu/Lab3_Devops/glibc-2.34/build:/home/ubuntu/Lab3_Devops/glibc-2.34/build/math:/home/ubuntu/Lab3_Devops/glibc-2.34/build/elf:/home/ubuntu/Lab3_Devops/glibc-2.34/build/dlfcn:/home/ubuntu/Lab3_Devops/glibc-2.34/build/nss:/home/ubuntu/Lab3_Devops/glibc-2.34/build/nis:/home/ubuntu/Lab3_Devops/glibc-2.34/build/rt:/home/ubuntu/Lab3_Devops/glibc-2.34/build/resolv:/home/ubuntu/Lab3_Devops/glibc-2.34/build/mathvec:/home/ubuntu/Lab3_Devops/glibc-2.34/build/support:/home/ubuntu/Lab3_Devops/glibc-2.34/build/crypt:/home/ubuntu/Lab3_Devops/glibc-2.34/build/nptl /home/ubuntu/Lab3_Devops/glibc-2.34/build/support/test-container env GCONV_PATH=/home/ubuntu/Lab3_Devops/glibc-2.34/build/iconvdata LOCPATH=/home/ubuntu/Lab3_Devops/glibc-2.34/build/localedata LC_ALL=C  /home/ubuntu/Lab3_Devops/glibc-2.34/build/elf/ld-linux-aarch64.so.1 --library-path /home/ubuntu/Lab3_Devops/glibc-2.34/build:/home/ubuntu/Lab3_Devops/glibc-2.34/build/math:/home/ubuntu/Lab3_Devops/glibc-2.34/build/elf:/home/ubuntu/Lab3_Devops/glibc-2.34/build/dlfcn:/home/ubuntu/Lab3_Devops/glibc-2.34/build/nss:/home/ubuntu/Lab3_Devops/glibc-2.34/build/nis:/home/ubuntu/Lab3_Devops/glibc-2.34/build/rt:/home/ubuntu/Lab3_Devops/glibc-2.34/build/resolv:/home/ubuntu/Lab3_Devops/glibc-2.34/build/mathvec:/home/ubuntu/Lab3_Devops/glibc-2.34/build/support:/home/ubuntu/Lab3_Devops/glibc-2.34/build/crypt:/home/ubuntu/Lab3_Devops/glibc-2.34/build/nptl ${1+"$@"}
    ;;
  *)
    usage
    ;;
esac
