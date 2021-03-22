visit
visitAtom: aPyAtomNode
	| plist |
	plist := PythonList new.
	aPyAtomNode list first
		do: [ :each | plist addContent: (each acceptVisitor: self) ].
	^ plist