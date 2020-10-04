//programme for cerner_2^5_2020
program TrueSingleton;
 {$mode objfpc}{$H+}
 uses
   {$IFDEF UNIX}{$IFDEF UseCThreads}
   cthreads,
   {$ENDIF}{$ENDIF}
   Classes, Singleton2
   { you can add units after this };
 
 {$R TrueSingleton.res}
 var
   s1, s2: TSingleton;
 
 begin
   s1:= TSingleton.GetInstance;
   s1.name := 'one';
   writeln('name of s1: '+s1.name);
 
   s2:= TSingleton.GetInstance;
   s2.name := 'two';
 // cerner_2^5_2020
   writeln('name of s1: '+s1.name);
   writeln('name of s2: '+s2.name);
   //writeln('name of singleton: ' + Singleton.name);
   readln;
 end.