$py(
now = '2025-09-07'
yy = 2025

linkedin = 'https://www.linkedin.com/in/avrahambernstein/'
www = 'https://www.avrahambernstein.com'
obfuscation_html = www + '/obfuscation/Obfuscation.html'

def obfus(text):
	return '<span class="hide">' + text + '</span>'
)

<address markdown="1">
__Email:__ Avraham DOT Bernstein PLUS cv AT gmail$(obfus('bozo@example.com')) DOT com
<br/>__Tel/Whatsapp:__ +$(obfus('bozo@example.com'))972.54.641-0955
<br/>__City:__ Jerusalem 9727433 ISRAEL
<br/>__Time Zone:__ [UTC +02:00/+03:00 (winter/summer)](https://www.timeanddate.com/worldclock/israel/jerusalem)
<br/>__[Shabbat Observant](https://www.chabad.org/calendar/candlelighting_cdo/locationId/247/locationType/1/jewish/Candle-Lighting.htm):__ Not accessible electronically nor engaging in any business activities from Fri. evenings (Jm. time) beginning 1 hour before sunset until Sat. night 1 hour after sunset, nor on [Jewish holidays](https://www.hebcal.com/holidays/2025?i=on)
<br/>__WWW:__ [$(www)]($(www))
<br/>__Linkedin:__ [$(linkedin)]($(linkedin))
<br/>__Last Update:__ $(now)
</address>

## 1. Summary

Senior software architect with over 40+ years of innovation in algorithm design, compiler construction, source code refactoring, and obfuscation tools. Has worked at an expert level in many industries including cybersecurity anti-reverse engineering, automotive, internet TV, accessibility, and bioinformatics. [Expert generalist](https://simplicable.com/new/expert-generalist) and [autodidact](https://en.wikipedia.org/wiki/Autodidacticism) [polymath](https://en.wikipedia.org/wiki/Polymath) who holds multiple patents and inventions, and thrives on technically challenging projects. Adept at design of domain-specific languages, and building MVPs and prototypes for CTO teams. Searching for position as a contractor or consultant. Prefers to work with and to mentor small teams.

## 2. Inventions (Reverse Chronological Order)

1. Showed how [srcML](https://www.srcml.org/) combined with Python could refactor "C" source code for automotive software updates, and for cybersecurity obfuscation.

2. Invented Linux cybersecurity techniques, especially how usable `.so` ([DSO](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux_for_real_time/7/html/reference_guide/chap-shared_libraries)) files could be generated which formally supplied no exports, and thus were extremely difficult to reverse engineer. See [short technical description]($(obfuscation_html)).

3. Patented FLASH techniques for implementing S/W updates on small FLASH devices, and CPUs with small RAM.

4. Invented a technique for dynamically loading a large static FLASH database into an embedded system that could be larger than RAM that doesn't violate Misra C restrictions with the help of preprocessing such as via Jinja2 or Pyexpander.

5. Invented a simple technique to obfuscate photographs using [GIMP](https://en.wikipedia.org/wiki/GIMP) filters while remaining easily recognizable by a young child, but not recognizable by photographic database software.

6. Invented highly accurate [fuzzy logic](https://en.wikipedia.org/wiki/Fuzzy_logic) classifier used to discover [rooted]( https://en.wikipedia.org/wiki/Rooting_(Android) ) _Android_ devices.

7. Showed how trivial [Virtual Machine (VM)](https://en.wikipedia.org/wiki/Virtual_machine) attacks could disrupt Digital Rights Management (DRM) protection, and how the [QEMU]( https://en.wikipedia.org/wiki/QEMU ) VM could disrupt the [cryptographic nonce]( https://en.wikipedia.org/wiki/Cryptographic_nonce ) mechanism which allowed subscriber IDs to be shared by a confederacy of pirates.

8. Invented a generic font modification technique in order to make them understandable by dyslexics.

9. Invented a technique that enabled the blind to "see" and navigate digital maps and to explore mathematical functions on standard PCs and smartphones with a sound card and the addition of a consumer grade graphics tablet via the use of custom S/W that runs on a standard web browser with [SVG](https://www.w3schools.com/graphics/svg_intro.asp) support.

10. Invented bioinformatic [PCR](https://www.youtube.com/watch?v=db0HzFTJtCs) algorithms that (1) can accurately detect the "Ct" of an assay with high levels of "inhibition" via the use of an AI threshold algorithm instead of the classic functional analysis technique, and (2) can trivially clean an assay of systematic "noise" especially where the assay contains significant inhibition. Note that the project took only 2 months, even though I had zero formal background in microbiology and genetics. I received intensive mentoring from domain experts.

11. Invented a network protocol for hybrid cable modems with a dialup upstream and RF downstream, where the "edge router" controlled access to both the dialup and RF networks, which enabled the edge router's ARP table to be dynamically modified when a modem logged on and off.

12. Designed a super efficient cable modem network laboratory which multiplied by a factor of 24 how many modems could be attached to a single PC via multiplexing with a dynamically [programmable layer-2 switch](https://www.youtube.com/watch?v=O3TiE1bkGOw).

13. Designed a GCC port for [Forth](https://en.wikipedia.org/wiki/Forth_(programming_language))-like CPUs that effectively allowed an unlimited number of registers.

14. Designed [Domain Specific Languages (DSL)](https://en.wikipedia.org/wiki/Domain-specific_language) for Quality Assurance (QA) projects that allowed them to be tested with scripts. Examples included satellite communications, client movie players, and milspec testing laboratories. The scripts exploited flaws in the satellite software design. The satellite scripts were used to implement sanity tests on the developer's desktop prior to code check-in which significantly reduced QA testing. The mil-spec scripts replaced 3+ meters of test documentation, and allowed the system engineer to write simple _ad hoc_ tests.

15. Invented a DSL for a [VLSI](https://en.wikipedia.org/wiki/Very-large-scale_integration) toolchain that clock-accurately emulated the CPU in "C" including its instruction pipeline. The "C" emulator ran 100 times faster than the electrical (e.g. VERILOG) simulator. Therefore the DSL enabled instruction set sanity tests to be run immediately every time the architecture changed. The DSL solved one of the most painful problems in designing the assembler manually, namely detection of when the pipeline was broken which required programmer insertion of NOP instructions. For many months the VLSI architects changed the pipeline restrictions on a regular basis. Therefore DSL included a restriction language. It allowed the assembler to be built within 2 hours multiple times a week.  The DSL was expanded to include a disassembler. Eventually the toolchain formed the backbone of a GUI debugger. The debugger incorporated programmable simulation of I/O ports. The debugger enabled the building of accurate applications many months before the physical CPU was produced (i.e. "taped out"). 

16. Invented a DSL which described an automated [sintered](https://en.wikipedia.org/wiki/Sintering) metal blade production factory in complete detail. At that time commercial quality object oriented (OO) languages did not yet exist. But the factory contained about 100 object classes, e.g. workstations, stands, pallets, automatic guided vehicles, stacks, conveyors, cranes, etc. Interrupt routines were required for tool sharpening maintenance, oiling of parts that stayed too long in storage, etc. The DSL included a scheduling language. We designed an object oriented language (in Pascal) which completely described the factory. The factory was operational within a year. The factory engineer could make gross changes to the configuration file, while clerks had individual GUI screens to make spot changes. Originally I had zero knowledge of factory design, but after about 2 month of mentoring from an industrial engineer, we began to design the software.

17. Invented an application for [quadriplegics](https://en.wikipedia.org/wiki/Tetraplegia) that enabled them to access a PC with a CRT screen via a telescopically extended [light pen](https://en.wikipedia.org/wiki/Light_pen) (800 mm vs 5 mm distance) and via a [sip-and-puff](https://en.wikipedia.org/wiki/Sip-and-puff) accessibility switch. The subject wears a head band to which the pen was attached. Designed a virtual screen interface which only popped up an individual virtual key when the pen hovered over it, leaving 95% of the screen still visible. The first subject was a quadriplegic polio victim who was able to type 30 characters per minute, and became a financially independent book editor.

18. Invented many small CS algorithms over many years: hardening, by collision reduction, of [Adler-32]( https://en.wikipedia.org/wiki/Adler-32 ) and new Adler-64 checksum; cryptographic quality light weight key wrapper implemented in registers; _invertible_ cross [Hamming Weight](https://en.wikipedia.org/wiki/Hamming_weight) transformation; cryptographic quality _non-invertible_ [FFT](https://en.wikipedia.org/wiki/Fast_Fourier_transform) _uniform_ Hamming Weight-like transformation; binary expandable hash table (size `2^N`) that can grow without rehashing;

## 3. Core Skills & Tools

* __Languages:__ C, Python, Bash including [Posix CLI Commands](https://en.wikipedia.org/wiki/List_of_POSIX_commands), HTML, XML, Markdown, YAML, Excel

* __Technologies:__ [srcML](https://www.srcml.org/) (commercial license), [Beautiful Soup](https://beautiful-soup-4.readthedocs.io/en/latest/), [Jinja2](https://en.wikipedia.org/wiki/Jinja_(template_engine)), [Pyexpander](https://pyexpander.sourceforge.io/), [WASM](https://webassembly.org/), Linux, [ELF](https://en.wikipedia.org/wiki/Executable_and_Linkable_Format), [Misra C](https://en.wikipedia.org/wiki/MISRA_C), GCC, Clang

* __Domains:__ Compiler Design, [Domain Specific Languages (DSL)](https://en.wikipedia.org/wiki/Domain-specific_language), [Code Refactoring](https://en.wikipedia.org/wiki/Code_refactoring) and [Obfuscation](https://en.wikipedia.org/wiki/Obfuscation_(software)) = anti-reverse engineering design, Cybersecurity, Reverse Engineering, Embedded Systems, Accessibility, Automotive Software, Factory Automation, Bioinformatics, Network Protocols

## 4. Work Experience

__2025:__ Independent: Founder & Principal Engineer Compiler & Obfuscation Tools Development

__2022-25:__ [Aurora Labs](https://www.auroralabs.com/), Tel Aviv: Senior Software Architect in CTO office for Digital Automotive Industry

__2021:__ [Morphisec](https://www.morphisec.com/), Beer Sheva: Senior Software Architect: Anti-Reverse Engineering Modifications to _Linux_ _x64_ Libc Kernel implemented with the help of the [Zydis](https://zydis.re/) x64 disassembler

__2021:__ [Qedit](https://qed-it.com/), Tel Aviv: Consultant: WASM Cybersecurity for Financial Industry

__2017-20:__ _Argus Cyber Security_ (now [PlaxidityX](https://plaxidityx.com/)), Tel Aviv: Senior Researcher for Digital Automotive Industry

__2013-17:__ [Viaccess-Orca](https://www.viaccess-orca.com/) (subsidiary of Orange FR), Ra'anana: Cybersecurity Obfuscation Manager for Internet TV industry

__2017 part-time:__ Independent: Dyslexic Accessibility

__2015 part-time:__ [Canary Mission]( https://canarymission.org/ ), Jerusalem: Consultant: Internet Security "Hygiene"

__2013 part-time:__ _NVT_, US (defunct): CTO: Agritech Startup for [Cassava]( https://en.wikipedia.org/wiki/Cassava ) Production in Nigerian Jungle

__2012:__ _Telequest_, Jerusalem: VP R&D: Automated Vehicle Navigation To Find Optimal Routes in City Traffic

__2011:__ [Syntezza Bioscience](https://www.syntezza.com/), Jerusalem: Consultant: Bioinformatic algorithms

__2005-10:__ _NDS_ (now [Synamedia](https://www.synamedia.com/)), Jerusalem: Senior Researcher: Internet TV Industry

__2002-03:__ _Virtouch_, Jerusalem (defunct): VP R&D: Blind Accessibility

__1999-2004:__ _Vyyo_, Jerusalem (defunct): S/W Group Leader: RF wireless cable modem industry

__1998:__ _Fourfold_, Jerusalem (defunct): Software architect: modified GCC compiler for massively parallel CPU for a [Forth]( https://en.wikipedia.org/wiki/Forth_(programming_language) )-like CPU with unlimited registers

__1990-97:__ _Pitkha_, Jerusalem (defunct): CEO: Domain Specific Language (DSL) Architect

__1990-91:__ [Iscar]( https://www.iscar.com/index.aspx/countryid/1/lang/en )-Matkash, Tefen: Software Architect: Factory Automation

__1988-89:__ _Cubital_ (subsidiary of [Scitex]( https://www.company-histories.com/Scitex-Corporation-Ltd-Company-History.html ) ), Herzliya: (1) S/W R&D: Early 3D printing (_stereo-lithography_); (2) Inventor: Quadriplegic Accessiblity For PCs

__...1983-84:__ [Elta IAI](https://www.iai.co.il/about/groups/elta-systems), Ashdod: junior embedded programmer: [Lavi fighter plane](https://en.wikipedia.org/wiki/IAI_Lavi)

__...1977:__ [Ontario Energy Board (OEB)](https://en.wikipedia.org/wiki/Ontario_Energy_Board), Toronto

* While attending the MBA program at the Univ. of Toronto (see below), I was an [intervenor]( https://en.wikipedia.org/wiki/Intervention_(law) ) in the _ECAP77_ hearings on [marginal cost pricing](https://en.wikipedia.org/wiki/Marginal_cost) for electricity at [Ontario Hydro](https://www.hydroone.com/). I was the first public interest intervenor in the history of the OEB to be awared costs. I published an oped about the hearings in Canada's then paper of record [The Globe and Mail](https://www.theglobeandmail.com/).

## 5. Education

__1979:__ _York University_, Toronto Canada: __MA Economics__, minor in Applied Mathematics

* Major Project: Simulated hydroelectric dam in FORTRAN

__1973-78:__ _University of Toronto_, Canada: __BA__ Undergraduate School of Arts & Sciences

* attended Rotman Graduate School of Management and Graduate School of Engineering where credits were applied to my _MA Economics_ above

## 6. Teaching & Mentorship

Part-time instructor and mentor in various technical domains. Strong advocate of pairing with domain experts to accelerate onboarding and innovation.
