accessing
exceptionActions
	"Relation named: #exceptionActions type: #FASTStatement opposite: #exceptionHandler"

	<generated>
	<derived>
	<FMProperty: #exceptionActions type: #FASTStatement opposite: #exceptionHandler>
	^ self attributeAt: #exceptionActions ifAbsentPut: [ FMMultivalueLink on: self opposite: #exceptionHandler: ]