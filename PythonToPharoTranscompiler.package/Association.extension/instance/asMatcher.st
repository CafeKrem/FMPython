*PythonToPharoTranscompiler
asMatcher
	^ PTPMatcherSubPatternWrapper new
		selector: self key;
		matcherModel: self value asMatcher;
		yourself

