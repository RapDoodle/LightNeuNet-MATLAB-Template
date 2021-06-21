function lnn(arg1, arg2)
% Installing or initializing LightNeuNet and related plugins

if nargin > 0 && strcmp(arg1, "install")
    if nargin == 1
        % Entered lnn install
        modulename = "core";
    else
        % Entered lnn install [modulename]
        modulename = arg2;
    end
    
    if strcmp(modulename, "core") || strcmp(modulename, "lnn")
        !git clone https://github.com/RapDoodle/LightNeuNet-MATLAB.git include/lnn
    elseif strcmp(modulename, "qfsdk")
        !git clone https://github.com/RapDoodle/Quantum-Finance-SDK-MATLAB.git include/qfsdk
    else
        disp("No available module named " + modulename);
        return;
    end
    return;
end

if nargin == 0 || (nargin > 0 && strcmp(arg1, "load"))
    if nargin <= 1
        modulename = "@all";
    else
        modulename = arg2;
        
        % Alias
        if strcmp(modulename, "core")
            modulename = "lnn";
        end
    end
    
    files = dir('include');
    subfolders = files([files.isdir]);

    if length(subfolders) <= 2
        disp("No module was not found.");
        disp("Run 'lnn install core' to download the library");
        disp("For information, visit:");
        disp("https://github.com/RapDoodle/LightNeuNet-MATLAB-Template");
        return;
    end
    
    if strcmp(modulename, "@all")
        % Load all modules in include
        for k = 1:length(subfolders)
            if ~strcmp(subfolders(k).name, ".") && ...
                    ~strcmp(subfolders(k).name, "..")
                path = "include/" + subfolders(k).name;
                addpath(path);
                
                if strcmp(subfolders(k).name, "lnn")
                    disp("The LightNeuNet-MATLAB library was loaded successfully.");
                else
                    disp("Module '" + subfolders(k).name + "' was loaded successfully.");
                end
            end
        end
        return;
    end
    
    if isfolder("include/" + modulename)
        addpath("include/" + modulename);
        disp("Module '" + modulename + "' was loaded successfully.");
    else
        error("Module '" + modulename + "' was not found.")
    end
    return;
end

if nargin > 0 && strcmp(arg1, "clear")
    if nargin <= 1
        modulename = "@all";
    else
        modulename = arg2;
    end
    
    if strcmp(modulename, "@all")
        rmdir("include", "s");
    else
        rmdir("include/" + modulename, "s");
    end
    
    return;
end

error("Unkown command.");

end

