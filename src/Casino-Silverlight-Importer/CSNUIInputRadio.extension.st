Extension { #name : #CSNUIInputRadio }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIInputRadio class >> silverCanHandle: anElement [
	^ anElement name endsWith: 'RadioButtonItemCustomControl'
]
