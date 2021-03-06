*E3_10_3.sas
*
* Using functions with arrays;
title '3.10.3 Using Functions with Arrays';

* DIM;
title2 'DIM';
data newchem(drop=i);
   set advrpt.lab_chemistry(drop=visit labdt);
   array chem {*} _numeric_;
   do i=1 to dim(chem); 
      chem{i} = chem{i}/100;
   end;
   run;
proc print data=newchem;
   run;

**********************************************************;
* LBOUND HBOUND;
* find all subjects that are within an inch of each other;
title2 'LBOUND and HBOUND';
data CloseHT;
array heights {200:276} _temporary_;
do until(done);
   set advrpt.demog(keep=subject ht) end=done;
   heights(subject)=ht;
end;
done=0;
do until(done);
   set advrpt.demog(keep=subject ht) end=done;
   do Hsubj = lbound(heights) to hbound(heights);
      closeHT = heights{hsubj};
      if (ht-1 le closeht le ht+1) & (subject ne hsubj) then output closeHT;
   end;
end;
stop;
run;
proc print data=closeht;
   run; 

**********************************************************************;
* WHICHN, CALL MISSING, VNAME;
title2 'Using WHICHN, VNAME, and CALL MISSING';
* Detect the duplicate visit dates;
data dupdates(keep=subject visit labdt dupvisit);
   array vdates {16} visit1-visit16;
   set advrpt.lab_chemistry;
   by subject;
   retain visit1-visit16 .;
   length dupvisit $7;
   if first.subject then call missing(of vdates{*});
   dup = whichn(labdt, of vdates{*});
   if dup then do;
      dupvisit = vname(vdates{dup});
      if dup ne visit then output dupdates;
   end;
   vdates{visit}=labdt;
   run;
proc print data=dupdates;
   run;
