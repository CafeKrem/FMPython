*PythonToPharoTranscompiler
suchAs: anObject
	^ PTPMatcherModelReference
		withClass: self
		withConfiguration:
			((anObject isCollection and: [ anObject isString not ])
				ifTrue: [ PTPMatcherSubPattern new
						subPatterns: (anObject collect: [ :each | each asMatcher ]) asSubPatternWrapper;
						yourself ]
				ifFalse: [ PTPMatcherSubPattern new
						subPatterns: {anObject asMatcher asSubPatternWrapper};
						yourself ])