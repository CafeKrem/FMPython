*FastPython-accessing
assert: anObject

	<generated>
	(self attributeAt: #assert ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self assert.
		self attributeAt: #assert put: anObject.
		otherSide conditional: nil ]
	ifNotNil: [ 
		self attributeAt: #assert put: anObject.
		anObject conditional: self ]