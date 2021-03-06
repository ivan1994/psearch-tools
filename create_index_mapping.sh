curl -XPUT 'localhost:9098/testindex' -H 'Content-Type:application/json' -d '{  
   "settings":{  
      "index":{  
         "number_of_shards":1
      }
   },
   "mappings":{  
      "default":{  
         "properties":{  
            "annotation":{  
               "type":"text",
               "fields":{  
                  "keyword":{  
                     "type":"keyword",
                     "ignore_above":256
                  }
               }
            },
            "stream":{  
               "type":"text",
               "fields":{  
                  "keyword":{  
                     "type":"keyword",
                     "ignore_above":256
                  }
               }
            },
            "speed":{  
               "type":"float"
            },
            "throttlePosition":{  
               "type":"float"
            },
            "steeringAngle":{  
               "type":"float"
            },
            "location":{  
               "type":"geo_point"
            },
            "carId":{  
               "type":"text",
               "fields":{  
                  "keyword":{  
                     "type":"keyword",
                     "ignore_above":256
                  }
               }
            },
            "emitTimestamp":{  
               "type":"date",
               "index":false
            },
            "payload":{  
               "type":"text",
               "index":false,
               "fields":{  
                  "keyword":{  
                     "type":"keyword",
                     "ignore_above":256
                  }
               }
            },
            "timestamp":{  
               "type":"date"
            }
         }
      }
   }
}'