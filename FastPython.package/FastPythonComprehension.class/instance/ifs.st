accessing
ifs
	"Relation named: #ifs type: #FASTTExpression opposite: #parentIfs"

	<generated>
	<derived>
	<FMProperty: #ifs type: #FASTTExpression opposite: #parentIfs>
	^ self attributeAt: #ifs ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentIfs: ]