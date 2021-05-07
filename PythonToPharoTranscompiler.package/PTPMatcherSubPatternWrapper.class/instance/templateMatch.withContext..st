private-running
templateMatch: aValue withContext: aContext

	| attributeTmp |
	self flag: #warning.
	^ selector
		  ifNil: [ 
			  (matcherModel match: aValue withContext: aContext) or: [ 
				  aValue children anySatisfy: [ :child | 
					  matcherModel match: child withContext: aContext ] ] ]
		  ifNotNil: [ 
			  attributeTmp := [ 
			                  (aValue class slotNamed: selector) read: aValue ]
				                  on: Error
				                  do: [ aValue perform: selector ] copy.
			  attributeTmp := (attributeTmp isString or: [ 
				                   attributeTmp isCollection not ])
				                  ifTrue: [ attributeTmp ]
				                  ifFalse: [ 
				                  OrderedCollection newFrom: attributeTmp ].
			  matcherModel match: attributeTmp withContext: aContext ]