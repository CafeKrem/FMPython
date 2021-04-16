accessing
match: aValue withContext: aContext
	^ selector
		ifNil: [ (matcherModel match: aValue withContext: aContext)
				or: [ "ifTrue: [ true ]
				ifFalse: [ aValue children
						anySatisfy: [ :child | matcherModel match: child withContext: aContext ] ]"
					(aValue children
						anySatisfy: [ :child | matcherModel match: child withContext: aContext ])
						ifTrue: [ true ]
						ifFalse: [ aValue children
								anySatisfy: [ :child | self match: child withContext: aContext ] ] ] ]
		ifNotNil:
			[ matcherModel match: (aValue perform: selector) withContext: aContext ]