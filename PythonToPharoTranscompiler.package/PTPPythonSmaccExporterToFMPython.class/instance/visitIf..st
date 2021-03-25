visit
visitIf: aPyIfNode
	^ PythonIf new
		body: (aPyIfNode statements collect: [ :each | each acceptVisitor: self ]);
		else: (aPyIfNode else acceptVisitor: self);
		cond: (aPyIfNode if acceptVisitor: self);
		elif: (aPyIfNode elsif acceptVisitor: self);
		yourself