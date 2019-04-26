Extension { #name : #CSNUIInputRadio }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIInputRadio class >> silverCanHandle: anElement [
	^ 'bl:RadioButtonItemCustomControl' = anElement name
]
