$py(
now = '2026-05-11'

linkedin = 'https://www.linkedin.com/in/avrahambernstein/'
www = 'https://www.avrahambernstein.com'
cv_pdf = www + '/AvrahamAbeBernstein-CV.pdf'
obfuscation_html = www + '/cv/obfuscation/obfuscation.html'

def obfus(text):
	return '<span class="hide">' + text + '</span>'
)

<address markdown="1">
__Email:__ Avraham DOT Bernstein PLUS cv AT gmail$(obfus('bozo@example.com')) DOT com
<br/>__Tel/Whatsapp:__ +$(obfus('bozo@example.com'))972.54.641-0955
<br/>__City:__ Jerusalem 9727433 ISRAEL
<br/>__Time Zone:__ [UTC +02:00/+03:00 (winter/summer)](https://www.timeanddate.com/worldclock/israel/jerusalem)
<br/>__[Shabbat Observant](https://www.chabad.org/library/article_cdo/aid/633659/jewish/What-Is-Shabbat.htm):__ Not accessible electronically nor engaging in any business activities from Fri. evening ([Jerusalem time](https://www.chabad.org/calendar/candlelighting_cdo/locationId/247/locationType/1/jewish/Candle-Lighting.htm)) beginning 1 hour before sunset until Sat. night 1 hour after sunset, nor on [Jewish holidays](https://www.hebcal.com/holidays/2026?i=on)
<br/>__Linkedin:__ [$(linkedin)]($(linkedin))
<br/>__WWW Home Page:__ [$(www)]($(www))
<br/>__Most Recent Version of CV:__ [$(cv_pdf)]($(cv_pdf))
<br/>__Last Update:__ $(now)
</address>

## 1. Summary

I am a senior software architect with over 40+ years of <span class="hilite">__INNOVATION__</span> in: 

* compiler construction, and design of domain specific languages (DSL)
* design of command line interfaces (CLI) and application programming interfaces (API)
	* for example that are extremely useful for scripting and testing GUIs, and for communicating with AI agents
* automated source code refactoring of C (2018), C++ (2014), C# (ECMA334), and Java (SE8)
	* via the [AST](https://en.wikipedia.org/wiki/Abstract_syntax_tree)-XML conversion utilities [srcML](https://www.srcml.org) and [Beautiful Soup](https://beautiful-soup-4.readthedocs.io/en/latest/)
* unique source code obfuscation techniques that greatly reduce the reverse engineering "attack surface" of linux apps (both workstation and embedded)
* simplify the design of source code with the assistance of various macro preprocessors and template engines
* algorithm design
* multiple patents and inventions in many different application domains

I worked at an __expert level__ in many industries including:

* cybersecurity
* automotive
* internet TV
* accessibility
* bioinformatics

I am an [expert generalist](https://simplicable.com/new/expert-generalist) and [autodidact](https://en.wikipedia.org/wiki/Autodidacticism) [polymath](https://en.wikipedia.org/wiki/Polymath) who thrives on technically challenging projects. I worked with CTO groups <span class="hilite">to solve problems that initially had __AMBIGUOUS__ problem specifications</span> in order to build prototypes and minimum viable products (MVPs). I was able to refine the problems in order to build commercially useful and _testable_ solutions. I prefer to work with and to mentor small teams.

On account of my age, I find that working as a consultant-contractor is the best fit for most employers. And for HR executives, here is a synopsis of a <span class="hilite">[financial study from Stanford Univ. on the benefits of hiring older employees]( https://longevity.stanford.edu/why-more-companies-are-recognizing-the-benefits-of-keeping-older-employees/ )</span>.

### Core Skills & Tools

* __Languages:__ C, Python, Tcl, [Jinja2](https://en.wikipedia.org/wiki/Jinja_(template_engine)), [Pyexpander](https://pyexpander.sourceforge.io/), Bash & [Posix CLI Commands]( https://en.wikipedia.org/wiki/List_of_POSIX_commands ), HTML, XML, Markdown, [WASM]( https://webassembly.org/ )

* __Technologies:__ [srcML](https://www.srcml.org/) (acquired commercial license), [Beautiful Soup]( https://beautiful-soup-4.readthedocs.io/en/latest/ ), Linux, [ELF](https://en.wikipedia.org/wiki/Executable_and_Linkable_Format), [Misra C]( https://en.wikipedia.org/wiki/MISRA_C ), GCC, Clang, [Zydis](https://zydis.re/), [Pandoc]( https://www.pandoc.org/ ), [Obsidian]( https://obsidian-html.github.io/index.html ), [Mkdocs](https://www.mkdocs.org/)/[Zensical](https://zensical.org/), YAML & [PKL]( https://pkl-lang.org/ )

* __Domains:__ Compiler Design, [Domain Specific Languages (DSL)](https://en.wikipedia.org/wiki/Domain-specific_language), [Code Refactoring](https://en.wikipedia.org/wiki/Code_refactoring) and [Obfuscation](https://en.wikipedia.org/wiki/Obfuscation_(software)) (= anti-reverse engineering), Cybersecurity, Reverse Engineering, Embedded Systems, Accessibility, Automotive Software, Factory Automation, Bioinformatics, Network Protocols

## 2. Inventions (Reverse Chronological Order)

1. <span class="hilite">Showed how [srcML](https://www.srcml.org/) combined with [Python Beautiful Soup]( https://beautiful-soup-4.readthedocs.io/en/latest/ ) could automatically refactor "C" source code for greatly improving the efficiency of automotive software updates, and for cybersecurity obfuscation.</span>

2. <span class="hilite">Invented Linux cybersecurity techniques, especially to minimize the attack surface of `.so` ([DSO](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux_for_real_time/7/html/reference_guide/chap-shared_libraries)) files that supply no formal exports, efficiently shroud system calls and strings and constants and randomize the stack, and thus are extremely difficult to reverse engineer. See [short technical description]($(obfuscation_html)).</span>

3. Patented FLASH techniques for implementing S/W updates on small FLASH devices, and small RAM for the automobile industry which are plagued with minimal FLASH and RAM in order to reduce the materials cost of the millions of vehicles that they produce.

4. Invented a technique for _dynamically_ loading a large static FLASH database into an embedded system that could be larger than RAM that does not violate any Misra C restrictions, with the help of preprocessing tools such as _Jinja2_ or _Pyexpander_.

5. Invented a simple technique to obfuscate photographs using [GIMP](https://en.wikipedia.org/wiki/GIMP) filters while remaining easily recognizable by a young child, but not recognizable by photographic database software.

6. Invented highly accurate [fuzzy logic](https://en.wikipedia.org/wiki/Fuzzy_logic) classifier used to discover [rooted]( https://en.wikipedia.org/wiki/Rooting_(Android) ) _Android_ devices.

7. Showed how trivial [Virtual Machine (VM)](https://en.wikipedia.org/wiki/Virtual_machine) attacks could disrupt _Digital Rights Management (DRM)_ protection, and how the [QEMU]( https://en.wikipedia.org/wiki/QEMU ) VM could disrupt the [cryptographic nonce]( https://en.wikipedia.org/wiki/Cryptographic_nonce ) mechanism which allowed subscriber IDs to be shared by a confederacy of pirates.

8. Invented a generic font modification technique in order to make them understandable by dyslexics.

9. Invented a technique that enabled the blind to "see" and navigate digital maps and to explore mathematical functions on standard PCs and smartphones with a sound card and the addition of a consumer grade graphics tablet via the use of custom S/W that runs on a standard web browser with [SVG](https://www.w3schools.com/graphics/svg_intro.asp) support.

10. Invented _bioinformatic_ [PCR](https://www.youtube.com/watch?v=db0HzFTJtCs) algorithms that (1) can accurately detect the "Ct" of an _assay_ with high levels of _inhibition_ via the use of an AI threshold algorithm instead of the classic functional analysis technique, and (2) can trivially clean the _systematic noise_  from an _assay_, especially useful when the _assay_ contains significant _inhibition_. Note that the project took only 2 months, even though I had zero formal background in microbiology and genetics. I received intensive mentoring from domain experts. I saved the client's project from bankruptcy.

11. Invented a network protocol for hybrid cable modems with a dialup upstream and RF downstream, where the "edge router" controlled access to both the dialup and RF networks, which enabled the edge router's ARP table to be dynamically modified when a modem logged on and off.

12. Designed a super efficient cable modem network laboratory which multiplied by a factor of 24 how many modems could be attached to a single PC via multiplexing with a dynamically [programmable layer-2 switch](https://www.youtube.com/watch?v=O3TiE1bkGOw).

13. Designed a GCC port for [Forth](https://en.wikipedia.org/wiki/Forth_(programming_language))-like CPUs that effectively allowed an unlimited number of registers.

14. Designed [Domain Specific Languages (DSL)](https://en.wikipedia.org/wiki/Domain-specific_language) for Quality Assurance (QA) projects that allowed them to be tested with scripts. Examples included satellite communications, client movie players, and milspec testing laboratories. The scripts exploited flaws in the satellite software design. The satellite scripts were used to implement sanity tests on the developer's desktop prior to code check-in which significantly reduced QA testing. The mil-spec scripts replaced 3+ meter high stack of test docs, and allowed the system engineer to write simple _ad hoc_ tests.

15. Invented a DSL for a [VLSI](https://en.wikipedia.org/wiki/Very-large-scale_integration) toolchain that clock-accurately emulated the CPU in "C" including its instruction pipeline. The "C" emulator ran 100 times faster than the electrical (e.g. VERILOG) simulator. Therefore the DSL enabled instruction set sanity tests to be run immediately every time the architecture changed. The DSL solved one of the most painful problems in designing the assembler manually, namely detection of when the pipeline was broken which required programmer insertion of NOP instructions. For many months the VLSI architects changed the pipeline restrictions on a regular basis. Therefore DSL included a restriction language. It allowed the assembler to be built within 2 hours multiple times a week.  The DSL was expanded to include a disassembler. Eventually the toolchain formed the backbone of a GUI debugger. The debugger incorporated programmable simulation of I/O ports. The debugger enabled the building of accurate applications many months before the physical CPU was produced (i.e. "taped out"). 

16. Invented a DSL which described an automated [sintered](https://en.wikipedia.org/wiki/Sintering) metal blade production factory in complete detail. At that time commercial quality object oriented (OO) languages did not yet exist. But the factory contained about 50 object classes, e.g. workstations, stands, pallets, automatic guided vehicles, stacks, conveyors, cranes, etc. Interrupt routines were required for tool sharpening maintenance, oiling of parts that stayed too long in storage, etc. The DSL included a scheduling language. We designed an object oriented language (in Pascal) which completely described the factory. The factory was operational within a year. The factory engineer could make gross changes to the configuration file, while clerks had individual GUI screens to make spot changes. Originally I had zero knowledge of factory design, but after about 2 month of mentoring from an industrial engineer, we began to design the software.

17. Invented an application for [quadriplegics](https://en.wikipedia.org/wiki/Tetraplegia) that enabled them to access a PC with a CRT screen via a telescopically extended [light pen](https://en.wikipedia.org/wiki/Light_pen) (800 mm vs 5 mm distance) and via a [sip-and-puff](https://en.wikipedia.org/wiki/Sip-and-puff) accessibility switch. The subject wears a head band to which the pen was attached. Designed a virtual screen interface which only popped up an individual virtual key when the pen hovered over it, leaving 95% of the screen still visible. The first user was a quadriplegic polio victim who was able to type 30 characters per minute, and became a financially independent book editor.

18. Invented many small CS algorithms over the years: hardened (minimized collisions) [Adler-32]( https://en.wikipedia.org/wiki/Adler-32 ) and new Adler-64 checksum; cryptographic quality key wrapper implemented in registers; _invertible_ cross [Hamming Weight](https://en.wikipedia.org/wiki/Hamming_weight) transformation; cryptographic quality [FFT](https://en.wikipedia.org/wiki/Fast_Fourier_transform) _uniformly distributed_ Hamming Weight-like primitive; binary expandable hash table (size `2^N`) that can grow without rehashing

## 3. Work Experience

__2025:__ Independent: Founder & Principal Engineer Compiler & Obfuscation Tools Development. Download [brochure]( https://www.avrahambernstein.com/cv/BernsteinCybersecObfuscationRefactoringBrochure.docx ). 

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

__2005-10:__ _NDS_ (now [Synamedia](https://www.synamedia.com/)), Jerusalem: Senior Cybersecurity Researcher: Internet TV Industry

__2002-03:__ _Virtouch_, Jerusalem (defunct): VP R&D: Blind Accessibility

__1999-2004:__ _Vyyo_, Jerusalem (defunct): S/W Group Leader: RF wireless cable modem industry

__1998:__ _Fourfold_, Jerusalem (defunct): Software architect: modified GCC compiler for massively parallel CPU for a [Forth]( https://en.wikipedia.org/wiki/Forth_(programming_language) )-like CPU with unlimited registers

__1991-97:__ _Pitkha_, Jerusalem (defunct): CEO: Domain Specific Language (DSL) Architect

__1990-91:__ [Iscar]( https://www.iscar.com/index.aspx/countryid/1/lang/en )-Matkash, Tefen: Software Architect: Factory Automation

__1988-89:__ _Cubital_ (subsidiary of [Scitex]( https://www.company-histories.com/Scitex-Corporation-Ltd-Company-History.html ) ), Herzliya:

* S/W R&D: Early 3D printing (_stereo-lithography_)
* Inventor: Quadriplegic Accessiblity for PCs

__...1983-84:__ [Elta IAI](https://www.iai.co.il/about/groups/elta-systems), Ashdod: junior embedded programmer: [Lavi fighter plane](https://en.wikipedia.org/wiki/IAI_Lavi)

__...1977:__ [Ontario Energy Board (OEB)](https://en.wikipedia.org/wiki/Ontario_Energy_Board), Toronto

* While attending the MBA program at the Univ. of Toronto (see below), I was an [intervenor]( https://en.wikipedia.org/wiki/Intervention_(law) ) in the _ECAP77_ hearings on [marginal cost pricing](https://en.wikipedia.org/wiki/Marginal_cost) for electricity at [Ontario Hydro](https://www.hydroone.com/). I was the first public interest intervenor in the history of the _OEB_ to be awared costs. I published an oped about the hearings in Canada's then paper of record [The Globe and Mail](https://www.theglobeandmail.com/). With perfect hindsight the experience taught me a great deal, that I carried throughout my whole life, how a single individual could stand up and make a meaningful difference against government injustice.

## 4. Education

__1979:__ _York University_, Toronto Canada: __MA Economics__, minor in Applied Mathematics

__1973-78:__ _University of Toronto_, Canada: __BA__ Undergraduate School of Arts & Sciences

* I did graduate studies at the [Rotman Graduate School of Management (MBA program)](https://www.rotman.utoronto.ca/) and Graduate School of Engineering where credits were applied to my _MA Economics_ above. After the _Ontario Energy Board_ (OEB) hearings immediately above in 1977, I switched focus to engineering. I extraordinarily passed my economic compulsory examinations before I even started the _York Univ._ program, so the school allowed to me to take graduate level courses anywhere I chose.

## 5. Teaching & Mentorship

Part-time college and highschool instructor and mentor for computer science and mathematics. I am a strong advocate of pairing with domain experts to accelerate onboarding and innovation.

For younger children I tutor mathematics and music (via the free [MuseScore](https://musescore.com/) application). I taught a 2nd grader the basics of exponents and logarithms within 30 minutes using a mathematical calculator application found on most smart phones. I kinesiologically taught my mildly ADHD 5th grade granddaughter a half year of fractions in two morning sessions at a bakery (beginning with a non-sweetened breakfast) by using a roll of 50 coins. Similarly I kinesiologically taught my 3rd grade grandson the basics of multiplication using floor tiles and masking tape. I remotely (via the free [AnyDesk](https://anydesk.com/en) application) teach my 7th grade grandson computer and mathematical programming using [Python turtle graphics](https://docs.python.org/3/library/turtle.html). I am preparing my 11th grade granddaughter for her Israeli high-school matriculation examination in mathematics (4 units). (I expect/hope that she will get a grade of 90). I have a technique for teaching deep meditation within a few hours by using a free [metronome application](https://metronome.app). I teach the children co-ordination and concentration exercises by using "boxer" jump rope techniques.

## 6. AI Experience

### LLM

My last project at _Aurora Labs_ (above) in 2025 required that I use an _LLM_ to estimate the execution time required to run an assembly program on a (then) new automotive CPU by training with _JTAG_ output. However I found that by creating a [QEMU](https://en.wikipedia.org/wiki/QEMU)-like description of the instruction set in custom Python code __which included timing information__, I got much more accurate timing results. Unfortunately management was displeased with my approach because an _LLM_ was new and sexy compared to _QEMU_. In one of my first major projects for _DSPG_ (above) in 1992, I already had experience creating a clock accurate CPU emulator.

In general I find that running a pre-processing parser that _understands the structure of the raw text_ used to train an _LLM_ provides much better results than simply feeding an _LLM_ raw text. For example a common problem is using an _LLM_ to process a _PDF_ file. The processing can be greatly improved when fed the _markdown_ text that was used to generate the _PDF_. When the original _markdown_ (or _docx_) is not available then a _FOSS_ program such as the _markdown-it_ parser which outputs _markdown_ enables the _LLM_ to generate much more accurate and much less expensive results because the raw _PDF_ file contains a huge amount of formatting "noise" which intentionally is not contained in the _markdown_ file. Similarly an _LLM_ can understand computer source code far better when provided with the _AST_ description (e.g. output by _SrcML_ or _Tree-Sitter_) as opposed to the raw source code.

### Threshold Classifier

In 2011 I worked on a bioinformatics [PCR](https://en.wikipedia.org/wiki/Polymerase_chain_reaction) project for _Syntezza Bioscience_ (above). Their preliminary [MRSA](https://en.wikipedia.org/wiki/Methicillin-resistant_Staphylococcus_aureus) detector kit chemistry did not correctly remove impurities from patient samples. Therefore instead of their results showing a classic sigmoidal curve of a bioassay, their results looked like a random cloud, so the industry standard PCR mathematical analysis of curve fitting and functional analysis would not work. Because their results were so incorrect, they were on track for bankruptcy, from which my AI "threshold classifier" algorithm saved them. After discussing the matter with the company's chief scientist who was a microbiologist, he agreed with my observation that [inhibition](https://en.wikipedia.org/wiki/Polymerase_chain_reaction_inhibitors) resulting from the impurities only reduces some, _but not all_, of the bioassay data points; regardless inhibition never increases their value. On each of the 3 PCR channels, I used only the single highest raw data point. (In hindsight, perhaps I should have used the average value less the standard deviation). I split the 800 samples in half, one half to be used for training and the other half to be used to test my predictions. All samples were initially tested by the gold standard analogue Petri dish analysis to determine whether or not they were MRSA positive. From the training samples I determined what was the lowest raw value of positive samples, and the highest raw value of negative samples (for each of the 3 PCR channels). Each test sample that exceeded the threshold value of the training data's MRSA positive minimal value was declared PCR positive, also as long as that sample did not fall below the threshold value of the training data's MRSA negative maximal value (for each of the 3 PCR channels). My predictions were 95% accurate. At a PCR MRSA "shoot out" at the prestigious St. Georges teaching hospital in London, my algorithm was a more accurate predictor than those of the big international pharmaceutical companies relying upon classical PCR mathematics. Note that the whole project took me just 3 months. Before that I had no university level background in biology, genetics, or bioinformatics.

## 7. To Learn

1. AI [Large Language Models (LLM)](https://en.wikipedia.org/wiki/Large_language_model): especially inexpensive and more secure local versions.
2. [Neovim](https://neovim.io/): programming editor upgrade to [Vim](https://en.wikipedia.org/wiki/Vim_(text_editor)).
3. [Tree-Sitter](https://tree-sitter.github.io/tree-sitter/) [Abstract Syntax Tree (AST)](https://en.wikipedia.org/wiki/Abstract_syntax_tree): dynamic parser plugin for programming editors such as _neovim_ (above).
4. [Zig](https://ziglang.org/): new `C`-like programming language that can cross compile to `C` and that conforms to the industry standard `C` [Application Binary Interface (ABI)](https://en.wikipedia.org/wiki/Application_binary_interface). Has many new language features such as much better dynamic memory allocation mechanism, generic types, and compile time functions instead of preprocessing macros.
5. [Mimalloc](https://github.com/microsoft/mimalloc): better dynamic memory allocator that is a drop-in replacement for `C` [malloc](https://en.wikipedia.org/wiki/C_dynamic_memory_allocation) that can be dynamically implemented system-wide via `LD_PRELOAD`.
6. [Musl](https://musl.libc.org/): static replacement for _Linux_ [libc](https://en.wikipedia.org/wiki/C_standard_library) with better security because no need for loading dynamic shared libraries (i.e. `.so` files).
7. [NeuroSky](https://neurosky.com/): small inexpensive noninvasive brain computer interface (BCI) that enables brain waves to control a USB keyboard and that does not require pasting electrodes on the scalp.
