function plan = buildfile

import matlab.buildtool.tasks.TestTask
import matlab.buildtool.tasks.CleanTask
% Create a plan from the task functions
plan = buildplan(localfunctions);

% Add a task to run the tests in the project
plan("mtest") = TestTask("tests",SourceFiles="code");

plan("clean") = CleanTask;

end