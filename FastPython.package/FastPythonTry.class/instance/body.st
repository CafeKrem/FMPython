accessing
body
	"Relation named: #body type: #FASTTStatement opposite: #try"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTTStatement opposite: #try>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #try: ]