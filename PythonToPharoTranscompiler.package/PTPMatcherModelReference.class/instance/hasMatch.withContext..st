as yet unclassified
hasMatch: aValue withContext: aContext

	"^ self
		templateMatch: (self firstElementOf: aCollection)
		withContext: aContext"

	| value |
	value := self firstElementOf: aValue.
	^ (value isKindOf: modelDescription)
		  ifTrue: [ configuration match: value withContext: aContext ]
		  ifFalse: [ false ]