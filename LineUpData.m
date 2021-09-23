 function AllData = LineUpData(DateNums,SiteData,tol,opt)
%% Lineup data according to new time stamps
%  input 
%  DateNums : dates (in matlab datenumber form)to line up with
% SiteData -Data from site, with column 1 as its datenums and as many variables as you want, each a new column
% tol (units: days) - the time window -before and after the time stamp in Datenums to look for data to line up.
% example, tolerance=7.5 minutes=> tol= 7.5/(24*60) (days)
% opt=1  Obtain Mean values found in the window
% opt=2  Obtain a  Sum of values found for the time window.  This is useful when dealing with precipitation data.
% opt=3  Obtain Median values found for the time window.  This is useful when dealing with stage data.
% Gopal Mulukutla,developed for NR995 Fall 2014
% - updates february 2015 to include a flag, opt, to help with aggregating precip data.

%% Lineup data according to new time stamps
sz=size(SiteData);
sz=sz(2)-1;
  AllData=[];
  for i=1:length(DateNums)
     chk=DateNums(i);
     ind=find(SiteData(:,1)>= (chk-tol) & SiteData(:,1)<= (chk+tol));
    
      if(isempty(ind))
          for j=1:sz
         AllData(i,j)=NaN;%
          end
      else
          
        for k=1:sz
            if(opt==1)
       AllData(i,k)=nanmean(SiteData(ind,k+1)); 
            end
            if(opt==2)
             AllData(i,k)=nansum(SiteData(ind,k+1));    
            end
            if(opt==3)
             AllData(i,k)=nanmedian(SiteData(ind,k+1));    
            end
        end
       
      end
     clear ind       
     
     
  end
  
  
  end
