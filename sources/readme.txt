 ############## README   ##############

 We have provided two different jar files for the SPAseq, one is for the single stream processing (spaseqsingle.jar), and the other is the 
 multiple heterogenous stream processing (spaseqmulti.jar).

############## ############## ############## ############## 
 Single Stream Execution over the test data and queries:
############## ############## ############## ############## 
 The query folder contains the test queries, different folder for each use case. The stream folder contains the streams in .nt format. The smd.nt contains the streams for the stock market.

 To process the stock market streams and queries use the following command.

 java -jar spaseqsingle.jar -q ./queries/SMD-queries/stockq1.q -f ./streams/smd.nt -es 2

 where -q describe the query utilised for SCEP, -f describes the file used for the streams, -es describe the number of triples used within an event. Furthremore, -kb optional option can be used to add an external knowledge-base file. 

 The queryresult.txt file in the result folder contains the matched results.



############## ############## ############## ############## 
Multi Stream Execution over the test data and queries:
############## ############## ############## ############## 
The query folder contains the test queries for the SHD usecase. The stream folder contains the set of streams in .nt format and a stream file which describes the IRIs of each stream and their filepaths: this file is used to send the streams to the spaseq engine. Furthremore, an external knowldge-base static file can be used to enrich each event (such file is not the part of the experiments).

To process the smart home streams and queries use the following command.

java -jar spaseqmulti.jar -q ./queries/SHD-queries/powerq1.q -s ./streams/streams-SHD.txt -st false 


where -q describes the query file utilised, -s describes the .stream file used, which contains the path to the stream files, for the query processing. The .stream file also contains the parameter of the event size used for each stream. -st option describes if the streams are produced in random or sequential fashion, where for random generation : true, for sequential generation use: false. The default setting is configured for "false". The external knowledge-base file can be used to enrich such events with the optional option -kb.

Similarly, the queryresult.txt in result folder contains the final matched results.  