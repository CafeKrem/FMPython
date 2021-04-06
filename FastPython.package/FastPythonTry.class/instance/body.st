accessing
body
	"Relation named: #body type: #FASTStatement opposite: #try"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTStatement opposite: #try>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #try: ]