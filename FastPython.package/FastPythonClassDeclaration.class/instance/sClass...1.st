accessing
sClass: anObject

	<generated>
	(self attributeAt: #sClass ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self sClass.
		self attributeAt: #sClass put: anObject.
		otherSide declaration: nil ]
	ifNotNil: [ 
		self attributeAt: #sClass put: anObject.
		anObject declaration: self ]