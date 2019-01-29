"
sourceModel := (PPXmlParser parse: 'D:\Developpement\xaml\GestionEtablissement_ActiviteUserControl.xaml' asFileReference contents).
silverlightModel := MooseModel new.
CSNSilverlightImporter new sourceModel: sourceModel; createModelIn: silverlightModel.
silverlightModel name: 'silverlight'.
silverlightModel.
"
Class {
	#name : #ManifestCSNSilverlight,
	#superclass : #PackageManifest,
	#category : #'Casino-Silverlight-Importer'
}
