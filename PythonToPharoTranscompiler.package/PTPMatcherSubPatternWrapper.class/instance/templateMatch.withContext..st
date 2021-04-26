accessing
templateMatch: aValue withContext: aContext
	^ selector
		ifNil: [ (matcherModel match: aValue withContext: aContext)
				or: [ "ifTrue: [ true ]
				ifFalse: [ aValue children
						anySatisfy: [ :child | matcherModel match: child withContext: aContext ] ]"
					aValue children
						anySatisfy: [ :child | "
						ifFalse: [ aValue children
								anySatisfy: [ :child | self match: child withContext: aContext ] ]" matcherModel match: child withContext: aContext ] ] ]
		ifNotNil: [ matcherModel
				match:
					([ (aValue class slotNamed: selector) read: aValue ]
						on: Error
						do: [ aValue perform: selector ])
				withContext: aContext ]