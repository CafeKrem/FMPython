visit
visitAtom: aPyAtomNode
	| plist |
	plist := FastPythonList new.
	self flag: 'modifier la gramaire de smacc'.
	aPyAtomNode list first
		do: [ :each | plist addContent: (each acceptVisitor: self) ].
	^ plist