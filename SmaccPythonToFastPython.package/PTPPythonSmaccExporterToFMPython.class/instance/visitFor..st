visit
visitFor: aPyForNode
	| for |
	for := FastPythonFor new
		body: (aPyForNode statements collect: [ :each | each acceptVisitor: self ]);
		iterable: (aPyForNode tests first acceptVisitor: self);
		iterationVar: (aPyForNode exprs first acceptVisitor: self);
		scope: FMXPythonScope new yourself.
	for scope
		addDeclaration:
			(FastPythonVarDeclaration new
				addReference: for iterationVar;
				name: for iterationVar name;
				yourself).
	^ for