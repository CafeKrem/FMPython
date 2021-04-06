*FastPython-accessing
return: anObject

	<generated>
	(self attributeAt: #return ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self return.
		self attributeAt: #return put: anObject.
		otherSide returnValue: nil ]
	ifNotNil: [ 
		self attributeAt: #return put: anObject.
		anObject returnValue: self ]