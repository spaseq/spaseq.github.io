                      
                       
                        prefix c: <http://example/company#> 
                        
                        prefix pred: <http://example/>
                        
                       

                        SELECT ?company ?p1 ?p2 ?p3 ?p4 ?p5 ?p6 ?vol1 ?vol2 ?vol3 ?vol4 ?vol5 ?vol6
                         WITHIN 10 SECONDS 
                      partition by (?company)  
                 FROM STREAM S1 <http://example.org/main> 
               
                        WHERE 
                         SEQ (A, B, C, D, E, F)
                           {
              DEFINE GPM A ON S1
          
                 { 
                        ?company pred:price ?p1.
                          ?company pred:volume ?vol1. 
                          
                         } 
                      
                             
                                DEFINE GPM B ON S1
          
                  {
                       
                          ?company pred:price ?p2.
                          ?company pred:volume ?vol2. 
                          
                             Filter (?p2 < ?p1 )
                            
                             }
               


                                DEFINE GPM C ON S1
          
                  {
                       
                          ?company pred:price ?p3.
                          ?company pred:volume ?vol3. 
                          
                            Filter (?p3 > ?p2 && ?p3 > ?p1).  
                             }




                                DEFINE GPM D ON S1
          
                  {
                       
                          ?company pred:price ?p4.
                          ?company pred:volume ?vol4. 
                          
                            Filter (?p4 < ?p3).  
                             }


                                DEFINE GPM E ON S1
          
                  {
                       
                          ?company pred:price ?p5.
                          ?company pred:volume ?vol5. 
                          
                            Filter (?p5 < ?p4).  
                             }


                                DEFINE GPM F ON S1
          
                  {
                       
                          ?company pred:price ?p6.
                          ?company pred:volume ?vol6. 
                          
                            Filter (?p6 > ?p5 && ?p6 > ?p4).  
                             }


               



              
                     
              }