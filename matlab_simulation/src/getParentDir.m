function newDir = getParentDir(dir,numUpDirs)
%   Function to get parent dir from either a file or a directory, going up
%   the number of directories indicated by numUpDirs. 
%
%   dir = string (filepath or pwd)
%   numUpDirs = positive integer
%   
%   Written by: Walter Adame Gonzalez, modified by Roland Jung
%   McGill University
%   walter.adamegonzalez@mail.mcgill.ca
%   ref: https://de.mathworks.com/matlabcentral/answers/175881-save-folder-one-above-current-directory#answer_1023245

parts = strsplit(dir, '/');
newDir = '';
if numUpDirs<length(parts)
    for i=1:(length(parts)-numUpDirs)
      if ~isempty(parts{i})
        newDir = [newDir, '/', parts{i}];
      end
    end
else
    disp('numUpDirs indicated is larger than the number of possible parent directories. Returning the unchanged dir')
    newDir = dir;
end
end