set language "C"
set globalAPint ""
set globalVariable ""
set staticVariable ""
set moduleName "neural_network"
set moduleIsExternC "0"
set rawDecl [list "void" "neural_network\(data_t input\[784 /* 28 * 28*/\], data_t output\[10\]\)"]
set argAPint ""
set returnAPint ""
set portList ""
set portName0 "input"
set portInterface0 "[list axi_master 0]"
set portData0 "[list ap_fixed "16" "8" "SC_TRN" "SC_WRAP" "0" ]"
set portPointer0 "0"
set portArrayDim0 [list 784]
set portConst0 "0"
set portVolatile0 "0"
set portArrayOpt0 ""
set port0 [list $portName0 $portInterface0 $portData0 $portPointer0 $portArrayDim0 $portConst0 $portVolatile0 $portArrayOpt0]
lappend portList $port0
set portName1 "output"
set portInterface1 "[list axi_master 0]"
set portData1 "[list ap_fixed "16" "8" "SC_TRN" "SC_WRAP" "0" ]"
set portPointer1 "0"
set portArrayDim1 [list 10]
set portConst1 "0"
set portVolatile1 "0"
set portArrayOpt1 ""
set port1 [list $portName1 $portInterface1 $portData1 $portPointer1 $portArrayDim1 $portConst1 $portVolatile1 $portArrayOpt1]
lappend portList $port1
set dataPackList ""
set module [list $moduleName $portList $rawDecl $argAPint $returnAPint $dataPackList]
set hasCPPAPInt 0
set hasCPPAPFix 1
set hasSCFix 0
set hasCPPComplex 0
set hasCBool 0
set isTemplateTop 0
set useIntT 1
