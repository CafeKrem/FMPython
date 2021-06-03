accessing
exceptionActions
	"Relation named: #exceptionActions type: #FASTTStatement opposite: #exceptionHandler"

	<generated>
	<derived>
	<FMProperty: #exceptionActions type: #FASTTStatement opposite: #exceptionHandler>
	^ self attributeAt: #exceptionActions ifAbsentPut: [ FMMultivalueLink on: self opposite: #exceptionHandler: ]