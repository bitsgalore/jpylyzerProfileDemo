@ECHO OFF

:: ----------------------------
:: Demo: check of JP2's properties match user-defined profile using jpylyzer output
:: JvdK, 3 September 2012
:: ----------------------------

:: ----------------------------
:: Required software components:
:: ----------------------------
:: 1. Windows executable of jpylyzer: http://www.openplanetsfoundation.org/software/jpylyzer
:: 2. Probatron executable for Java:http://www.probatron.org/probatron4j.html
:: 3. Java 1.5 or more recent (requirement of Probatron)
::
:: ----------------------------
:: How to run this demo:
:: ----------------------------
:: 1. Install all required software components
:: 2. Update values of 'jpylyzer', 'java' and 'probatron' in 'Configuration' section below
:: 3. Run the batch file

:: ----------------------------
:: Configuration: paths to software
:: ----------------------------

set jpylyzer="c:\tools\jpylyzer\jpylyzer"
set java="C:\Program Files\Java\jre6\bin\java"
set probatron="C:\tools\probatron.jar"

:: ----------------------------
:: Schematron schemas for master/access
:: ----------------------------

set schemaAccess="demoAccessLossy.sch"

:: ----------------------------
:: Quality check JP2 access: non-conforming image
:: ----------------------------

:: Step 1: run jpylyzer to validate JP2 and extract its properties. Output redirected to file
%jpylyzer% balloon.jp2 > balloon_jp2.xml

:: Step 2: verify that properties match profile by validating jpylyzer output against schema
%java% -jar %probatron% balloon_jp2.xml %schemaAccess% > balloon_jp2_assessment.xml

:: ----------------------------
:: Quality check JP2 access: conforming image
:: ----------------------------

:: Step 1: run jpylyzer to validate JP2 and extract its properties. Output redirected to file
%jpylyzer% balloon_eciRGB.jp2 > balloon_eciRGB_jp2.xml

:: Step 2: verify that properties match profile by validating jpylyzer output against schema
%java% -jar %probatron% balloon_eciRGB_jp2.xml %schemaAccess% > balloon_eciRGB_jp2_assessment.xml
