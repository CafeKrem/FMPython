visit
visitReturn: aPyReturnNode

	self haltIf: [ aPyReturnNode tests size ~= 1 ].
	^ FASTReturnStatement new expression: 
		  (aPyReturnNode tests first acceptVisitor: self)