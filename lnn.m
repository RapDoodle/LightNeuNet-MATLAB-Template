% Add LightNeuNet-MATLAB to path
if ~isfolder('include/lnn')
    disp("The LightNeuNet-MATLAB library is not found.");
    disp("Run download.m to download or update the library");
    return;
end
addpath('include/lnn');
disp('The LightNeuNet-MATLAB library was loaded successfully.');