*FastPython-accessing
declaration: anObject

	<generated>
	(self attributeAt: #declaration ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self declaration.
		self attributeAt: #declaration put: anObject.
		otherSide sClass: nil ]
	ifNotNil: [ 
		self attributeAt: #declaration put: anObject.
		anObject sClass: self ]