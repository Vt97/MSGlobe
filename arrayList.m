function [ X ] = arrayList(StartingNumber, EndingNumber, Increment )		
 		
  if (StartingNumber>EndingNumber)		
      X = EndingNumber:Increment:StartingNumber;		
      return;		
  end		
  X = StartingNumber:Increment:EndingNumber;		
  		
  end		
  