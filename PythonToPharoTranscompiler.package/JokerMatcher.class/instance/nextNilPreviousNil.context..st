private-running
nextNilPreviousNil: aValue context: aContext
	self save: (self firstElementOf: aValue) inContext: aContext.
	^ true