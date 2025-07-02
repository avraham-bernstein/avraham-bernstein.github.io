
<address markdown="1">
__Author:__ Avraham "Abe" Bernstein
<br/>__Email:__ Avraham DOT Bernstein PLUS cv AT gmail<span class="hide">bozo@example.com</span> DOT com
<br/>__Tel/Whatsapp:__ +<span class="hide">bozo@example.com</span>972.54.641-0955
<br/>__City:__ Jerusalem 9727433 ISRAEL
<br/>__Time Zone:__ [UTC +02:00/+03:00 (winter/summer)](https://www.timeanddate.com/worldclock/israel/jerusalem)
<br/>__[Shabbat Observant](https://www.chabad.org/calendar/candlelighting_cdo/locationId/247/locationType/1/jewish/Candle-Lighting.htm):__ Not available Fri. evenings (Jm time) beginning 1 hour before sunset until Sat. night 1 hour after sunset, nor on [Jewish holidays](https://www.hebcal.com/holidays/2025?i=on)
<br/>__WWW:__ [https://www.avrahambernstein.com](https://www.avrahambernstein.com)
<br/>__Linkedin:__ [https://www.linkedin.com/in/avrahambernstein/](https://www.linkedin.com/in/avrahambernstein/)
<br/>__Last Update:__ 2025-05-22
</address>



## Introduction: Cr8tive Solutions To Hard Problems 

1. I have more than 40 years experience in state-of-the-art software development:
	* inventing new [algorithms](https://en.wikipedia.org/wiki/Algorithm)
	* inventing [domain specific languages (DSL)](https://en.wikipedia.org/wiki/Domain-specific_language) which can grossly simplify many difficult problem domains, especially for non-programmers
	* using [compiler](https://en.wikipedia.org/wiki/Compiler) tools to automatically [refactor](https://en.wikipedia.org/wiki/Code_refactoring) source code, and for anti-[reverse engineering](https://en.wikipedia.org/wiki/Reverse_engineering) [obfuscation](https://en.wikipedia.org/wiki/Obfuscation_(software))
2. I am a "hands-on" master software engineer. I enjoy programming. I design prototypes and minimum viable products for _CTO_ groups.
3. I have many inventions and some __recent patents__ in a wide variety of application domains, e.g.:
    * digital automotive technology
    * Internet TV
    * cybersecurity
    * bioinformatics
    * accessibility
    * factory automation
    * VLSI CPU design
4. I am an [expert generalist](https://simplicable.com/new/expert-generalist) and an [autodidact](https://en.wikipedia.org/wiki/Autodidacticism) [polymath](https://en.wikipedia.org/wiki/Polymath)[^polymath]. I easily learn and become an expert in new fields.
5. In order to jump start my learning process I prefer to find a domain expert to mentor me, and I am also a good mentor myself. 
6. I know many computer languages which I am able to learn easily due to my [compiler](https://en.wikipedia.org/wiki/Compiler) background.
7. My "go to" _programming_ languages in which I am quite proficient are the following:
    * [C](https://en.wikipedia.org/wiki/C_(programming_language))
    * [Python](https://en.wikipedia.org/wiki/Python_(programming_language)) and [Beautiful Soup](https://beautiful-soup-4.readthedocs.io/en/latest/)
    * [Jinja2](https://en.wikipedia.org/wiki/Jinja_(template_engine)), the "gold standard" macro and template preprocessor
    * [Pyexpander](https://pyexpander.sourceforge.io/), which is much simpler to use than _Jinja2_ and just as useful _except_ where template inheritance is needed, _but_ unfortunately is _polluted_ by a [GPLv3 license](https://en.wikipedia.org/wiki/GNU_General_Public_License)
    * [bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell)), including [Posix CLI commands](https://en.wikipedia.org/wiki/List_of_POSIX_commands)
8. My "go to" _data_ languages are _HTML_, _Markdown_, [pandoc](https://www.pandoc.org), [srcML](https://www.srcml.org), _XML_, _YAML_, and _Excel_.
9. I thrive on undertaking new challenging projects. I am quite comfortable engaging in and leading _flexible_ "brain storming" sessions.
10. I have a long history of providing considerable value added to my employers. Browse the links below (typically preceded by the _right pointing triangle_ symbol "&#x25B8;") that describe the details of my career. They will reveal a long history of "home runs". I am especially proud of my inventions in the fields of [bioinformatics](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#syntezza) and [accessibility](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#virtouch) (and [here](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#cubital-accessibility)) even though they are not in the application domains where I usually work.

## Work Experience 

### 2025-present: Independent Commercial S/W Cybersecurity Obfuscation Product Development 

I am starting (2025-06-01) my own firm to develop commercial [obfuscating (= anti reverse-engineering)](https://en.wikipedia.org/wiki/Obfuscation_(software)) compilers for:

1. _C11/C++2014_
	* implementation via [srcML (commercial license)](https://www.srcml.org) and Python's [Beautiful Soup (MIT license)](https://beautiful-soup-4.readthedocs.io/en/latest/)
2. [web assembly (WASM)](https://webassembly.org/)
	* implementation via the [parsimonious (MIT license)](https://github.com/erikrose/parsimonious) Python PEG parser

And I intend to develop lightweight and inexpensive commercial compiler utilities that refactor _C_ source code, via _srcML_ and _Beautiful Soup_, including:

1. enabling optional and named function call arguments
	* implementation via the [GCC designated initializer](https://gcc.gnu.org/onlinedocs/gcc/Designated-Inits.html) extension
2. obfuscating [name mangler](https://en.wikipedia.org/wiki/Name_mangling)
	* similar to [stunnix cxx-obfus](http://stunnix.com/support/doc/cxxo/cxx-obfus.shtml)
3. compile time _constant_ string encryption that decrypts at startup
4. _static_ variable and function name obfuscation
5. fully functional [ELF dynamic shared object (DSO)](https://amir.rachum.com/shared-libraries/) files that shroud their global export table
6. detection and elimination of duplicate code where variable names are parameterized
	* implementation via the [GCC statement expressions](https://gcc.gnu.org/onlinedocs/gcc/Statement-Exprs.html) extension, and the [clang block extension](https://clang.llvm.org/docs/BlockLanguageSpec.html)

#### Obfuscation Explanation

A professional software engineer who is an experienced "hacker" is usually able to "reverse engineer" well designed software even when the software is delivered as [object code](https://www.geeksforgeeks.org/difference-between-source-code-and-object-code/) via a [compiler](https://www.wordnik.com/words/compiler); but [P-code](https://www.wordnik.com/words/p-code) such as that generated by [Java](https://en.wikipedia.org/wiki/Java_(programming_language)) is trivial to hack. Obfuscation mixes up the software as if it were processed with a blender. Of course correct obfuscation must retain the original code logic, but its code footprint can only be slightly larger than the original and execute slightly slower, otherwise the obfuscation has no commercial value. The obfuscation places "speed bumps" in front of the hacker, but eventually, say within a few weeks or months, a good hacker will overcome the obfuscation; therefore it is incumbent upon the obfuscater to regularly supply another randomized version every few months. For example the kind of software that contains secrets that should be obfuscated includes unexploded military ordinance, media players of proprietary content, banking/bitcoin applications, etc.


### 2022-25: [Aurora Labs](https://www.AuroraLabs.com) Tel Aviv IL 


 [&#x25B8; Automotive Software Updates: CTO Group: (a) Invented a patent-pending algorithm to greatly reduce RAM consumption during FLASH updates which improves compression efficiency which is the core KPI of the software update industry. (b) Greatly improved the CPU efficiency and RAM consumption of the company's core product that automatically refactors embedded C source code of their automotive industry clients.](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#aurora)



### 2021: [Morphisec](https://www.morphisec.com/) Beer Sheva IL 


 [&#x25B8; Server Cybersecurity: Reverse engineering and refactoring of X64 object code](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#morphisec)



### 2021: consultant to [Qedit](https://qed-it.com/) Tel Aviv IL 


 [&#x25B8; Banking Cryptographic Algorithms: Securing C algorithms in a web browser using WASM](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#qedit)



### 2018-20: [Argus Cyber Security](https://en.wikipedia.org/wiki/Argus_Cyber_Security) Tel Aviv IL (restructured as [PlaxidityX](https://plaxidityx.com/) IL, subsidiary of [Elektrobit/Continental](https://www.elektrobit.com/) DE) 


 [&#x25B8; Automotive Software Updates: (a) Patented an algorithm greatly reducing FLASH memory required to implement mini-bsdiff. (b) Architected and implemented an embedded S/W update driver based upon mini-bsdiff and the xz binary compressor.](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#argus)



### 2016 part-time: [Canary Mission](https://canarymission.org/) Jerusalem IL 


 [&#x25B8; Consultant: SOHO Cybersecurity "Hygiene"](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#canary-mission)



### 2014-17: [Viaccess-Orca](https://www.viaccess-orca.com/) Ra'anana IL (subsidiary of [Orange](https://www.orange.com/) FR) 


 [&#x25B8; Internet TV Infrastructure: Cybersecurity obfuscation manager](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#viaccess)


### 2013-14: _Discretix_ Netanya IL (renamed _Sansa Security_, acquired by [ARM](https://www.arm.com) UK) 

The company sold their Internet TV business unit to [Viaccess-Orca (2014)](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#viaccess) above.


### 2013 part-time: _NVT_ (defunct) US 


 [&#x25B8; CTO Nigerian Agritech](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#nvt)



### 2012: [Telequest](https://www.telequest.co.il) (stealth) Jerusalem IL 


 [&#x25B8; Vehicle Navigation Algorithms: VP R&D: Traffic jam reduction algorithms](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#telequest)



### 2011: consultant to [Syntezza Bioscience](https://www.syntezza.com/) Jerusalem IL 


 [&#x25B8; PCR MRSA Kit: Inventor of bioinformatic PCR algorithms using AI threshold technique, and more accurate bioassay normalization and noise reduction](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#syntezza)



### 2005-10: _NDS_ Jerusalem IL (acquired by [Synamedia](https://www.synamedia.com/) UK) 


 [&#x25B8; Internet TV Infrastructure: Cybersecurity researcher](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#NDS)



### 2004: _Vyyo_ (defunct) Jerusalem IL 


 [&#x25B8; Broadband RF Networking: Architect of super-efficient cable modem testing laboratory](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#vyyo2004)



### 2002-03: _Virtouch_ (defunct) Jerusalem IL 


 [&#x25B8; Blind Accessibility Device: VP R&D: Inventor of product that allowed the blind to see/understand images in a PC/smartphone web browser ideally combined with a consumer grade graphics tablet](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#virtouch)


### 2002: _TMT_ (defunct) Jerusalem IL; Local Area RF Networking

I did similar tasks for _Vyyo_. See [Vyyo (2004) above](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#vyyo2004) and [Vyyo (2000) below](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#vyyo2000).


### 2002 part-time: _Jolt_ Jerusalem IL (acquired by _MRV Communications_ IL, and eventually by [Adtran](https://www.adtran.com) US) 


 [&#x25B8; Free Space Optics Networking: Consultant: Designer of SNMP NMS client and agent](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#jolt)



### 2000-02: _Vyyo_ (defunct) Jerusalem IL 


 [&#x25B8; Broadband RF Networking: Manager of S/W utilities group; inventor of cable modem hybrid (RF/dial-up) IP allocation protocol](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#vyyo2000)


### 1999: contractor to _Phasecom_ Jerusalem IL (acquired by _Vyyo_ above)

Broadband RF Networking: See the tasks that I did for the successor company [Vyyo (above)](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#vyyo2000).


### 1998: contractor to _Fourfold_ (defunct) Jerusalem IL 


 [&#x25B8; Fabless VLSI CPU Design: Novel GCC compiler port for a FORTH-like CPU](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#fourfold)



### 1996-97: CEO _Pitkha_ (defunct) Jerusalem IL, contractor to _Optimet_ Jerusalem IL, subsidiary of [Ophir Optronics](https://www.ophiropt.com/en/) IL 


 [&#x25B8; Conoscopic Laser Interferometry: S/W architect of a DSL for a 2D measurement  robot](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#optimet)



### 1996: CEO _Pitkha_ (defunct) Jerusalem IL, contractor to [Elop/Elbit](https://elbitsystems.com/) Rehovot IL


 [&#x25B8; Military Optical Devices: S/W architect of a DSL to implement a mil-spec automated testing laboratory for the BlackHawk helicopter weapons targeting system](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#elop)



### 1992-95: CEO _Pitkha_ (defunct) Jerusalem IL, contractor to [DSP Group](https://www.dspg.com/) Ramat Gan IL 


 [&#x25B8; Fabless DSP CPU  Design Center: Inventor and S/W architect of a DSL to implement the software tool chain for the PINE CPU](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#dspg)



### 1990-91: contractor to [Digital Equipment Corp (DEC)](https://en.wikipedia.org/wiki/Digital_Equipment_Corporation) Herzliya IL (eventually acquired by [Hewlett-Packard](https://www.hp.com/il-he/home.html) IL), contractor to [Iscar Metalworking](https://www.iscar.com/index.aspx/countryid/1/lang/en) 


 [&#x25B8; Metal Blade Production Factory: Co-inventor and S/W architect of a DSL to implement a shop floor production control system that orchestrated a completely automated factory](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#iscar)



### 1988-89: contractor to _Cubital_ (defunct) Herzliya IL, subsidiary of _Scitex_ IL (acquired by [Hewlett-Packard](https://www.hp.com/il-he/home.html) IL) 


 [&#x25B8; One Of The Original 3D Printers: S/W R&D](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#cubital-printer)



### 1989: contractor to _Cubital_ (defunct) Herzliya IL, subsidiary of _Scitex_ IL (acquired by [Hewlett-Packard](https://www.hp.com/il-he/home.html) IL) 


 [&#x25B8; PC Accessibility Device For Quadriplegics: Inventor and S/W architect](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#cubital-accessibility)



### 1987: _Orisol_ (defunct) Lod IL 


 [&#x25B8; High Speed Sewing Robot For Leather Goods: S/W architect of a DSL used to control the robot](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#orisol)


### 1980-86: Junior Programmer and Economist Positions in the US and Israel


### 1977: [Ontario Energy Board](https://www.oeb.ca) Toronto Ontario 


 [&#x25B8; Public Utility Commission: Public interest intervenor-economist at the ECAP77 hearings on marginal cost pricing for electricity](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#oeb)



## Unpatented Personal Inventions 


 [&#x25B8; Inventions](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#personal-inventions)



## Part-time Teaching Experience 


 [&#x25B8; Teaching](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#teaching)


## Education 

1. __1978-79:__ [York Univ Graduate School](https://www.yorku.ca/) Toronto Ontario: __masters degree in economics with a minor in applied mathematics[^york]__

    * My major project was an economic-engineering simulation of a hydro electric dam in _FORTRAN_.

2. __1976-77:__ [Univ Of Toronto Rotman Graduate School Of Management](https://www.rotman.utoronto.ca/) Toronto Ontario: __no degree, applied credits to York Univ (above)__

3. __1973-76:__ [Univ Of Toronto, Undergraduate School Of Arts & Sciences](https://www.utoronto.ca/) Toronto Ontario: __BA economics__

4. __1969-73:__ Secondary School, Ontario Canada: __"Honours" (grade 13) high school diploma__

    * I took my first course in computer science in _FORTRAN_ on an [IBM 1130](http://ibm1130.org/) mini-computer with 16 KB RAM. My first serious program was a _perfect_ game of _Qubic_, 3D tic-tac-toe, using 4 levels of boards each of which has 4x4 squares. Subsequently I became "addicted" to programming for life.
    
    * Also besides advanced courses in mathematics, one of my more useful courses was learning how to "touch type".


## Personal 


 [&#x25B8; Personal](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#personal)



## Colophon 


 [&#x25B8; Colophon](https://www.avrahambernstein.com/cv/AvrahamAbeBernstein-CV.html#colophon)


## Footnotes

[^polymath]: __Autodidact Polymath:__ There is a common misconception that only geniuses like _Leonardo da Vinci_ deserve the appellation autodidact polymath, and therefore by referring to myself as one then I am making the bombastic claim to be a genius in the same category as Leonardo. There is an outstanding [TED talk](https://www.youtube.com/watch?v=VGF3kjgCaMQ) showing how children from Indian slums with the appropriate mentoring can become _autodidact polymaths_. And there was a similarly successful project done with children from [Mexican slums](https://www.wired.com/2013/10/free-thinkers/). Many very intelligent people, especially as they get older, don’t like moving outside of their intellectual comfort zone, whereas I revel in taking on intellectual challenges in new fields outside of my comfort zone. Note my "grand slams" in a wide range of application domains, where the only way to quickly achieve expertise was self-learning admittedly with the help of highly qualified mentors. I feel that I still maintain a high degree of child-like [mental plasticity](https://www.psychologytoday.com/us/basics/neuroplasticity). Part of this skill I retain by regular interaction with my own young grandchildren, where my play with them is much more analytical than I used to exhibit with my own children.

 [^york]: __York Univ:__  Exceptionally I passed my comprehensive examinations before I took any of the required economics courses! Therefore the school allowed me to take any accredited courses from any Canadian university. I had initially wanted to take a graduate degree in engineering from the Univ of Toronto but they refused to accept me as a _regular_ student, but they allowed me to enroll as a _special_ student. In fact most of my courses for the York degree were from the Univ of Toronto graduate school of engineering.
