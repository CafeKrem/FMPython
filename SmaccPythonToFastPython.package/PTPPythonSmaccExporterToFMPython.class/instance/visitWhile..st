visit
visitWhile: aPyWhileNode
	^ FastPythonWhile new
		cond: (aPyWhileNode test acceptVisitor: self);
		body: (aPyWhileNode statements collect: [ :each | each acceptVisitor: self ]);
		yourself