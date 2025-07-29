$py(
now = '2025-07-29'
yy = 2025

linkedin = 'https://www.linkedin.com/in/avrahambernstein/'
www = 'https://www.avrahambernstein.com'
cv_root = www + '/cv/AvrahamAbeBernstein-CV'
cv_lite_root = cv_root + '-Lite'

def obfus(text):
	return '<span class="hide">' + text + '</span>'
)

<address markdown="1">
__Author:__ Avraham "Abe" Bernstein
<br/>__Email:__ Avraham DOT Bernstein PLUS cv AT gmail$(obfus('bozo@example.com')) DOT com
<br/>__Tel/Whatsapp:__ +$(obfus('bozo@example.com'))972.54.641-0955
<br/>__City:__ Jerusalem 9727433 ISRAEL
<br/>__Time Zone:__ [UTC +02:00/+03:00 (winter/summer)](https://www.timeanddate.com/worldclock/israel/jerusalem)
<br/>__[Shabbat Observant](https://www.chabad.org/calendar/candlelighting_cdo/locationId/247/locationType/1/jewish/Candle-Lighting.htm):__ Not accessible electronically nor engaging in any business activities from Fri. evenings (Jm. time) beginning 1 hour before sunset until Sat. night 1 hour after sunset, nor on [Jewish holidays](https://www.hebcal.com/holidays/2025?i=on)
<br/>__CV__: [Full HTML]($(cv_root).html),&nbsp;&nbsp;[Full PDF]($(cv_root).pdf),&nbsp;&nbsp;[Lite HTML]($(cv_lite_root).html),&nbsp;&nbsp;[Lite PDF]($(cv_lite_root).pdf)
<br/>__WWW:__ [$(www)]($(www))
<br/>__Linkedin:__ [$(linkedin)]($(linkedin))
<br/>__Last Update:__ $(now)
</address>

## 1. Summary

Senior software architect and polymath with over 40 years of innovation in algorithm design, compiler construction, and obfuscation tools across industries including cybersecurity, automotive, accessibility, and bioinformatics. Adept at designing domain-specific languages, anti-reverse engineering, and building MVPs and prototypes for CTO teams. Holds multiple patents and thrives on technically challenging projects.

__NOTICE for pedantic HR types:__  This CV is unusual. And not primarily because it is 7 pages long instead of 3, OMG! It represents my 40+ years experience as a polymath in a wide range of domains at an expert level, and includes many inventions, many of which are recent. Normally the inventions require a few lines of explanation in order to show their signficance, _especially for someone who is not a domain expert_. Therefore this CV is quite different than someone's who has been working in the same field using the same tools for 10-15 years without producing any inventions, where a 2 page CV would suffice. When am I able to present my CV directly to a colleague or a potential employer with a strong technical background, I have never encountered even a single one who was not extremely impressed by my professional accomplishments, nor who gave me any negative feedback on account of its length. And I am 69, which means it will be more likely for me to be hired as a contractor or a consultant, instead of as a regular employee.

## 2. Core Skills & Tools

* __Languages:__ C, Python, Bash, HTML, Markdown, XML, YAML

* __Technologies:__ [srcML](https://www.srcml.org/) (commercial license), [Beautiful Soup](https://beautiful-soup-4.readthedocs.io/en/latest/), [Jinja2](https://en.wikipedia.org/wiki/Jinja_(template_engine)), [Pyexpander](https://pyexpander.sourceforge.io/), [WASM](https://webassembly.org/), Linux, ELF, GCC, Clang

* __Domains:__ Compiler Design, [Obfuscation](https://en.wikipedia.org/wiki/Obfuscation_(software)) = anti-reverse engineering design, Cybersecurity, Embedded Systems, Accessibility, Automotive Software, Bioinformatics

* __Other:__ [Domain Specific Languages (DSL)](https://en.wikipedia.org/wiki/Domain-specific_language), [Code Refactoring](https://en.wikipedia.org/wiki/Code_refactoring), Reverse Engineering, Factory Automation

## 3. Recent Experience

__2025:__ Independent: Founder & Principal Engineer Compiler & Obfuscation Tools Development

* Designing commercial-grade obfuscating compilers for C/C++ and [Web Assembly (WASM)](https://webassembly.org/).

* Implementing tools for static and dynamic code obfuscation, encrypted string handling, name mangling, and ELF [DSO](https://en.wikipedia.org/wiki/Dynamic_linker) export masking.

* Leveraging [srcML](https://www.srcml.org/) and [Beautiful Soup](https://beautiful-soup-4.readthedocs.io/en/latest/) for automated C [source code refactoring]( https://en.wikipedia.org/wiki/Code_refactoring )

__2022-25:__ [Aurora Labs](https://www.auroralabs.com/), Tel Aviv: Senior Software Architect in CTO office for Digital Automotive Industry

* __Invented a patent-pending__ algorithm to reduce RAM usage and boost compression during FLASH updates. The key to the patent was the use of buffered I/O windows, similar to the _Linux_ file system, which eliminated the need to allocate a pre-image in RAM the size of the FLASH sector especially when the size of the _DMA_ write region is typically only 256 bytes. Thus we are able to transfer larger FLASH chunks which typically results in significantly better compression. For small FLASH devices, in the range of 64-128 KB, compression could often be improved by up to 25%. And the board's original FLASH driver could be utilized without any modification.

* Reduced CPU (__6x__) and RAM (__2x__) usage compared to the company's original core source code refactoring product for embedded automotive C code via the use of [srcML]( https://www.srcml.org/ ) and [Beautiful Soup]( https://beautiful-soup-4.readthedocs.io/en/latest/ ). The original version was a hand coded compiler in _Python_. Its purpose was to automatically reduce the time of an automobile software update (via naive _LZMA_ compression) from a few hours to as low as 15 minutes. I had a great deal of co-operation from the company's chief scientist, [Carmit Sahar](https://www.linkedin.com/in/carmit-sahar/), who designed the original version.

__2021:__ [Morphisec](https://www.morphisec.com/), Beer Sheva: Anti-Reverse Engineering Modifications to _Linux_ _x64_ Libc Kernel

* The challenges were (1) not to change the addresses of any of the _libc_ functions, and (2) to automatically modify the kernels of the many different _Linux_ distributions. Implementation was via the _Python_ version of the [ZyDis]( https://github.com/zyantific/zydis ) _x64_ disassembler.

__2021:__ [Qedit](https://qed-it.com/), Tel Aviv: WASM Cybersecurity Consultant for Financial Industry

__2017-20:__ _Argus Cyber Security_ (now [PlaxidityX](https://plaxidityx.com/)), Tel Aviv: Senior Researcher for Digital Automotive Industry

* __Patented__ a modification to the [mini-bsdiff](https://github.com/thoughtpolice/minibsdiff) algorithm in order to minimize FLASH memory usage in automotive software updates for devices which ostensibly did not have sufficient FLASH to implement the algorithm. I was in contact with [Colin Percival](https://www.daemonology.net/bsdiff/), the original inventor of the _bsdiff_ algorithm.

* Architect of embedded software update driver using [mini-bsdiff](https://github.com/thoughtpolice/minibsdiff) and [xz](https://en.wikipedia.org/wiki/XZ_Utils) compression.

## 4. Earlier Roles (Selected)

__2013-17:__ [Viaccess-Orca](https://www.viaccess-orca.com/) (subsidiary of Orange FR), Ra'anana: Cybersecurity Obfuscation Manager for Internet TV industry

__2013 part-time:__ _NVT_, US (defunct): CTO of Agritech Startup for [Cassava]( https://en.wikipedia.org/wiki/Cassava ) Production in Nigerian Jungle

__2012:__ _Telequest_, Jerusalem: VP R&D, Automated Vehicle Navigation To Find Optimal Routes in City Traffic

__2011:__ [Syntezza Bioscience](https://www.syntezza.com/), Jerusalem: Bioinformatics consultant

* In just 3 months I __invented__ an AI threshold algorithm for [PCR]( https://www.genome.gov/about-genomics/fact-sheets/Polymerase-Chain-Reaction-Fact-Sheet ) [Ct]( https://www.thermofisher.com/il/en/home/life-science/pcr/real-time-pcr/real-time-pcr-learning-center/real-time-pcr-basics/real-time-pcr-understanding-ct.html ) detection, and a powerful and simple noise-reduction technique for a [MRSA]( https://www.webmd.com/skin-problems-and-treatments/understanding-mrsa ) diagnostic kit. When I first began work, their kit was a complete failure. Even though I had zero background in microbiology, I discovered that the PCR control test tubes were configured improperly in all of their 800 hospital samples, for which I was able to correct after-the-fact even though the samples were long ago destroyed. And I discovered that their preliminary chemistry was not able to filter the [inhibitors](https://en.wikipedia.org/wiki/Polymerase_chain_reaction_inhibitors) in their nasal samples. 
* Even after correcting for the systematic noise (which the classic analysis could never had detected due to huge level of inhibition), at least 50+% of the data points were inhibited, so the graphs of the assays were definitely not _sigmoidal_ (i.e. flat "S" shaped). Their graphs looked more like _Rorchach_ ink blots. And the graphs of the pure _MRSA_ colonies were linear, also definitely not _sigmoidal_. The fundamental assumption of _PCR_ mathematics is that the shape of the assay function must be _sigmoidal_, so it seemed that we faced a catastropic failure. But my threshold algorithm handled them just fine. I was mentored by the company's consultant, [Tzachi Bar]( https://independent.academia.edu/TzachiBar ), who invented the most commonly used public domain algorithm used in most _PCR_ devices. __My algorithm saved the company's business unit from bankruptcy, and my algorithm won a MRSA detector "shoot-out" against the big pharma labs at the world famous St. George's medical school in London.__

__2005-10:__ _NDS_ (now [Synamedia](https://www.synamedia.com/)), Jerusalem: Internet TV Industry:

1) Cybersecurity Research:

* I showed how [Digital Rights Management (DRM)]( https://en.wikipedia.org/wiki/Digital_rights_management ) protection schemes that relied upon date or playback count restrictions could easily be broken by garden variety [virtual machines](https://en.wikipedia.org/wiki/Virtual_machine).
* I showed how the [QEMU virtual machine](https://en.wikipedia.org/wiki/QEMU), that allowed for assembly instructions to be emulated, could be used to break the host machine's random number generator, which allowed multiple confederate hosts to generate the exact same card ID, which enabled massive leeching of content from the content servers.
* I penetrated a confederate network of card ID sharing, and showed how all the confederates could easily be knocked out.

2) Satellite Content Servers Automated Testing:

* I __invented__ a [Domain Specific Language (DSL)](https://en.wikipedia.org/wiki/Domain-specific_language) (implemented in [TCL]( https://en.wikipedia.org/wiki/Tcl ) on _Windows NT_) for simulation of the satellite.
* I used the _DSL_ to generate flaws in the satellite's control program that disabled the satellite.
* I supplied the _DSL_ to all developers to run sanity tests _before_ checking in their code.
* I studied the company's bug database, and found that half of their development effort was spent fixing bugs. The company had over 1000 developers! So I created a simple development protocol that knocked out over half of the bugs on the developer's desktop _before_ submitting code to the QA group. The problem was that most check-ins were from make files with tens of thousands of warnings. The silver bullet was insisting upon check ins of make files without any warnings.

__2002-03:__ _Virtouch_, Jerusalem (defunct): VP R&D, Accessibility Technology

* __Invented__ an [SVG]( https://developer.mozilla.org/en-US/docs/Web/SVG ) web browser based solution enabling the blind to interpret images, maps, and mathematical functions via the PC's (or smartphone's) built-in sound card and a consumer grade graphics tablet.

__1999-2004:__ _Vyyo_, Jerusalem (defunct): for RF wireless cable modem industry

* Manager offline software tools: [network management system (NMS)]( https://www.techtarget.com/searchnetworking/definition/network-management-system ), embedded [SNMP agent]( https://www.geeksforgeeks.org/computer-networks/simple-network-management-protocol-snmp/ ), highly efficient [ARP table](https://www.geeksforgeeks.org/ethical-hacking/how-address-resolution-protocol-arp-works/) and embedded [hash table algorithm](https://www.geeksforgeeks.org/dsa/hash-table-data-structure/), and much more efficient modem speed testing via a [Fibonacci search](https://www.geeksforgeeks.org/dsa/fibonacci-search/) algorithm instead of the industry standard binary search algorithm.

* Architect of super-efficient cable modem testing laboratory. Reduced H/W costs by a factor of __16x__ via multiplexing with a [programmable layer-2 switch]( https://www.automationdirect.com/adc/overview/catalog/communications/industrial_ethernet_switches/layer_2_managed_switches ).

* __Invented__ a hybrid Ethernet/Dial-up network protocol for cable modems, via dynamic modifications to the [edge router's]( https://www.techtarget.com/searchnetworking/definition/edge-router ) [ARP table]([ARP table](https://www.geeksforgeeks.org/ethical-hacking/how-address-resolution-protocol-arp-works/)) where the _edge-router_ was the interface to both the dial-up and cable modem Ethernet networks.

__1998:__ _Fourfold_, Jerusalem (defunct): Software architect of a modified GCC massively parallel compiler tool chain for a [Forth]( https://en.wikipedia.org/wiki/Forth_(programming_language) )-like CPU with unlimited registers.

__1990-97:__ _Pitkha_, Jerusalem (defunct): CEO & Domain Specific Language (DSL) Architect

1. __1996-97:__ 2D [conoscopic holographic laser metrology](https://www.mdpi.com/1424-8220/9/9/7021) device for [Optimet-Ophir]( https://www.ophiropt.com/en/ ) (subsidiary of MKS-Newport, US), Jerusalem

	* __Invented__ a _DSL_ (implemented in the _Windows NT_ implementation of [TCL]( https://en.wikipedia.org/wiki/Tcl )) used to scan objects mounted on a XY jig. Due to lighting conditions on the object, different regions required different scanning speeds.
	* In theory, a scan returned a cloud of tens of millions of XYZ points. The most difficult problem was the creation of an easy to use language that generated life-like images from these points. Note that this project was implemented before the mature [VTK image visualization toolkit]( https://vtk.org/) became available. I __invented__ my own, but simpler, version of _VTK_ based upon a _TCL_ wrapper for [OpenGL]( https://www.opengl.org/ ).

2. __1996:__ mil-spec testing laboratory for _Elop_ (subsidiary of [Elbit](https://www.elbitsystems.com/)), Rehovot

	* __Invented__ a _DSL_, a _BASIC_-like language (implemented in C using [lex and yacc](https://www2.cs.arizona.edu/~debray/Teaching/CSc453/DOCS/tutorial-large.pdf) before [TCL](https://en.wikipedia.org/wiki/Tcl) became available in _Windows NT_), that was used to reduce 2 meters of mil-spec testing documentation for the _Black Hawk_ weapons targeting system into a _manageable and easily modifiable_ set of requirements. The _DSL_ had to support various H/W drivers for the test equipment used in the lab. The _DSL_ language was simple enough to use that the system engineer, who had no programming background, could create _ad hoc_ tests. Tests could run unattended for up to 100 hours without any memory leaks.


3. __1992-95:__ __Invented__ a _DSL_ (implemented in C using [lex and yacc]( https://www2.cs.arizona.edu/~debray/Teaching/CSc453/DOCS/tutorial-large.pdf) ) that was the backbone for a software development tool chain for the [DSPG](https://en.wikipedia.org/wiki/DSP_Group) [PINE](https://www.edn.com/dsp-group-pinedspcore/) CPU:

	* The tool chain included a clock accurate CPU simulator, debugger with a programmable I/O port simulator (BTW still, in 2025, not yet found on most debuggers or emulators), assembler, disassembler, and overlay linker. (Note that this project was implemented before the stable version GCC 2.95 became available). Initially the purpose of the _DSL_ was to resolve the problem of register usage restrictions between adjacent assembly instructions. The VLSI architects regularly changed the restrictions which made it extremely difficult to create a hand crafted assembler in a reasonable period of time. A register restriction violation required the manual insertion of a _NOP_ into the instruction stream. (Today, i.e. $(yy), modern CPU architectures can automatically "stall" the pipeline).
	* The _DSL_ implemented a language that completely described the CPU's instruction set. Changes to the register restrictions were trivial to implement, and the assembler could be recompiled within an hour. __The assembler ran over 100x faster than the VLSI simulated assembler. The assembler ran for over 100 hours without any memory leaks. The assembler allowed the architects to regularly run instruction set sanity tests as soon as the architecture was updated. The complete tool chain was used by application programmers to build and test complete applications 6 months before the final production of the physical CPU.__

__1990-91:__ __Invented__ a _DSL_ to completely automate a metal blade production factory at  [Iscar]( https://www.iscar.com/index.aspx/countryid/1/lang/en )-Matkash, Tefen

* The plant included the following types of objects:

	* various types of workstations with multiple stands where pallets for parts and raw materials were placed, and from where the end product was removed
	* automatically guided robotic vehicles delivered pallets to and from the workstation stands
	* some pallets were transported by conveyor, and others placed on stacks
	* the storage region had room for hundreds of pallet stands
	* work-in-progress parts that were stored for too long had to oiled in order to prevent rust
	* tools that required maintenance, e.g. cutting tools, recorded their consumption before being sent for repair (e.g. sharpening)
	* etc.

* My job along with my co-architect, [David Goldstein]( https://www.sifutaichi.com/ ), was to automatically orchestrate the plant via S/W. We had a (then) powerful _VAX/VMS_ computer at our disposal with a relational database. The project manager insisted that the main programming language be _Pascal_.

* We came to the project with no knowledge of factory automation. So we started with a month long mentoring course from an industrial engineer.

* Our solution was to design a _DSL_ that described every single object (i.e. a few 100) in the factory's "object kingdom", and how they interacted with one another. The _DSL_ had to configurable by the factory engineer who was not a software engineer, while the clerical staff required a GUI window into the DSL for making on-the-fly configurations and viewing the status of the factory.

* It became immediately obvious that the S/W required object oriented techniques to implement. At that time _object oriented programming (OOP)_ was in its infancy, and barely used in industry. There was no Internet yet at that time, but literature was available in the Hebrew Univ computer science library. Recall that we had a hard requirement to use the procedural Pascal language.

* _VAX/VMS_ had a command line utility for designing command "ensembles" which could be executed via callbacks to a compilable language, e.g. Pascal. We used these ensembles to define every type of object, along with their attributes, supported by the our DSL. Today, i.e. $(yy), I would use _XML_ instead (which had not yet been invented).

* There were tens of thousands object instances stored in a database on disk - including their configuration and current status. The database regularly stored status updates. The database was constantly scanned in order to implement the next task that our scheduler required. In the event that the main computer shut down, either expectedly or unexpectedly, the database allowed for a smooth restart/recovery.

* __After about a year, we implemented a working factory!__

__1988-89:__ _Cubital_ (subsidiary of [Scitex]( https://www.company-histories.com/Scitex-Corporation-Ltd-Company-History.html ) ), Herzliya:

* Early 3D printing (stereo-lithography) R&D.

* PC accessibility __invention__ for quadriplegics: Invention of virtual keyboard using a telescopically modified [CRT light pen](https://en.wikipedia.org/wiki/Light_pen), which could support a 800 mm. distance from display, combined with a [sip and puff switch]( https://orin.com/access/sip_puff/ ). Our first subject was a quadriplegic polio victim, with the light pen connected to her head via a women's hairband, who could type 30 characters per minute, and who productively worked as a book editor. The virtual keyboard could be configured so that only a single selected key was displayed on the screen, where the light pen hovered, which allowed over 95% of the screen to remain unobstructed. Too bad I didn't patent this virtual keyboard invention.

## 5. Patents & Inventions

Multiple patents pending and granted in fields including FLASH compression, software obfuscation, automotive updates, bioinformatics, and accessibility devices.

## 6. Education

__1979:__ _York University_, Toronto Canada: MA Economics, minor in Applied Mathematics

* Simulated hydroelectric dam in FORTRAN for major project

__1973-78:__ _University of Toronto_, Canada: Undergraduate School of Arts & Sciences, Rotman Graduate School of Management, Graduate School of Engineering

## 7. Teaching & Mentorship

Part-time instructor and mentor in various technical domains. Strong advocate of pairing with domain experts to accelerate onboarding and innovation.

## 8. Portfolio & More:

See details in [Full CV]($(cv_root+'.html')).
