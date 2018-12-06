function [maxMeans,maxStandardDeviations,accurateMeans,accurateStandardDeviations] = statAnalysis(ankleFlexL,ankleFlexR,ankleVelL,ankleVelR,footVelL,footVelR,hipExtL,hipExtR,horizontalKL,horizontalPL,kneeFlexL,kneeFlexR,kneeVelL,kneeVelR,verticalKL,verticalPL,ankleFlexL1,ankleFlexR1,ankleVelL1,ankleVelR1,footVelL1,footVelR1,hipExtL1,hipExtR1,horizontalKL1,horizontalPL1,kneeFlexL1,kneeFlexR1,kneeVelL1,kneeVelR1,verticalKL1,verticalPL1,outputStatFilename)
% Calculates the means, standard deviations and p-values of each variable.

    % calculates the maximal effort means for each variable
    ankleFlexLMaxMean = mean(ankleFlexL);
    ankleFlexRMaxMean = mean(ankleFlexR);
    ankleVelLMaxMean = mean(ankleVelL);
    ankleVelRMaxMean = mean(ankleVelR);
    footVelLMaxMean = mean(footVelL);
    footVelRMaxMean = mean(footVelR);
    hipExtLMaxMean = mean(hipExtL);
    hipExtRMaxMean = mean(hipExtR);
    horizontalKLMaxMean = mean(horizontalKL);
    horizontalPLMaxMean = mean(horizontalPL);
    kneeFlexLMaxMean = mean(kneeFlexL);
    kneeFlexRMaxMean = mean(kneeFlexR);
    kneeVelLMaxMean = mean(kneeVelL);
    kneeVelRMaxMean = mean(kneeVelR);
    verticalKLMaxMean = mean(verticalKL);
    verticalPLMaxMean = mean(verticalPL);
    % creates a table of the maximal effort means
    maxMeans = table(ankleFlexLMaxMean,ankleFlexRMaxMean,ankleVelLMaxMean,ankleVelRMaxMean,footVelLMaxMean,footVelRMaxMean,hipExtLMaxMean,hipExtRMaxMean,horizontalKLMaxMean,horizontalPLMaxMean,kneeFlexLMaxMean,kneeFlexRMaxMean,kneeVelLMaxMean,kneeVelRMaxMean,verticalKLMaxMean,verticalPLMaxMean)
    
    % names the file
    filename = outputStatFilename;
    % exports the maximal effort means table to a spreadsheet
    writetable(maxMeans,filename)
    
    % calculates the standard deviations of the maximal effort means
    ankleFlexLMaxSD = std(ankleFlexL);
    ankleFlexRMaxSD = std(ankleFlexR);
    ankleVelLMaxSD = std(ankleVelL);
    ankleVelRMaxSD = std(ankleVelR);
    footVelLMaxSD = std(footVelL);
    footVelRMaxSD = std(footVelR);
    hipExtLMaxSD = std(hipExtL);
    hipExtRMaxSD = std(hipExtR);
    horizontalKLMaxSD = std(horizontalKL);
    horizontalPLMaxSD = std(horizontalPL);
    kneeFlexLMaxSD = std(kneeFlexL);
    kneeFlexRMaxSD = std(kneeFlexR);
    kneeVelLMaxSD = std(kneeVelL);
    kneeVelRMaxSD = std(kneeVelR);
    verticalKLMaxSD = std(verticalKL);
    verticalPLMaxSD = std(verticalPL);
    
    % creates a table for the maximal effort standard deviations
    maxStandardDeviations = table(ankleFlexLMaxSD,ankleFlexRMaxSD,ankleVelLMaxSD,ankleVelRMaxSD,footVelLMaxSD,footVelRMaxSD,hipExtLMaxSD,hipExtRMaxSD,horizontalKLMaxSD,horizontalPLMaxSD,kneeFlexLMaxSD,kneeFlexRMaxSD,kneeVelLMaxSD,kneeVelRMaxSD,verticalKLMaxSD,verticalPLMaxSD)   
    % exports the maximal effort standard deviations table to
    % 'outputStatFilename' on the next available row
    writetable(maxStandardDeviations,outputStatFilename,'Sheet',1,'Range','A4')
      
    % calculates the accurate means for each variable
    ankleFlexLAccurateMean = mean(ankleFlexL1);
    ankleFlexRAccurateMean = mean(ankleFlexR1);
    ankleVelLAccurateMean = mean(ankleVelL1);
    ankleVelRAccurateMean = mean(ankleVelR1);
    footVelLAccurateMean = mean(footVelL1);
    footVelRAccurateMean = mean(footVelR1);
    hipExtLAccurateMean = mean(hipExtL1);
    hipExtRAccurateMean = mean(hipExtR1);
    horizontalKLAccurateMean = mean(horizontalKL1);
    horizontalPLAccurateMean = mean(horizontalPL1);
    kneeFlexLAccurateMean = mean(kneeFlexL1);
    kneeFlexRAccurateMean = mean(kneeFlexR1);
    kneeVelLAccurateMean = mean(kneeVelL1);
    kneeVelRAccurateMean = mean(kneeVelR1);
    verticalKLAccurateMean = mean(verticalKL1);
    verticalPLAccurateMean = mean(verticalPL1);
    
    % creates a table for the accurate means
    accurateMeans = table(ankleFlexLAccurateMean,ankleFlexRAccurateMean,ankleVelLAccurateMean,ankleVelRAccurateMean,footVelLAccurateMean,footVelRAccurateMean,hipExtLAccurateMean,hipExtRAccurateMean,horizontalKLAccurateMean,horizontalPLAccurateMean,kneeFlexLAccurateMean,kneeFlexRAccurateMean,kneeVelLAccurateMean,kneeVelRAccurateMean,verticalKLAccurateMean,verticalPLAccurateMean)
    % exports the accurate means table to
    % 'outputStatFilename' on the next available row
    writetable(accurateMeans,outputStatFilename,'Sheet',1,'Range','A7')
    
    % calculates the standard deviations of the accurate means
    ankleFlexLAccurateSD = std(ankleFlexL1);
    ankleFlexRAccurateSD = std(ankleFlexR1);
    ankleVelLAccurateSD = std(ankleVelL1);
    ankleVelRAccurateSD = std(ankleVelR1);
    footVelLAccurateSD = std(footVelL1);
    footVelRAccurateSD = std(footVelR1);
    hipExtLAccurateSD = std(hipExtL1);
    hipExtRAccurateSD = std(hipExtR1);
    horizontalKLAccurateSD = std(horizontalKL1);
    horizontalPLAccurateSD = std(horizontalPL1);
    kneeFlexLAccurateSD = std(kneeFlexL1);
    kneeFlexRAccurateSD = std(kneeFlexR1);
    kneeVelLAccurateSD = std(kneeVelL1);
    kneeVelRAccurateSD = std(kneeVelR1);
    verticalKLAccurateSD = std(verticalKL1);
    verticalPLAccurateSD = std(verticalPL1);
   
    % creates a table for the accurate standard deviations
    accurateStandardDeviations = table(ankleFlexLAccurateSD,ankleFlexRAccurateSD,ankleVelLAccurateSD,ankleVelRAccurateSD,footVelLAccurateSD,footVelRAccurateSD,hipExtLAccurateSD,hipExtRAccurateSD,horizontalKLAccurateSD,horizontalPLAccurateSD,kneeFlexLAccurateSD,kneeFlexRAccurateSD,kneeVelLAccurateSD,kneeVelRAccurateSD,verticalKLAccurateSD,verticalPLAccurateSD)
    % exports the accurate standard deviations table to
    % 'outputStatFilename' on the next available row
    writetable(accurateStandardDeviations,outputStatFilename,'Sheet',1,'Range','A10')
    
    % calculates the p-value for each variable between conditions
    [h,p,ci,stats] = ttest2(ankleFlexL,ankleFlexL1);
    pValueAnkleFlexL = p;
    clear('p');
    [h,p,ci,stats] = ttest2(ankleFlexR,ankleFlexR1);
    pValueAnkleFlexR = p;
    clear('p');
    [h,p,ci,stats] = ttest2(ankleVelL,ankleVelL1);
    pValueAnkleVelL = p; 
    clear('p');
    [h,p,ci,stats] = ttest2(ankleVelR,ankleVelR1);
    pValueAnkleVelR = p;
    clear('p');
    [h,p,ci,stats] = ttest2(footVelL,footVelL1);
    pValueFootVelL = p;
    clear('p');
    [h,p,ci,stats] = ttest2(footVelR,footVelR1);
    pValueFootVelR = p;
    clear('p');
    [h,p,ci,stats] = ttest2(hipExtL,hipExtL1);
    pValueHipExtL = p;
    clear('p');
    [h,p,ci,stats] = ttest2(hipExtR,hipExtR1);
    pValueHipExtR = p;
    clear('p');
    [h,p,ci,stats] = ttest2(horizontalKL,horizontalKL1);
    pValueHorizontalKL = p;
    clear('p');
    [h,p,ci,stats] = ttest2(horizontalPL,horizontalPL1);
    pValueHorizontalPL = p;
    clear('p');
    [h,p,ci,stats] = ttest2(kneeFlexL,kneeFlexL1);
    pValueKneeFlexL = p;
    clear('p');
    [h,p,ci,stats] = ttest2(kneeFlexR,kneeFlexR1);
    pValueKneeFlexR = p;
    clear('p');
    [h,p,ci,stats] = ttest2(kneeVelL,kneeVelL1);
    pValueKneeVelL = p;
    clear('p');
    [h,p,ci,stats] = ttest2(kneeVelR,kneeVelR1);
    pValueKneeVelR = p;
    clear('p');
    [h,p,ci,stats] = ttest2(verticalKL,verticalKL1);
    pValueVerticalKL = p;
    clear('p');
    [h,p,ci,stats] = ttest2(verticalPL,verticalPL1);
    pValueVerticalPL = p;
    clear('p');
    % clears unnecessary variables created from the ttest2 function
    clear h
    clear ci
    clear stats

    % create a table of the p-values
    pValues = table(pValueAnkleFlexL,pValueAnkleFlexR,pValueAnkleVelL,pValueAnkleVelR,pValueFootVelL,pValueFootVelR,pValueHipExtL,pValueHipExtR,pValueHorizontalKL,pValueHorizontalPL,pValueKneeFlexL,pValueKneeFlexR,pValueKneeVelL,pValueKneeVelR,pValueVerticalKL,pValueVerticalPL)
    % exports the p-values table to 'outputStatFilename' on the next available row
    writetable(pValues,outputStatFilename,'Sheet',1,'Range','A13')
    
    
end

