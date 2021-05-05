*FastPython-accessing
formattedValue: anObject

	<generated>
	(self attributeAt: #formattedValue ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self formattedValue.
		self attributeAt: #formattedValue put: anObject.
		otherSide expression: nil ]
	ifNotNil: [ 
		self attributeAt: #formattedValue put: anObject.
		anObject expression: self ]