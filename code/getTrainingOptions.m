function options = getTrainingOptions(XVal,YVal)
options = trainingOptions("adam", ...
    MiniBatchSize = 64, ...
    MaxEpochs = 30, ...
    InitialLearnRate = 1e-2, ...
    LearnRateSchedule = "piecewise", ...
    LearnRateDropPeriod = 30, ...
    LearnRateDropFactor = 0.1, ...
    GradientThreshold = 1, ...
    Shuffle = "every-epoch", ...
    ValidationData = {XVal,YVal}, ...
    ValidationFrequency = 50, ...
    InputDataFormats="CTB", ...
    TargetDataFormats="CTB", ...
    OutputNetwork="best-validation-loss", ...
    Plots = "training-progress", ...
    Verbose = false);
end