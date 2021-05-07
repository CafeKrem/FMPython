*PythonToPharoTranscompiler
asMatcher

	| wrapper |
	wrapper := PTPMatcherSubPatternWrapper new
		           selector: self key;
		           matcherModel: self value asMatcher;
		           yourself.

	self value = '@' ifTrue: [ wrapper matcherModel named: self key ].
	^ wrapper