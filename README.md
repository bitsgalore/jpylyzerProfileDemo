# Demo: check if JP2 file matches a technical profile 


## About
Simple (Windows-only) demo shows use of [Jpylyzer][1] and [Schematron][3] to check if a JP2's properties match a user-defined profile. **All files in this repository are provided for demonstration purposes only!**

## Contents
1. *balloon.jp2*, *balloon_eciRGB.jp2* - test images<sup>*</sup>
2. *demoAccessLossy.sch* - schematron file that represents technical profile  
3. *profileCheckDemo.bat* - batch file that runs the demo



## Required software components

1. Windows executable of jpylyzer: [http://www.openplanetsfoundation.org/software/jpylyzer][1]
2. Probatron executable for Java: [http://www.probatron.org/probatron4j.html][2]
3. Java 1.5 or more recent (requirement of Probatron)

## How to use the demo
1. Install all required software components
2. Open batch file and update values of *jpylyzer*, *java* and *probatron* variables in *Configuration* section
3. Run the batch file
4. Look at the output that is generated (preferrably in an *XML* viewer/editor)

##Image attribution

<sup>*</sup>Created from the following source image: 


[http://commons.wikimedia.org/wiki/File:1783_balloonj.jpg](http://commons.wikimedia.org/wiki/File:1783_balloonj.jpg "http://commons.wikimedia.org/wiki/File:1783_balloonj.jpg")

> 1786 description of the historic Montgolfier Brothers' 1783 balloon flight. Illustration with engineering proportions and description.

Public Domain.
   

[1]: http://www.openplanetsfoundation.org/software/jpylyzer
[2]: http://www.probatron.org/probatron4j.html
[3]: http://en.wikipedia.org/wiki/Schematron