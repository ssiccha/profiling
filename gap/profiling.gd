#
# profiling: Line by line profiling and code coverage for GAP
#
# Declarations
#

#! @Arguments filename
#! @Description
#!   Read <A>filename</A>, a line by line profile which was previously generated
#!   by GAP, using ProfileLineByLine or CoverageLineByLine functions from core GAP.
#!   A parsed profile can be transformed into a human-readable form using either
#!   <Ref Func="OutputAnnotatedCodeCoverageFiles"/> or
#!   <Ref Func="OutputFlameGraph"/>
DeclareGlobalFunction( "ReadLineByLineProfile" );




#! @Arguments codecover [, filename]
#! @Description
#!   Generate an 'svg' file which represents a 'flame graph', a method of visualising
#!   where time is spent by a program.
#!   <P/>
#!   <A>codecover</A> should either be a profile previously read by
#!   <F>ReadLineByLineProfile</F>, or the filename of a profile.
#!   <P/>
#!   The flame graph input will be written to <A>filename</A> (or returned as a
#!   string if <A>filename</A> is not present).
DeclareGlobalFunction("OutputFlameGraph");

#! @Arguments codecover [, filename]
#! @Description
#!   Generate the input required to draw a 'flame graph', a method of visualising
#!   where time is spent by a program. One program for drawing flame graphs using
#!   this output can be found at <URL>https://github.com/brendangregg/FlameGraph</URL>
#!   <P/>
#!   <A>codecover</A> should either be a profile previously read by
#!   <F>ReadLineByLineProfile</F>, or the filename of a profile.
#!   <P/>
#!   The flame graph input will be written to <A>filename</A> (or returned as a
#!   string if <A>filename</A> is not present).
DeclareGlobalFunction("OutputFlameGraphInput");

#! @Arguments codecover, [indir,] outdir
#! @Description
#!   Takes a previously generated profile and outputs HTML which shows which lines
#!   of code were executed, and (if this was originally recorded) how long was spent
#!   executing these lines of code.
#!   <P/>
#!   <A>codecover</A> should either be a profile previously read by
#!   <F>ReadLineByLineProfile</F>, or the filename of a profile which will first
#!   be read with <F>ReadLineByLineProfile</F>.
#!   <P/>
#!   Files will be written to the directory <A>outdir</A>.
#!   <P/>
#!   The optional second argument gives a filter, only information about filenames
#!   starting with <A>indir</A> will be outputted.
DeclareGlobalFunction("OutputAnnotatedCodeCoverageFiles");
