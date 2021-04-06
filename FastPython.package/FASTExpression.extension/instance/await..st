*FastPython-accessing
await: anObject

	<generated>
	(self attributeAt: #await ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self await.
		self attributeAt: #await put: anObject.
		otherSide expression: nil ]
	ifNotNil: [ 
		self attributeAt: #await put: anObject.
		anObject expression: self ]