
Introduction
------------

The HSPF library has to be installed first.  I have the CMake program look for
the library in the system library paths and all paths listed in the
LD_LIBRARY_PATH.

You also have to set the environment variable USGSHOME to the top most path of
the install before 'cmake' will work. 

Warnings
--------

The SJRWMD accept no liability...etc.

On Cygwin, this code has had only minimal testing and may do any number of
unintentional things.  Like eat your cat.

Prerequsites
------------

- Fortran compiler::

   Portland Group (pgfortran)
   Intel (ifort)
   gfortran

- CMake::

   Install cmake for your platform. Download from http://cmake.org

- make::

   Need the 'make' build environment.

Install
-------

1) Untar/uncompress::

    tar xzvf hspf_exec.tar.gz

    Having this step here is funny since accomplishing this step is the only 
    way that you could be reading this document.

2) Change directory into hspf-dev

    cd hspf-dev

3) Create a build directory.  Make the name descriptive.::

    mkdir release_gfortran

3) Change directory into build directory created in step 2.::

    cd release_gfortran

5) Run cmake. Answer questions, most can just accept default.  Decide upon the
type of the build ('Release', 'Debug', ...etc.) and the install location.
There is also a GUI version of cmake if you want to use that.::

    cmake -i ../devel

6) Run make.

    make

7) Install.

    make install

Use
---

The USGSHOME environment variable has to be set to the location of the parent
install directory.

Inclusion of '${USGSHOME}/bin' into the PATH environment variable is up to the
user, though does make it very convenient to run 'hspf' from any directory.

Changes
-------

- The 'unformatted' FORTRAN binary file is misnamed.  It does have a format,
  it is just that the format is specified by the compiler.  This means that
  the 'unformatted' format can even change between compiler versions from the
  same manufacturer!  The GenScn application was programmed to read the HSPF
  binary file format as created by the Windows Lahey compiler.  Compiling the
  HSPF code with any other compiler meant that the binary output file was then
  inaccessible to GenScn.  Generic HSPF binary output file code was developed
  to create a Windows Lahey formatted, 'unformatted' file.  Tom Jobes

- A flag was added to allow the use of the surface F-Tables separately from
  the rest of the high water table machinary.  Tom Jobes

- Increased number of special actions.  Tom Jobes

- Identical include files moved to a common include directory.  Tim Cera

- Developed cross-platform cmake build environment builder.  Tim Cera

