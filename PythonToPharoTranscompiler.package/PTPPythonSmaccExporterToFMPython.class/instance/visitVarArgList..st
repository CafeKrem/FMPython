visit
visitVarArgList: aPyVarArgListNode
	^ (aPyVarArgListNode args
		collect: [ :each | each acceptVisitor: self ]) asOrderedCollection