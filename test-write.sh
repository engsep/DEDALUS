curl -iX POST \
'http://localhost:1026/ngsi-ld/v1/entities/' \
-H 'X-Auth-token: 1234' \
-H 'Content-Type: application/json' \
-H 'Link: <http://context:3000/data-models/ngsi-context.jsonld>; rel="http://www.w3.org/ns/json-ld#context"; type="application/ld+json"' \
--data-raw '{
      "id": "urn:ngsi-ld:TemperatureSensor:001",
      "type": "TemperatureSensor",
      "category": {
            "type": "Property",
            "value": "sensor"
      },
      "temperature": {
            "type": "Property",
            "value": 25,
            "unitCode": "CEL"
      }
}'