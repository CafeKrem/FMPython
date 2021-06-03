accessing
contents
	"Relation named: #contents type: #FASTTExpression opposite: #tuple"

	<generated>
	<derived>
	<FMProperty: #contents type: #FASTTExpression opposite: #tuple>
	^ self attributeAt: #contents ifAbsentPut: [ FMMultivalueLink on: self opposite: #tuple: ]