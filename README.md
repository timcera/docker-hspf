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

Use
===
```
   docker pull timcera/docker-hspf
```

Change directory to the location of the UCI and WDM files for your model.

```
   cd /path/to/model
```

Run the docker image

```
   docker run -v /path/to/model:/home/hspf timcera/docker-hspf input.uci
```

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

