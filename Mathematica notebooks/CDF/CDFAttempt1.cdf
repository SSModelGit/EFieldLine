(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     13226,        398]
NotebookOptionsPosition[     13782,        393]
NotebookOutlinePosition[     14231,        413]
CellTagsIndexPosition[     14188,        410]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"f1", "[", "i_", "]"}], ":=", 
   RowBox[{"DialogInput", "[", 
    RowBox[{"DynamicModule", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"p", "=", 
         RowBox[{"{", 
          RowBox[{"0", ",", "0"}], "}"}]}], ",", 
        RowBox[{"q", " ", "=", " ", "0"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{"Column", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"StringJoin", "[", 
           RowBox[{"{", 
            RowBox[{"\"\<Charge \>\"", ",", 
             RowBox[{"ToString", "[", "i", "]"}]}], "}"}], "]"}], ",", 
          RowBox[{"Row", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Column", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Slider2D", "[", 
                 RowBox[{
                  RowBox[{"Dynamic", "[", "p", "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "5"}], ",", 
                    RowBox[{"-", "5"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"5", ",", "5"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0.5", ",", "0.5"}], "}"}]}], "}"}]}], "]"}], ",",
                 "\[IndentingNewLine]", 
                RowBox[{"Dynamic", "[", "p", "]"}]}], "}"}], "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Column", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                "TextCell", "[", 
                 "\"\<Charge Value of Charged Particle in Coloumbs\>\"", 
                 "]"}], ",", "\[IndentingNewLine]", 
                RowBox[{"InputField", "[", 
                 RowBox[{
                  RowBox[{"Dynamic", "[", "q", "]"}], ",", "Number"}], "]"}], 
                ",", "\[IndentingNewLine]", 
                RowBox[{"DefaultButton", "[", 
                 RowBox[{"\"\<OK\>\"", ",", 
                  RowBox[{"DialogReturn", "[", 
                   RowBox[{"{", 
                    RowBox[{"p", ",", "q"}], "}"}], "]"}]}], "]"}]}], "}"}], 
              "]"}]}], "}"}], "]"}]}], "}"}], "]"}], "}"}]}], "]"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"f2", "[", "i_", "]"}], ":=", 
   RowBox[{"DialogInput", "[", 
    RowBox[{"DynamicModule", "[", 
     RowBox[{
      RowBox[{"{", "n", "}"}], ",", 
      RowBox[{"Column", "[", 
       RowBox[{"{", 
        RowBox[{
        "\"\<Number of Charged Particles Contributing to Electric Field\>\"", 
         ",", 
         RowBox[{"InputField", "[", 
          RowBox[{
           RowBox[{"Dynamic", "[", "n", "]"}], ",", "Number"}], "]"}], ",", 
         RowBox[{"DefaultButton", "[", 
          RowBox[{"\"\<OK\>\"", ",", 
           RowBox[{"DialogReturn", "[", "n", "]"}]}], "]"}]}], "}"}], "]"}]}],
      "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"g", "[", "i_", "]"}], ":=", 
   RowBox[{
    RowBox[{"componentNames", "[", 
     RowBox[{"[", "i", "]"}], "]"}], "\[Element]", 
    "\"\<EFieldLine.Components.CParticle\>\""}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"h", "[", "i_", "]"}], ":=", 
   RowBox[{
    RowBox[{
     RowBox[{"componentNames", "[", 
      RowBox[{"[", "i", "]"}], "]"}], "<>", "\"\<.field\>\""}], "\[Rule]", 
    " ", "\"\<tparticle1.E\>\""}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"j", "[", "i_", "]"}], ":=", 
   RowBox[{
    RowBox[{
     RowBox[{"componentNames", "[", 
      RowBox[{"[", "i", "]"}], "]"}], "<>", "\"\<.q\>\""}], "\[Rule]", " ", 
    RowBox[{
     RowBox[{"chargeInfo", "[", 
      RowBox[{"[", "i", "]"}], "]"}], "[", 
     RowBox[{"[", "2", "]"}], "]"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"k", "[", "i_", "]"}], ":=", 
   RowBox[{
    RowBox[{
     RowBox[{"componentNames", "[", 
      RowBox[{"[", "i", "]"}], "]"}], "<>", "\"\<.x\>\""}], "\[Rule]", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"chargeInfo", "[", 
       RowBox[{"[", "i", "]"}], "]"}], "[", 
      RowBox[{"[", "1", "]"}], "]"}], "[", 
     RowBox[{"[", "1", "]"}], "]"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"m", "[", "i_", "]"}], ":=", 
   RowBox[{
    RowBox[{
     RowBox[{"componentNames", "[", 
      RowBox[{"[", "i", "]"}], "]"}], "<>", "\"\<.y\>\""}], "\[Rule]", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"chargeInfo", "[", 
       RowBox[{"[", "i", "]"}], "]"}], "[", 
      RowBox[{"[", "1", "]"}], "]"}], "[", 
     RowBox[{"[", "2", "]"}], "]"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"nCharges", "=", 
   RowBox[{"f2", "[", "1", "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"chargeInfo", " ", "=", " ", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"f1", "[", "i", "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"i", ",", "1", ",", "nCharges"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"componentNames", "=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"\"\<c\>\"", "<>", 
      RowBox[{"ToString", "[", "i", "]"}]}], ",", 
     RowBox[{"{", 
      RowBox[{"i", ",", "1", ",", "nCharges"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"components", "=", 
   RowBox[{"Append", "[", 
    RowBox[{
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"g", "[", "x", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "1", ",", "nCharges"}], "}"}]}], "]"}], ",", 
     RowBox[{
     "\"\<tparticle1\>\"", " ", "\[Element]", 
      "\"\<EFieldLine.Components.TParticle\>\""}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"connections", "=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"h", "[", "x", "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", "1", ",", "nCharges"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"Needs", "[", "\"\<WSMLink`\>\"", "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Append", "[", 
   RowBox[{"components", ",", 
    RowBox[{
    "\"\<tparticle1\>\"", " ", "\[Element]", 
     "\"\<EFieldLine.Components.TParticle\>\""}]}], "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"model", "=", 
  RowBox[{"WSMConnectComponents", "[", 
   RowBox[{"\"\<Attempt\>\"", ",", "components", ",", "connections"}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"WSMSetValues", "[", 
   RowBox[{"model", ",", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"j", "[", "x", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"x", ",", "1", ",", "nCharges"}], "}"}]}], "]"}]}], "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"WSMSetValues", "[", 
   RowBox[{"model", ",", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"k", "[", "x", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"x", ",", "1", ",", "nCharges"}], "}"}]}], "]"}]}], "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"WSMSetValues", "[", 
   RowBox[{"model", ",", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"m", "[", "x", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"x", ",", "1", ",", "nCharges"}], "}"}]}], "]"}]}], "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"createStartPoints", "[", 
    RowBox[{"x0_", ",", "y0_", ",", "r_", ",", "n_"}], "]"}], ":=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"r", "*", 
         RowBox[{"Cos", "[", "theta", "]"}]}], "+", "x0"}], ",", 
       RowBox[{
        RowBox[{"r", "*", 
         RowBox[{"Sin", "[", "theta", "]"}]}], "+", "y0"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"theta", ",", "0", ",", 
       RowBox[{"2", "*", "Pi"}], ",", 
       RowBox[{"2", "*", 
        RowBox[{"Pi", "/", "n"}]}]}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"singleEfieldLineSim", "[", 
    RowBox[{"{", 
     RowBox[{"x0_", ",", " ", "y0_"}], "}"}], "]"}], ":=", " ", 
   RowBox[{"WSMSimulate", "[", 
    RowBox[{"\"\<Attempt\>\"", ",", " ", 
     RowBox[{"{", 
      RowBox[{"0", ",", "100"}], "}"}], ",", 
     RowBox[{"WSMParameterValues", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"\"\<tparticle1.x0\>\"", "\[Rule]", 
         RowBox[{"{", "x0", "}"}]}], ",", 
        RowBox[{"\"\<tparticle1.y0\>\"", "\[Rule]", 
         RowBox[{"{", "y0", "}"}]}]}], "}"}]}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"multipleEfieldLineSims", "[", 
    RowBox[{"x0_", ",", "y0_", ",", "r_", ",", "n_"}], "]"}], ":=", 
   RowBox[{"Map", "[", 
    RowBox[{"singleEfieldLineSim", ",", 
     RowBox[{"createStartPoints", "[", 
      RowBox[{"x0", ",", "y0", ",", "r", ",", "n"}], "]"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"dmR1SimTime", "[", "i_", "]"}], ":=", 
   RowBox[{
    RowBox[{
     RowBox[{"mR1", "[", 
      RowBox[{"[", "i", "]"}], "]"}], "[", "\"\<SimulationInterval\>\"", 
     "]"}], "[", 
    RowBox[{"[", "2", "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"results", "=", 
   RowBox[{"Table", "[", 
    RowBox[{"1", ",", 
     RowBox[{"{", 
      RowBox[{"l", ",", "1", ",", "nCharges"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"EpPlot", "[", "i_", "]"}], ":=", 
   RowBox[{"ParametricPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"xR1", "[", 
         RowBox[{"[", "i", "]"}], "]"}], "[", "\[FormalT]", "]"}], ",", 
       RowBox[{
        RowBox[{"yR1", "[", 
         RowBox[{"[", "i", "]"}], "]"}], "[", "\[FormalT]", "]"}]}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"\[FormalT]", ",", "0", ",", 
       RowBox[{"dmR1SimTime", "[", "i", "]"}]}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Quiet", "[", 
   RowBox[{"For", "[", 
    RowBox[{
     RowBox[{"i", "=", "1"}], ",", 
     RowBox[{"i", "\[LessEqual]", "nCharges"}], ",", 
     RowBox[{"i", "++"}], ",", 
     RowBox[{
      RowBox[{"mR1", " ", "=", " ", 
       RowBox[{"multipleEfieldLineSims", "[", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"chargeInfo", "[", 
            RowBox[{"[", "i", "]"}], "]"}], "[", 
           RowBox[{"[", "1", "]"}], "]"}], "[", 
          RowBox[{"[", "1", "]"}], "]"}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{"chargeInfo", "[", 
            RowBox[{"[", "i", "]"}], "]"}], "[", 
           RowBox[{"[", "1", "]"}], "]"}], "[", 
          RowBox[{"[", "2", "]"}], "]"}], ",", "0.25", ",", "20"}], "]"}]}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{"yR1", "=", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"mR1", "[", 
           RowBox[{"[", "x", "]"}], "]"}], "[", "\"\<tparticle1.y\>\"", "]"}],
          ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "1", ",", 
           RowBox[{
            RowBox[{"Dimensions", "[", "mR1", "]"}], "[", 
            RowBox[{"[", "1", "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"xR1", "=", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"mR1", "[", 
           RowBox[{"[", "y", "]"}], "]"}], "[", "\"\<tparticle1.x\>\"", "]"}],
          ",", 
         RowBox[{"{", 
          RowBox[{"y", ",", "1", ",", 
           RowBox[{
            RowBox[{"Dimensions", "[", "mR1", "]"}], "[", 
            RowBox[{"[", "1", "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"results", "[", 
        RowBox[{"[", "i", "]"}], "]"}], "=", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"EpPlot", "[", "z", "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"z", ",", "1", ",", 
           RowBox[{
            RowBox[{"Dimensions", "[", "mR1", "]"}], "[", 
            RowBox[{"[", "1", "]"}], "]"}]}], "}"}]}], "]"}]}]}]}], "]"}], 
   "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"Show", "[", 
  RowBox[{"results", ",", 
   RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]}], "Input"]
},
WindowSize->{808, 619},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (December 4, \
2014)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1464, 33, 12314, 358, 801, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature IvTmjdL1MDXkkAKPYzIWLbu1 *)
