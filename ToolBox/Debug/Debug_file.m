%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           SPECTRUM: A MATLAB Toolbox for Top-down Proteomics     %
%                           Version 2.0.0.0                        %
%        Copyright (c) Biomedical Informatics Research Laboratory, %
%          Lahore University of Management Sciences Lahore (LUMS), %
%                           Pakistan.                              %
%                (http://biolabs.lums.edu.pk/BIRL)                 %
%                    (safee.ullah@gmail.com)                       %
%                 Last Modified on: 15-April-2021                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Debug_file (projectname,excep)
f1=fopen(strcat(projectname,'.log'),'a');
display(excep.message)
fprintf(f1,'%s \n','<<<<<<<<<<<<<<<<<<<<<error report>>>>>>>>>>>>>>>>>>');
fprintf(f1,'%s \n',datestr(datetime('now')));
fprintf(f1,'%s\n',excep.message);
fclose(f1);
end