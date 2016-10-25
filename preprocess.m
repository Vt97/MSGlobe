 		
  tic		
  M = csvread('well.dat');		
  i=0;		
  mq=1;		
  [m,n]=size(M);		
  for c=1:m		
      		
      		
      top=M(mq,1);		
      bottom=M(mq,2);		
      left=M(mq,3);		
      right=M(mq,4);		
     mag=M(mq,5);		
     		
      		
  		
  Latitude = arrayList(top,bottom, .75);		
  Longitude = arrayList(left,right, .75);		
  Magnitude = mag*(1/1000);		
  testMat = 0;		
  		
  lat = meshgrid(Latitude, Longitude)';		
  long = meshgrid(Longitude, Latitude);		
  for i = 1:size(lat,1)		
     for j = 1:size(long, 2)		
         testMat(length(testMat)) = lat(i, j);		
         testMat(length(testMat)+1) = long(i, j);		
         testMat(length(testMat)+1) = Magnitude;		
         testMat(length(testMat)+1) = Magnitude;		
         %fprintf('%2.4f %2.4f %2.4f \n', [lat(i, j) long(i,j) Magnitude]);		
     end		
  end		
  testfile = fopen('LatLong1.txt', 'a+');		
  fprintf(testfile,'%2.2f,%2.2f,%2.2f,',testMat);		
  fclose(testfile);		
  		
      mq=mq+1;		
  end		
      toc 		