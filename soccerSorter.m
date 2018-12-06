function [] = soccerSorter(numOfSubjects,conditionNum,outputFileName)
%soccerDataOrganizer separates and organizes soccer kicking data by
%condition.
%   This custom function systematically loads the .mat files of each
%   subject and condition. The user inputs the number of subjects and
%   condition number, and specifies the name and file type to be
%   saved.
    
    % executes the following code for each subject
for i = 1:numOfSubjects
    % loads each subject file and condition
    fileToLoad = strcat('sub', num2str(i), 'c', num2str(conditionNum),'.mat');
    load(fileToLoad)
    % clears unwanted variables when files are loaded
    clear ANALOG_VIDEO_FRAME_RATIO
    clear FILE_NAME
    clear FRAME_RATE
    % sets subject ID
    subjectID = [i,i,i]';
    % converts the variables from global cells to numeric values
    ankleFlexL = cell2mat(ankleFlexL);
    ankleFlexR = cell2mat(ankleFlexR);
    ankleVelL = cell2mat(ankleVelL);
    ankleVelR = cell2mat(ankleVelR);
    footVelL = cell2mat(footVelL);
    footVelR = cell2mat(footVelR);
    hipExtL = cell2mat(hipExtL);
    hipExtR = cell2mat(hipExtR);
    horizontalKL = cell2mat(horizontalKL);
    horizontalPL = cell2mat(horizontalPL);
    kneeFlexL = cell2mat(kneeFlexL);
    kneeFlexR = cell2mat(kneeFlexR);
    kneeVelL = cell2mat(kneeVelL);
    kneeVelR = cell2mat(kneeVelR);
    verticalKL = cell2mat(verticalKL);
    verticalPL = cell2mat(verticalPL);
    
    % creates a table of the variables and their corresponding values
    T = table(subjectID,ankleFlexL,ankleFlexR,ankleVelL,ankleVelR,footVelL,footVelR,hipExtL,hipExtR,horizontalKL,horizontalPL,kneeFlexL,kneeFlexR,kneeVelL,kneeVelR,verticalKL,verticalPL)
    
    % sets the filename 
    filename = outputFileName;
    if(i == 1) % for the first subject 
        rowNumber = 2; % start row is 2
        writetable(T,filename,'Sheet',1,'Range','A1') % exports the table to a spreadsheet starting at row 2
    else
        rowNumber = rowNumber + 3; % sets the row number
    end
    
    spreadsheetRow = strcat('A', num2str(rowNumber)); % for every additional subject, their data is added under the previous subject's data starting at the updated row number
    writetable(T,filename,'Sheet',1,'Range',spreadsheetRow, 'WriteVariableNames', false) % exports the updated table to a spreadsheet
    
end

end

