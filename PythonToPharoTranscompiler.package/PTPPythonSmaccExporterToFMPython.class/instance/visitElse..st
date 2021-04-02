visit
visitElse: aPyElseNode 
	^ aPyElseNode statements collect: [:each | each acceptVisitor: self ] 