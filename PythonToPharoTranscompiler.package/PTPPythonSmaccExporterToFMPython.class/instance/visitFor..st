visit
visitFor: aPyForNode
	| for |
	for := PythonFor new
		body: (aPyForNode statements collect: [ :each | each acceptVisitor: self ]);
		iterable: (aPyForNode tests first acceptVisitor: self);
		iterationVar: (aPyForNode exprs first acceptVisitor: self);
		scope: PythonScope new yourself.
	for scope
		addDeclaration:
			(PythonVarDeclaration new
				addReference: for iterationVar;
				name: for iterationVar name;
				yourself).
	^ for