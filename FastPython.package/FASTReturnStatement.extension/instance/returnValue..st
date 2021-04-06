*FastPython-accessing
returnValue: anObject

	<generated>
	(self attributeAt: #returnValue ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self returnValue.
		self attributeAt: #returnValue put: anObject.
		otherSide return: nil ]
	ifNotNil: [ 
		self attributeAt: #returnValue put: anObject.
		anObject return: self ]