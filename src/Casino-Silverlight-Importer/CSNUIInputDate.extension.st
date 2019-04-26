Extension { #name : #CSNUIInputDate }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIInputDate class >> silverCanHandle: anElement [
	^ 'bl:DatePickerCustomControl' = anElement name
]
