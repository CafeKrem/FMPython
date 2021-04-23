as yet unclassified
match: aCollection withContext: aContext
	| value |
	matchedNodes := OrderedCollection new.
	"value := self firstElementOf: aCollection."
	next
		ifNil: [ self save: aCollection inContext: aContext ]
		ifNotNil: [ [ next match: aCollection withContext: aContext ]
				whileFalse: [ value := self pop: aCollection.
					matchedNodes add: value ].
			self save: matchedNodes inContext: aContext ].
	^ true