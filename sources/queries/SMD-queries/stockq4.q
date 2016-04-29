                      
                       
                        prefix c: <http://example/company#> 
                        
                        prefix pred: <http://example/>
                        
                       

                        SELECT ?company ?p1 ?p2 ?p3 ?p4 ?p5 ?p6 ?p7 ?p8 ?p9 ?p10 ?p11 ?p12 ?vol1 ?vol2 ?vol3 ?vol4 ?vol5 ?vol6 ?vol7 ?vol8 ?vol9 ?vol10 ?vol11 ?vol12
                         WITHIN 10 SECONDS 
                      partition by (?company)  
                 FROM STREAM S1 <http://example.org/main> 
               
                        WHERE 
                         SEQ (A, B, C, D, E, F, G, H, I, J, K, L)
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


               
   
                                DEFINE GPM G ON S1
          
                  {
                       
                          ?company pred:price ?p7.
                          ?company pred:volume ?vol7. 
                          
                            Filter (?p7 < ?p6).  
                             }


                                DEFINE GPM H ON S1
          
                  {
                       
                          ?company pred:price ?p8.
                          ?company pred:volume ?vol8. 
                          
                            Filter (?p8 < ?p7).  
                             }


                                DEFINE GPM I ON S1
          
                  {
                       
                          ?company pred:price ?p9.
                          ?company pred:volume ?vol9. 
                          
                            Filter (?p9 > ?p8 && ?p9 > ?p7).  
                             }


                                DEFINE GPM J ON S1
          
                  {
                       
                          ?company pred:price ?p10.
                          ?company pred:volume ?vol10. 
                          
                            Filter (?p10 < ?p9).  
                             }


                                DEFINE GPM K ON S1
          
                  {
                       
                          ?company pred:price ?p11.
                          ?company pred:volume ?vol11. 
                          
                            Filter (?p11 < ?p10).  
                             }


                                DEFINE GPM L ON S1
          
                  {
                       
                          ?company pred:price ?p12.
                          ?company pred:volume ?vol12. 
                          
                            Filter (?p12 > ?p11 && ?p12 > ?p10).  
                             }


              
                     
              }