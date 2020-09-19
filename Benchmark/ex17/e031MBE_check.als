open e031MBE as m
open PWSSyntax
open PWSSemantics
open PWSProp
open PWSWellformed

check {Safe} for 0 but 7 Int, 10 State

check {SimpleTermination} for 0 but 9 State
check {CorrectTermination} for 0 but 9 State

run {} for 0 but 8 State

check WellFormed for 1


