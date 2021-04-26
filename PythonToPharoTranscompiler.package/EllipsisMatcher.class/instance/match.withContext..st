as yet unclassified
match: aCollection withContext: aContext
	| value isNextMatch |
	matchedNodes := OrderedCollection new.
	"value := self firstElementOf: aCollection."
	next
		ifNil: [ self save: aCollection inContext: aContext.
			isNextMatch := true ]
		ifNotNil: [ [ aCollection isEmpty
				or: [ isNextMatch := next match: aCollection withContext: aContext ] ]
				whileFalse: [ value := self pop: aCollection.
					matchedNodes add: value ].
			self save: matchedNodes inContext: aContext ].
	^ isNextMatch