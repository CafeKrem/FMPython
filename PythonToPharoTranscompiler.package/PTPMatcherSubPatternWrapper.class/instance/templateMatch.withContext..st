private-running
templateMatch: aValue withContext: aContext
	^ selector
		ifNil: [ (matcherModel match: aValue withContext: aContext)
				or: [ aValue children
						anySatisfy: [ :child | matcherModel match: child withContext: aContext ] ] ]
		ifNotNil: [ matcherModel
				match:
					([ (aValue class slotNamed: selector) read: aValue ]
						on: Error
						do: [ aValue perform: selector ])
				withContext: aContext ]