# BPMN2ALLOY
**BPMN2ALLOY tool for BPMN**

![EXAMPLE.](Claim.pdf)

**Verification Properties**

`BPMN2ALLOY` supports the verification of business processes (Processes and collaborations) properties

- Simple Termination
- Correct termination completion
- safety
- soundness

**New properties and communication semantics can be easily taken into account** (see Sect, *Extending the verification*).

### Semi-automatic tool

1- Describe BPMN model en Alloy manually (eg., /Benchmark/ex4/example_TICE.als)
2- Define properties to check for the model (eg., /Benchmark/ex4/example_TICE_check.als)
2- Use the defined theories on Alloy analyser to check these properties

### Ressources

- site Alloy : https://alloytools.org/documentation.html
- référence card : https://www.ics.uci.edu/~alspaugh/cls/shr/alloy.html
- doc très complète : https://alloy.readthedocs.io/en/latest/index.html
- Doc du code d'alloytools : http://alloytools.org/documentation/alloy-api/overview-summary.html
- Source du code : https://github.com/AlloyTools/org.alloytools.alloy/releases
- Idée pour alloy cmdeline : http://alloy2smt.blogspot.com/2012/12/how-to-run-alloy-from-command-line.html
- Electrum : https://haslab.github.io/Electrum/
- Electrum : https://github.com/haslab/Electrum/wiki/Tutorial

### Solver Tested

- Solvers : 
use Glucose41 and  Sat4J
- Status display:
PWSSemantics/State$1.(nodemarks + edgemarks + localclocks)

