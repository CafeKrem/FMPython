*FastPython-accessing
subscript: anObject

	<generated>
	(self attributeAt: #subscript ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self subscript.
		self attributeAt: #subscript put: anObject.
		otherSide value: nil ]
	ifNotNil: [ 
		self attributeAt: #subscript put: anObject.
		anObject value: self ]