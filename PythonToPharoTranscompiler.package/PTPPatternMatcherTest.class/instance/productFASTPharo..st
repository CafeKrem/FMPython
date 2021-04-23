tests
productFASTPharo: aCompiledMethod
	^ (FASTSmalltalkImporterVisitor new
		runWithSource: aCompiledMethod sourceCode) statements  asOrderedCollection 