% SOCCER KICKING DATA ORGANIZER
% By: Kelsey Reeves

% This script sorts and organizes soccer kicking data by condition and then
% calculates the means, standard deviations and p-values of each variable
% between conditions. Data are exported into three separate spreadsheets:
% 1) data from the maximal effort kicking condition, 2) data from the 
% accurate kicking condtion, and 3) data for analysis.

% The subject .mat files to use are located on the biomechanics X:drive in
% Research, Soccer, Kelsey_Caroline Kicking Landing, matlabProject.
% Do not run this code on more than the first 15 subjects. 

% Clears your workspace, closes all figures, and clears command window.
clear, close all;
   
% This is a custom function that is used to organize the maximal effort kicking condition
% trials for a certain number of subjects. Enter the number of subjects as
% the first input argument. The second input argument represents the
% condition number. In this case, condition 1 is the maximal effort
% condition. The user will name and specify the file type to be saved.
soccerSorter(15,1,'soccer_max_data.xlsx')

% This is a custom function that is used to organize the accurate kicking condition
% trials for a certain number of subjects. Enter the number of subjects as
% the first input argument. The second input argument represents the
% condition number. In this case, condition 2 is the accurate kicking
% condition. The user will name and specify the file type to be saved. 
soccerSorter(15,2,'soccer_accurate_data.xlsx')

% This is the import function to import the maximal effort kicking data.
% The output arguments are the variables to be analyzed and are
% imported as column vectors. The user will input the organized maximal
% effort kicking data file as the first argument, the sheet number as the
% second argument, and the start and end rows as the last arguments.
[subjectID,ankleFlexL,ankleFlexR,ankleVelL,ankleVelR,footVelL,footVelR,hipExtL,hipExtR,horizontalKL,horizontalPL,kneeFlexL,kneeFlexR,kneeVelL,kneeVelR,verticalKL,verticalPL] = importMaxFile('soccer_max_data.xlsx','Sheet1',2,19);

% This is the import function to import the accurate kicking data.
% The output arguments are the variables to be analyzed and are
% imported as column vectors. The user will input the organized accurate
% kicking data file as the first argument, the sheet number as the
% second argument, and the start and end rows as the last arguments.
[subjectID1,ankleFlexL1,ankleFlexR1,ankleVelL1,ankleVelR1,footVelL1,footVelR1,hipExtL1,hipExtR1,horizontalKL1,horizontalPL1,kneeFlexL1,kneeFlexR1,kneeVelL1,kneeVelR1,verticalKL1,verticalPL1] = importAccurateFile('soccer_accurate_data.xlsx','Sheet1',2,19);

% This is a custom function that calculates the means and standard
% deviations of each variable between conditions for the number of subjects
% entered. Then, it calculates the p-values of each variable. The user will
% name and specify the file type to be saved.
[maxMeans,maxStandardDeviations,accurateMeans,accurateStandardDeviations] = statAnalysis(ankleFlexL,ankleFlexR,ankleVelL,ankleVelR,footVelL,footVelR,hipExtL,hipExtR,horizontalKL,horizontalPL,kneeFlexL,kneeFlexR,kneeVelL,kneeVelR,verticalKL,verticalPL,ankleFlexL1,ankleFlexR1,ankleVelL1,ankleVelR1,footVelL1,footVelR1,hipExtL1,hipExtR1,horizontalKL1,horizontalPL1,kneeFlexL1,kneeFlexR1,kneeVelL1,kneeVelR1,verticalKL1,verticalPL1,'soccer_analysis_data.xlsx')

% Calculates the horizontal ground reaction force (GRF) means of the KL in each
% condition.
horzKLmeans = [accurateMeans{1,'horizontalKLAccurateMean'},maxMeans{1,'horizontalKLMaxMean'}];
% Calculates the horizontal GRF means of the PL in each
% condition.
horzPLmeans = [accurateMeans{1,'horizontalPLAccurateMean'},maxMeans{1,'horizontalPLMaxMean'}];
% Calculates the vertical GRF means of the KL in each
% condition.
vertKLmeans = [accurateMeans{1,'verticalKLAccurateMean'},maxMeans{1,'verticalKLMaxMean'}];
% Calculates the vertical GRF means of the PL in each
% condition.
vertPLmeans = [accurateMeans{1,'verticalPLAccurateMean'},maxMeans{1,'verticalPLMaxMean'}];

% Creates a bar graph figure comparing the horizontal GRF of the KL of each
% condtion.
subplot(2,2,1); 
bar(horzKLmeans,'y')
labels = {'Accurate','Max'};
set(gca,'xticklabel',labels)
title('Horizontal Force KL')
ylabel('Force(N)')

% Creates a bar graph figure comparing the horizontal GRF of the PL of each
% condtion.
subplot(2,2,2); 
bar(horzPLmeans,'b')
labels = {'Accurate','Max'};
set(gca,'xticklabel',labels)
title('Horizontal Force PL')
ylabel('Force(N)')

% Creates a bar graph figure comparing the vertical GRF of the KL of each
% condtion.
subplot(2,2,3);
bar(vertKLmeans,'y')
labels = {'Accurate','Max'};
set(gca,'xticklabel',labels)
title('Vertical Force KL')
ylabel('Force(N)')

% Creates a bar graph figure comparing the vertical GRF of the PL of each
% condtion.
subplot(2,2,4); 
bar(vertPLmeans,'b')
labels = {'Accurate','Max'};
set(gca,'xticklabel',labels)
title('Vertical Force PL')
ylabel('Force(N)')

% Saves the graphs as a figure titled 'groundreactionforces'
saveas(gcf,'groundreactionforces')



