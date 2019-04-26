Extension { #name : #CSNUIInputText }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIInputText class >> silverCanHandle: anElement [
	^ #('bl:TextBoxCustomControl'  'bl:SimpleWatermarkedTextBoxCustomControl')
		includes: anElement name
]
