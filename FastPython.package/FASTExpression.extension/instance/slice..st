*FastPython-accessing
slice: anObject

	<generated>
	(self attributeAt: #slice ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self slice.
		self attributeAt: #slice put: anObject.
		otherSide lower: nil ]
	ifNotNil: [ 
		self attributeAt: #slice put: anObject.
		anObject lower: self ]