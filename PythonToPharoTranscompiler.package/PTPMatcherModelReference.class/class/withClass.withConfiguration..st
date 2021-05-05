instanciation
withClass: aClass withConfiguration: aCollection
	^ self new
		modelDescription: aClass;
		configuration: aCollection;
		yourself