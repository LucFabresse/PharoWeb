Class {
	#name : #BaselineOfPharoWeb,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoWeb
}

{ #category : #baselines }
BaselineOfPharoWeb >> baseline: spec [
	<baseline>
	
	spec for: #common do: [	
		spec
			baseline: 'Seaside3' with: [ 
				spec
					loads: #('Development' 'Examples' 'JQuery' 'Zinc');
					repository: 'github://SeasideSt/Seaside:v3.4.x/repository' ];
		
			baseline: 'Magritte' with: [ 
				spec
					loads: #('Seaside');
					repository: 'github://magritte-metamodel/magritte:v3.5.4/source' ];
		
			baseline: 'Bootstrap4' with: [ 
				spec 
					loads: #('Core' 'Examples');
					repository: 'github://astares/Seaside-Bootstrap4:master/src' ];
		
			project: 'BootstrapMagritte' with: [
				spec
					className: #ConfigurationOfBootstrapMagritte;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/TorstenBergmann/BootstrapMagritte/main/' ];
		
			baseline: 'Teapot' with: [ 
				spec
					loads: #('Tools');
					repository: 'github://zeroflag/Teapot:master/source' ];
			
			baseline: 'XMLParser' with: [ spec repository: 'github://svenvc/XML-Support-Pharo:master' ];	
			baseline: 'Ston' with: [ spec repository: 'github://svenvc/ston:master/repository' ];
			baseline: 'NeoJSON' with: [ spec repository: 'github://svenvc/NeoJSON:master/repository' ];
			baseline: 'ZincHTTPComponents' with: [ 
				spec 
					loads: #('Core' 'Zodiac' 'WebSocket' 'REST');
					repository: 'github://svenvc/zinc:master/repository' ];
								
			baseline: 'Mustache' with: [ 
				spec 
					loads: #('Core');
					repository: 'github://noha/mustache:master/repository' ];
			
			baseline: 'Voyage' with: [ 
				spec 
					loads: #('mongo');
					repository: 'github://pharo-nosql/voyage:master/mc' ]
	]
		
	
]

{ #category : #baselines }
BaselineOfPharoWeb >> baselineOLD: spec [
	<baseline>

"	not load compared to old PharoWeb : XMLWriter
	group: 'default' with: #('Seaside3' 'Bootstrap' 'Magritte3' 'BootstrapMagritte' 'Teapot' 'XMLParser' 'XMLWriter' 'Mustache' 'NeoJSON' 'Ston' 'ZincHTTPComponents' 'Voyage' 'Garage')	
"

	spec for: #common do: [
		
		spec
			baseline: 'Seaside3' with: [ 
				spec
					loads: #('Core' 'JQuery' 'Zinc');
					repository: 'github://SeasideSt/Seaside:v3.4.x/repository' ];
		
			baseline: 'Magritte' with: [ 
				spec
					loads: #('Seaside');
					repository: 'github://magritte-metamodel/magritte:v3.5.4/source' ];
		
			baseline: 'Bootstrap4' with: [ 
				spec 
					loads: #('Core' 'Examples');
					repository: 'github://astares/Seaside-Bootstrap4:master/src' ];
		
			project: 'BootstrapMagritte' with: [
				spec
					className: #ConfigurationOfBootstrapMagritte;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/TorstenBergmann/BootstrapMagritte/main/' ];
		
			baseline: 'Teapot' with: [ 
				spec
					loads: #('Tools');
					repository: 'github://zeroflag/Teapot:master/source' ];
			
			baseline: 'XMLParser' with: [ spec repository: 'github://svenvc/XML-Support-Pharo:master' ];	
			baseline: 'Ston' with: [ spec repository: 'github://svenvc/ston:master/repository' ];
			baseline: 'NeoJSON' with: [ spec repository: 'github://svenvc/NeoJSON:master/repository' ];
			baseline: 'ZincHTTPComponents' with: [ 
				spec 
					loads: #('Core' 'Zodiac' 'WebSocket' 'REST');
					repository: 'github://svenvc/zinc:master/repository' ];
								
			baseline: 'Mustache' with: [ 
				spec 
					loads: #('Core');
					repository: 'github://noha/mustache:master/repository' ];
			
			baseline: 'Voyage' with: [ 
				spec 
					loads: #('mongo');
					repository: 'github://pharo-nosql/voyage:master/mc' ];

			baseline: 'Garage' with: [ spec repository: 'github://pharo-rdbms/garage:master' ]
					
		"spec
			baseline: 'Parasol'
			with: [ spec
				loads: 'tests';
				repository: 'github://daniapq/Parasol:master/repository' ]."

		"spec
			baseline: 'MaterialDesignLite'
			with: [ spec repository: 'github://daniapq/MaterialDesignLite:master/src' ]."
	
	]
		
	
]
