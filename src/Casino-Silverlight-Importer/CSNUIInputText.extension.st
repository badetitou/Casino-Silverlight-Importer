Extension { #name : #CSNUIInputText }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIInputText class >> silverCanHandle: anElement [
	^ #('bl:TextBoxCustomControl' 'TextBlock' 'bl:SimpleWatermarkedTextBoxCustomControl') includes: anElement name
]
