*FastPython-accessing
parentTarget: anObject

	<generated>
	(self attributeAt: #parentTarget ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self parentTarget.
		self attributeAt: #parentTarget put: anObject.
		otherSide target: nil ]
	ifNotNil: [ 
		self attributeAt: #parentTarget put: anObject.
		anObject target: self ]