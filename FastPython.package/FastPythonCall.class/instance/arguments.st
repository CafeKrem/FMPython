accessing
arguments
	"Relation named: #arguments type: #FASTTExpression opposite: #call"

	<generated>
	<derived>
	<FMProperty: #arguments type: #FASTTExpression opposite: #call>
	^ self attributeAt: #arguments ifAbsentPut: [ FMMultivalueLink on: self opposite: #call: ]