function tick_locs=tlocs(dnums,type)
% given an array of datenumbers.
% generate tick locations for a time series plot based.
% Gopal Mulukutla

% type =1 : monthly
% type =2 : annual
% type =3 : weekly

if (type==1)
        st=dnums(1);
        ed=dnums(end);

        [Y1,M1,~,~,~,~] = datevec(st);
        [Y2,M2,~,~,~,~] = datevec(ed);
    
    D=[];
    for i=Y1:Y2
        if(i==Y1)
            M=M1:12;
        elseif(i==Y2)
            M=1:(M2+1);
        else
            M=1:12;
        end
         d=(datenum(i,M,1))';
        D=[D;d];
      end
        
        

      
     
end  
% if (type==3)
%         st=dnums(1);
%         ed=dnums(end);
% 
%         [Y1,M1,~,~,~,~] = datevec(st);
%         [Y2,M2,~,~,~,~] = datevec(ed);
%     
%     D=[];
%     for i=Y1:Y2
%         if(i==Y1)
%             M=M1:12;
%         elseif(i==Y2)
%             M=1:(M2+1);
%         else
%             M=1:12;
%         end
%          d=(datenum(i,M,1))';
%         D=[D;d];
%       end
 
% end  

if (type==4)% Daily
        st=dnums(1);
        ed=dnums(end);

        [Y1,M1,D1,~,~,~] = datevec(st);
        [Y2,M2,D2,~,~,~] = datevec(ed);
    
    D=[];
    for i=Y1:Y2
        if(i==Y1)
            M=M1:12;
        elseif(i==Y2)
            M=1:(M2+1);
        else
            M=1:12;
        end
         d=(datenum(i,M,1))';
        D=[D;d];
      end
 
 end  



tick_locs=D;
    end
    




