*FastPython-accessing
yield: anObject

	<generated>
	(self attributeAt: #yield ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self yield.
		self attributeAt: #yield put: anObject.
		otherSide expression: nil ]
	ifNotNil: [ 
		self attributeAt: #yield put: anObject.
		anObject expression: self ]