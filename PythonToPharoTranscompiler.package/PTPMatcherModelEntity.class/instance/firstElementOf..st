util
firstElementOf: aCollection

	(aCollection isKindOf: String) ifTrue: [ ^ aCollection ].
	aCollection isCollection ifTrue: [ ^ aCollection first ].
	^ aCollection