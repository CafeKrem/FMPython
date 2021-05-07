private-running
hasMatch: aValue withContext: aContext
	"return boolean , true if I can match with my argument aValue else false."
	^ self subclassResponsibility.
	"^ self
		templateMatch: (self firstElementOf: aCollection)
		withContext: aContext"