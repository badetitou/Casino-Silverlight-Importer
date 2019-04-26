Extension { #name : #CSNUISelect }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUISelect class >> silverCanHandle: anElement [
	^ #('bl:ComboBoxIntellisenseCustomControl' 'bl:SelectionBoxCustomControl') includes: anElement name
]
