*PythonToPharoTranscompiler
with: anObject
	^ PTPMatcherModelReference
		withClass: self
		withConfiguration:
			((anObject isCollection and: [ anObject isString not ])
				ifTrue: [ PTPMatcherSubPattern new
						subPatterns: (anObject collect: [ :each | each asMatcher ]);
						yourself ]
				ifFalse: [ PTPMatcherSubPattern new
						subPatterns: {anObject asMatcher};
						yourself ])