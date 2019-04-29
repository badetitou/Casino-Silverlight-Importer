Extension { #name : #CSNUIInputText }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIInputText class >> silverCanHandle: anElement [
	^ #('TextBoxCustomControl' 'SimpleWatermarkedTextBoxCustomControl')
		anySatisfy: [ :each | anElement name endsWith: each ]
]
