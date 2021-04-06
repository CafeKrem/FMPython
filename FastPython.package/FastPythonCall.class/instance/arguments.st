accessing
arguments
	"Relation named: #arguments type: #FASTExpression opposite: #call"

	<generated>
	<derived>
	<FMProperty: #arguments type: #FASTExpression opposite: #call>
	^ self attributeAt: #arguments ifAbsentPut: [ FMMultivalueLink on: self opposite: #call: ]