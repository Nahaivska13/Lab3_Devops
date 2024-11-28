/* Frees the dynamically allocated storage from an earlier call to glob.
   Linux version.
   Copyright (C) 2021 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

#include <sys/stat.h>

#if __TIMESIZE != 64
# include <glob.h>
# include <dirent.h>
# include <sys/stat.h>

# define glob_t glob64_time64_t
# define globfree(pglob) __globfree64_time64 (pglob)

# undef stat
# define stat __stat64_t64

# include <posix/globfree.c>
libc_hidden_def (__globfree64_time64)
#endif
