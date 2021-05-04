private-running
match: aCollection withContext: aContext
	| value isNextMatch |
	matchedNodes := OrderedCollection new.
	next
		ifNil: [ self save: aCollection inContext: aContext.
			isNextMatch := true ]
		ifNotNil: [1haltOnce. [ aCollection isEmpty
				or: [ isNextMatch := next hasMatch: aCollection withContext: aContext ] ]
				whileFalse: [ value := self pop: aCollection.
					matchedNodes add: value ].
			self save: matchedNodes inContext: aContext ].
	^ isNextMatch