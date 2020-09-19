open PWSSyntax
open PWSProp


one sig A_ extends Process {} {contains = SubProcess_0mgtdae + StartEvent_0ayuyd2 + EndEvent_0ns8te3
}

one sig SubProcess_0mgtdae extends SubProcess {} {contains = EndEvent_0v9lt5i + Task_1rt44mz + Task_1eirt50 + Task_097548f + ExclusiveGateway_1j1chqb + StartEvent_1 + ExclusiveGateway_0079typ
}

one sig StartEvent_0ayuyd2 extends NoneStartEvent {} {}

one sig EndEvent_0ns8te3 extends NoneEndEvent {} {}

one sig EndEvent_0v9lt5i extends NoneEndEvent {} {}

one sig Task_1rt44mz extends AbstractTask {} {}

one sig Task_1eirt50 extends AbstractTask {} {}

one sig Task_097548f extends AbstractTask {} {}

one sig ExclusiveGateway_1j1chqb extends Parallel {} {}

one sig StartEvent_1 extends NoneStartEvent {} {}

one sig ExclusiveGateway_0079typ extends Parallel {} {}


one sig SequenceFlow_00aes3w extends NormalSequentialFlow {} {source = SubProcess_0mgtdae
target = EndEvent_0ns8te3
}

one sig SequenceFlow_1vue23p extends NormalSequentialFlow {} {source = StartEvent_0ayuyd2
target = SubProcess_0mgtdae
}

one sig SequenceFlow_0z2xwql extends NormalSequentialFlow {} {source = StartEvent_1
target = ExclusiveGateway_1j1chqb
}

one sig SequenceFlow_0wto9d1 extends NormalSequentialFlow {} {source = ExclusiveGateway_1j1chqb
target = Task_1eirt50
}

one sig SequenceFlow_0uplc1a extends NormalSequentialFlow {} {source = ExclusiveGateway_1j1chqb
target = Task_097548f
}

one sig SequenceFlow_01wc4ks extends NormalSequentialFlow {} {source = Task_097548f
target = ExclusiveGateway_0079typ
}

one sig SequenceFlow_0b7efwa extends NormalSequentialFlow {} {source = Task_1eirt50
target = ExclusiveGateway_0079typ
}

one sig SequenceFlow_1fuwd1z extends NormalSequentialFlow {} {source = ExclusiveGateway_0079typ
target = Task_1rt44mz
}

one sig SequenceFlow_0uzla8o extends NormalSequentialFlow {} {source = Task_1rt44mz
target = EndEvent_0v9lt5i
}


check {Safe} for 0 but 15 State

check {SimpleTermination} for 0 but 15 State

check {CorrectTermination} for 0 but 15 State

run {Safe} for 0 but 11 State


