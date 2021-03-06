=== MATLAB to Doxygen ===
http://www.mathworks.com/matlabcentral/fileexchange/25925-using-doxygen-with-matlab

Copyright (c) 2009, Fabrice
All rights reserved.

Redistribution and use in source and binary forms, with or without 
modification, are permitted provided that the following conditions are 
met:

    * Redistributions of source code must retain the above copyright 
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright 
      notice, this list of conditions and the following disclaimer in 
      the documentation and/or other materials provided with the distribution
      
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE 
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
POSSIBILITY OF SUCH DAMAGE.


Description This package allows you to extract automatically comments from your Matlab .m files using Doxygen to generate documentation.
This package provides :
- a perl script (m2cpp.pl) used to filter the .m files so that Doxygen can understand them
- a template for the Doxyfile file (configuration file for Doxygen) which has to be modified according to the location of your code
- documentationGuidelines.m, an .m file which describes how you should comment your code so that Doxygen can extract it and create nice documentation
- classDocumentationExample.m : an .m file describing possible comment for classes
- all the documentation (html format) automatically generated by Doxygen from the two .m files (see Doc/html/index.html), which provides informations about installation and how to write Doxygen comments.
Installation details :
    - You need to have the Doxygen software installed (version 1.5.9 or newer required (tested with version 1.7.1))
    - You need to have perl installed (perl is shipped with Matlab, located usually in $matlabroot\sys\perl\win32\bin)
   - unzip the DoxygenMatlab.zip to C:\DoxygenMatlbab (for example)
    - get the Doxyfile file from the C:\DoxygenMatlbab directory and replace the default Doxyfile provided by Doxygen
    - edit the Doxyfile file (or use the DoxyWizard tool provided by Doxygen) to modify a few settings :
          o EXTENSION_MAPPING=.m=C++
          o FILTER_PATTERN=*m=C:\DoxygenMatlbab\m2cpp.pl
          o PERL_PATH=<path to your perl version>
          o INPUT=<directory where your documented code is located>
          o OUTPUT_DIRECTORY=<directory where you want to generate your documentation>
          o STRIP_FORM_PATH=<directory where your documented code is located>
Note for Windows users :
In certain circumstances, the association between .pl files and the perl executable is not well configured, leading to "Argument must contain filename -1 at C:\DoxygenMatlab\m2cpp.pl line 4" when running doxygen. To work around this issue, you should execute the following lines in a Windows command prompt ("cmd") :
   assoc .pl=PerlScript
   ftype PerlScript=C:\Program Files\MATLAB\R2010b\sys\perl\win32\bin\perl.exe %1 %*
(don't forget to replace the path to the perl.exe file with yours in the line above)
 
MATLAB release MATLAB 7.6 (R2008a) 
Other requirements - works with Matlab R2008a to R2010b - Doxygen 1.5.9 or newer required (tested with version 1.7.2) - perl required (usually shipped with Matlab) 

