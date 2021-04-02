instance creation
lookAtOperationSymbol: symbolName

	^ operationSymbolPool at: symbolName ifAbsent: [ 
		  FMXPythonOperationSymbol new
			  op: symbolName;
			  yourself ]