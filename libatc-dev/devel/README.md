Introduction
============

USGS has not released a reasonable Linux version of LIBANNE.  This work was
undertaken by Tim Cera, P.E. in early 2006 initially based on the USGS libanne
library for Solaris.  Significant improvements and bug fixes have been made by
Tom Jobes.  For this work, both Tim Cera and Tom Jobes were employed by the
St. Johns River Water Management District (SJRWMD).

This code base is now based on the Aqua Terra development code.  There have
been some exchange of bug fixes and features between Aqua Terra and the
SJRWMD.

Aqua Terra has not identified consistently numbered releases, and so really
this code also does not have a release either.

Warnings
========

The SJRWMD accept no liability...etc.

On Cygwin, this code has had only minimal testing and may do any number of
unintentional things.  Like eat your cat.

Prerequsites
============

- Fortran compiler::

   Portland Group (pgfortran)
   Intel (ifort)
   gfortran

- CMake::

   Install cmake for your platform. Download from http://cmake.org

- make::

   Need the 'make' build environment.

Install
=======

The 'cmake' program looks at the environment to establish how to make the
makefiles.  One important environment variable is 'FC'.  Set it to the
Fortran compiler that you want to use to build the library.

If using csh/tcsh::

    set FC gfortran

If using sh/bash::

    export FC=gfortran

You should unset the FCFLAGS and FFLAGS if you have them set.

The approach that 'cmake' allows is what is called an 'out of source' build.
The building of the library or executable is not inside the source directory.
One big benefit is that you can have a directory for a debug version and
a directory for a release version.  By changing the FC variable before you run
'cmake' you can even have builds from different compilers in different
directories.

1. Untar/uncompress:

    tar xzvf hspf_lib.tar.gz

    Having this step here is funny since accomplishing this step is the only 
    way that you could be reading this document.

2. Change directory into libatc-dev.

    cd libatc-dev

3. Create a build directory.  Make the name descriptive.

    mkdir release_gfortran

4. Change directory into build directory created in step 2.

    cd release_gfortran

5. Run cmake. Answer questions, most can just accept default.  Decide upon the
type of the build ('Release', 'Debug', ...etc.) and the install location.
There is also a GUI version of cmake if you want to use that.

    cmake -i ../devel

6. Run make.

    make

7. Install.

    make install

Use
===

The USGSHOME environment variable has to be set to the location of the parent
install directory.

Inclusion of '${USGSHOME}/bin' into the PATH environment variable is up to the
user, though does make it very convenient to run 'hspf' from any directory.

Changes
=======

- The 'unformatted' FORTRAN binary file is misnamed.  It does have a format,
  it is just that the format is specified by the compiler.  This means that
  the 'unformatted' format can even change between compiler versions from the
  same manufacturer!  The GenScn application was programmed to read the HSPF
  binary file format as created by the Windows Lahey compiler.  Compiling the
  HSPF code with any other compiler meant that the binary output file was then
  inaccessible to GenScn.  Generic HSPF binary output file code was developed
  to create a Windows Lahey formatted, 'unformatted' file.  Tom Jobes

- A flag was added to allow the use of the surface F-Tables separately from
  the rest of the high water table machinery.  Tom Jobes

- Increased number of special actions.  Tom Jobes

- Identical include files moved to a common include directory.  Tim Cera

- Developed cross-platform cmake build environment builder.  Tim Cera

