visit
visitElif: aPyElifNode
	^ FastPythonIf new
		body: (aPyElifNode statements collect: [ :each | each acceptVisitor: self ]);
		cond: (aPyElifNode elif acceptVisitor: self);
		yourself