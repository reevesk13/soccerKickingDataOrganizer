function [subjectID,ankleFlexL,ankleFlexR,ankleVelL,ankleVelR,footVelL,footVelR,hipExtL,hipExtR,horizontalKL,horizontalPL,kneeFlexL,kneeFlexR,kneeVelL,kneeVelR,verticalKL,verticalPL] = importMaxFile(workbookFile,sheetName,startRow,endRow)
%IMPORTFILE Import data from a spreadsheet
%   [subjectID,ankleFlexL,ankleFlexR,ankleVelL,ankleVelR,footVelL,footVelR,hipExtL,hipExtR,horizontalKL,horizontalPL,kneeFlexL,kneeFlexR,kneeVelL,kneeVelR,verticalKL,verticalPL]
%   = IMPORTFILE(FILE) reads data from the first worksheet in the Microsoft
%   Excel spreadsheet file named FILE and returns the data as column
%   vectors.
%
%   [subjectID,ankleFlexL,ankleFlexR,ankleVelL,ankleVelR,footVelL,footVelR,hipExtL,hipExtR,horizontalKL,horizontalPL,kneeFlexL,kneeFlexR,kneeVelL,kneeVelR,verticalKL,verticalPL]
%   = IMPORTFILE(FILE,SHEET) reads from the specified worksheet.
%
%   [subjectID,ankleFlexL,ankleFlexR,ankleVelL,ankleVelR,footVelL,footVelR,hipExtL,hipExtR,horizontalKL,horizontalPL,kneeFlexL,kneeFlexR,kneeVelL,kneeVelR,verticalKL,verticalPL]
%   = IMPORTFILE(FILE,SHEET,STARTROW,ENDROW) reads from the specified
%   worksheet for the specified row interval(s). Specify STARTROW and
%   ENDROW as a pair of scalars or vectors of matching size for
%   dis-contiguous row intervals. To read to the end of the file specify an
%   ENDROW of inf.%
% Example:
%   [subjectID,ankleFlexL,ankleFlexR,ankleVelL,ankleVelR,footVelL,footVelR,hipExtL,hipExtR,horizontalKL,horizontalPL,kneeFlexL,kneeFlexR,kneeVelL,kneeVelR,verticalKL,verticalPL] = importfile('soccer_max_data.xlsx','Sheet1',2,19);
%
%   See also XLSREAD.

% Auto-generated by MATLAB on 2018/11/26 17:43:33

%% Input handling

% If no sheet is specified, read first sheet
if nargin == 1 || isempty(sheetName)
    sheetName = 1;
end

% If row start and end points are not specified, define defaults
if nargin <= 3
    startRow = 2;
    endRow = 19;
end

%% Import the data
data = xlsread(workbookFile, sheetName, sprintf('A%d:Q%d',startRow(1),endRow(1)));
for block=2:length(startRow)
    tmpDataBlock = xlsread(workbookFile, sheetName, sprintf('A%d:Q%d',startRow(block),endRow(block)));
    data = [data;tmpDataBlock]; %#ok<AGROW>
end

%% Allocate imported array to column variable names
subjectID = data(:,1);
ankleFlexL = data(:,2);
ankleFlexR = data(:,3);
ankleVelL = data(:,4);
ankleVelR = data(:,5);
footVelL = data(:,6);
footVelR = data(:,7);
hipExtL = data(:,8);
hipExtR = data(:,9);
horizontalKL = data(:,10);
horizontalPL = data(:,11);
kneeFlexL = data(:,12);
kneeFlexR = data(:,13);
kneeVelL = data(:,14);
kneeVelR = data(:,15);
verticalKL = data(:,16);
verticalPL = data(:,17);

