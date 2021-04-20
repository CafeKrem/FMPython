as yet unclassified
pattern: pattern match: aValue withContext: aContext
	| isMatch |
	isMatch := false.
	^ (pattern match: aValue withContext: aContext)
		ifTrue: [ true ]
		ifFalse: [ aValue children
				ifEmpty: [ false ]
				ifNotEmpty: [ :coll | 
					coll
						do:
							[ :child | isMatch := self pattern: pattern match: child withContext: aContext ].
					isMatch ] ]