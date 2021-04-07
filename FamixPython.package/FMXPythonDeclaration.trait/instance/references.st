accessing
references
	"Relation named: #references type: #FASTVariableExpression opposite: #definition"

	<generated>
	<derived>
	<FMProperty: #references type: #FASTVariableExpression opposite: #definition>
	^ self attributeAt: #references ifAbsentPut: [ FMMultivalueLink on: self opposite: #definition: ]