private-running
nextNotNilPreviousNil: aValue context: aContext
	self save: (self pop: aValue) inContext: aContext.
	^ next match: aValue withContext: aContext