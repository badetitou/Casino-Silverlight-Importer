Class {
	#name : #CSNSilverlightFactory,
	#superclass : #CSNWidgetFactory,
	#category : #'Casino-Silverlight-Importer'
}

{ #category : #'as yet unclassified' }
CSNSilverlightFactory >> createAttributeFromNode: anElement [
	^ self model
		silentlyAdd: (CSNAttribute new name: anElement name)
]

{ #category : #'as yet unclassified' }
CSNSilverlightFactory >> createAttributesFor: widget from: anElement [
	anElement
		attributeNodesDo: [ :attribute | 
			self model
				silentlyAdd:
					
							(CSNAttribute new
								name: attribute name;
								attributeValue: attribute value;
								widget: widget;
								yourself) ]
]

{ #category : #'as yet unclassified' }
CSNSilverlightFactory >> createPageFrom: aDocumentXML [
	^ self model silentlyAdd: (CSNPage new name: (aDocumentXML nodes anyOne attributeNodeAt: 'x:Class') value; yourself)
]

{ #category : #'as yet unclassified' }
CSNSilverlightFactory >> createWidgetFrom: anElement [
	^ self model
		silentlyAdd:
			(CSNWidget silverCreateWidgetFrom: anElement)
]
