function setcustompath(option_path)

% SUBFUNCTION that updates the path to contain all the custom directories, while
% keeping the peer or qsub path untouched.

% these are for remembering the path on subsequent calls with the same input arguments
persistent previous_argin previous_path

% the following pertains to path settings, which does not apply in case
% this code is included in a compiled MATLAB application
if ~isdeployed
  
  if isequal(previous_argin, option_path) && isequal(previous_path, path)
    % no reason to change the path again
    return
  end
  
  if ~isempty(option_path)
    f = mfilename('fullpath'); % this is .../peer/private/getcustompath.m
    f = fileparts(f);          % this is .../peer/private
    f = fileparts(f);          % this is .../peer
    [p, d] = getcustompath;
    % ensure that the default path is maintained
    path(d);
    % add the custom path
    path(option_path, path);
    % ensure that the peer functions are maintained on the path
    path(f, path);
  end
  
  % remember the current settings for the next call
  previous_argin = option_path;
  previous_path  = path;
  
end
