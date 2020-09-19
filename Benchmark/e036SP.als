open PWSSyntax
open PWSProp


one sig P_ extends Process {} {contains = StartEvent_1 + SubProcess_1glz8ii + EndEvent_0a59w28
}

one sig StartEvent_1 extends NoneStartEvent {} {}

one sig SubProcess_1glz8ii extends SubProcess {} {contains = StartEvent_09ojxru + EndEvent_0atuxkh + EndEvent_1bu7x75 + ExclusiveGateway_1449jmr
}

one sig EndEvent_0a59w28 extends NoneEndEvent {} {}

one sig StartEvent_09ojxru extends NoneStartEvent {} {}

one sig EndEvent_0atuxkh extends NoneEndEvent {} {}

one sig EndEvent_1bu7x75 extends NoneEndEvent {} {}

one sig ExclusiveGateway_1449jmr extends Parallel {} {}


one sig SequenceFlow_12utbfs extends NormalSequentialFlow {} {source = StartEvent_1
target = SubProcess_1glz8ii
}

one sig SequenceFlow_00j4ong extends NormalSequentialFlow {} {source = SubProcess_1glz8ii
target = EndEvent_0a59w28
}

one sig SequenceFlow_1yn4txk extends NormalSequentialFlow {} {source = StartEvent_09ojxru
target = ExclusiveGateway_1449jmr
}

one sig SequenceFlow_0xc489r extends NormalSequentialFlow {} {source = ExclusiveGateway_1449jmr
target = EndEvent_0atuxkh
}

one sig SequenceFlow_1ue74ws extends NormalSequentialFlow {} {source = ExclusiveGateway_1449jmr
target = EndEvent_1bu7x75
}


check {Safe} for 0 but 15 State

check {SimpleTermination} for 0 but 9 State

check {CorrectTermination} for 0 but 9 State

run {Safe} for 0 but 15 State


