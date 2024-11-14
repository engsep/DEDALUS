curl -G -iX GET \
'http://localhost:1026/ngsi-ld/v1/entities/urn:ngsi-ld:TemperatureSensor:001' \
-H 'X-Auth-token: 1234' \
-H 'Link: <http://context/data-models/ngsi-context.jsonld>; rel="http://www.w3.org/ns/json-ld#context"; type="application/ld+json"' \
-d 'options=sysAttrs'
