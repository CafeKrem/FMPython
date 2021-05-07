util
firstElementOf: aCollection

	aCollection isString ifTrue: [ ^ aCollection ].
	aCollection isCollection ifTrue: [ ^ aCollection first ].
	^ aCollection