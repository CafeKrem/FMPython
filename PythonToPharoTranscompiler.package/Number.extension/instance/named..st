*PythonToPharoTranscompiler
named: aString
	^ PTPMatcherSubPatternWrapper new
		selector: aString;
		matcherModel: self asMatcher;
		yourself