module e031MBE

open PWSSyntax
open PWSProp

one sig m1 extends Message {}


one sig P_ extends Process {} {contains = StartEvent_1 + ExclusiveGateway_1uyyba4 + Task_1rjwiou + Task_05h2dnk + ExclusiveGateway_04stbki + SubProcess_0ikactq + ExclusiveGateway_06yyw6a + EndEvent_1bmsqno + BoundaryEvent_1g6jly9
}

one sig Q_ extends Process {} {contains = StartEvent_0pevvbh + EndEvent_03g8tis + Task_0dvwezg
}

one sig StartEvent_1 extends NoneStartEvent {} {}

one sig ExclusiveGateway_1uyyba4 extends Parallel {} {}

one sig Task_1rjwiou extends AbstractTask {} {}

one sig Task_05h2dnk extends AbstractTask {} {}

one sig ExclusiveGateway_04stbki extends ExclusiveOr {} {}

one sig SubProcess_0ikactq extends SubProcess {} {contains = StartEvent_1em4yhi + Task_1kf2bvv + EndEvent_07lweo2
}

one sig ExclusiveGateway_06yyw6a extends Parallel {} {}

one sig EndEvent_1bmsqno extends NoneEndEvent {} {}

one sig BoundaryEvent_1g6jly9 extends MessageBoundaryEvent {} {
    attachedTo = SubProcess_0ikactq
    interrupting = True
    }

one sig StartEvent_1em4yhi extends NoneStartEvent {} {}

one sig Task_1kf2bvv extends AbstractTask {} {}

one sig EndEvent_07lweo2 extends NoneEndEvent {} {}

one sig StartEvent_0pevvbh extends NoneStartEvent {} {}

one sig EndEvent_03g8tis extends NoneEndEvent {} {}

one sig Task_0dvwezg extends SendTask {} {}


one sig MessageFlow_1arf9uv extends MessageFlow {} {source = Task_0dvwezg
target = BoundaryEvent_1g6jly9

message = m1
}

one sig SequenceFlow_1uzescv extends NormalSequentialFlow {} {source = StartEvent_1
target = ExclusiveGateway_1uyyba4
}

one sig SequenceFlow_1qymta9 extends NormalSequentialFlow {} {source = ExclusiveGateway_1uyyba4
target = Task_1rjwiou
}

one sig SequenceFlow_1t3nh6y extends NormalSequentialFlow {} {source = ExclusiveGateway_1uyyba4
target = Task_05h2dnk
}

one sig SequenceFlow_07f8qba extends NormalSequentialFlow {} {source = Task_1rjwiou
target = ExclusiveGateway_04stbki
}

one sig SequenceFlow_0aq5v2x extends NormalSequentialFlow {} {source = Task_05h2dnk
target = ExclusiveGateway_04stbki
}

one sig SequenceFlow_0ylruuw extends NormalSequentialFlow {} {source = ExclusiveGateway_04stbki
target = SubProcess_0ikactq
}

one sig SequenceFlow_13u1qxz extends NormalSequentialFlow {} {source = ExclusiveGateway_06yyw6a
target = EndEvent_1bmsqno
}

one sig SequenceFlow_1wro3pq extends NormalSequentialFlow {} {source = SubProcess_0ikactq
target = ExclusiveGateway_06yyw6a
}

one sig SequenceFlow_0fh3j7y extends NormalSequentialFlow {} {source = BoundaryEvent_1g6jly9
target = ExclusiveGateway_06yyw6a
}

one sig SequenceFlow_1ofsg25 extends NormalSequentialFlow {} {source = StartEvent_1em4yhi
target = Task_1kf2bvv
}

one sig SequenceFlow_0j6nnaa extends NormalSequentialFlow {} {source = Task_1kf2bvv
target = EndEvent_07lweo2
}

one sig SequenceFlow_0r3bens extends NormalSequentialFlow {} {source = StartEvent_0pevvbh
target = Task_0dvwezg
}

one sig SequenceFlow_1gn3q83 extends NormalSequentialFlow {} {source = Task_0dvwezg
target = EndEvent_03g8tis
}


