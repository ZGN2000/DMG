# DMG Tool
**D**irect **M**ethod based on **G**POPS.

This is a Matlab implementation of a General Purpose Software for solving Multi-phase Optimal Control Problems.

This distribution is a derived work from "GPOPS 2.2" (Gauss Pseudospectral Optimization Software).
This version of GPOPS was downloaded in October 2009 from [SourceForge](https://sourceforge.net/projects/gpops/). It was developed at MIT, Draper Laboratory, and The University of Florida, and was published under the Simple Public License.

The main GPOPS features are:

 * Implements Gauss Pseudospectral Collocation Method for Transcribing the continuous optimal control problem into a Nonlinear Optimization Problem.
 * Interfaces with SNOPT
 * Includes Automatic, Forward Numerical, Complex-Step and user-supplied Analytical Derivatives for gradient and jacobian computations.

The new features DMG includes:

 * Implements Hermite Simpson Collocation Method for Transcribing the continuous optimal control problem into a Nonlinear Optimization Problem.
 * Interfaces with IPOPT
 * Multi-core computation of Forward numerical derivatives and Complex Step differentiation.

## Goal
The purpose of DMG tool is to provide a Matlab open-source tool for solving Optimal Control Problems within Research and Academia. Given that the original version of GPOPS is developed to work with the NLP solver SNOPT, which is a proprietary software, we have modified the code in such a way that now is able to work with the open-source solver IPOPT.  

## NLP Solvers
Two different NLP solvers can be used with DMG solver:
 * [IPOPT](https://projects.coin-or.org/Ipopt): Interior Point Solver. It is an opensource package for solving large scale nonlinear optimization problems. Precompiled binaries for Macosx, Windows (32 and 64 bits), and Linux are included within the DMG solver distribution. They are located in *NLPsolvers/IPOPT*
 * [SNOPT](https://web.stanford.edu/group/SOL/snopt.htm): Sequential Quadratic Solver. It is a propietary software. A license can be purchased [here](https://ccom.ucsd.edu/~optimizers/downloads/). Copy and Paste the required libraries and mex files in the folder *NLPsolvers/SNOPT*


## Installation Guide
Installation requires simply to follow the next steps:
 * Download [DMG](https://github.com/uc3m-aerospace/DMG). 
 * Select the *DMG* directory as your working directory.
 * Run the *DMGSetup.m* file. It includes all the necessary paths to your root base directory. The file only need to be run once.

## Quick Usage Guide

In order to optimize an Optimal Control Problem, the user needs to call the main function *DMG.m* providing an input structure. Here you have an example:

```matlab
% INPUT STRUCTURE FOR DMG SOLVER
input.name        = 'ProblemName';      % A string containing the name of the problem
input.funcs.cost  = 'CostFunctionName'; % A string containing the name of the user-defined Cost Function
input.funcs.dae   = 'DaeFunction';      % A string containing the name of the user-defined Differential Algebrais System
input.funcs.event = 'EventFunction';    % A string containing the name of the user-defined Event function
input.funcs.link  = 'LinkFunction';     % A string containing the name of the user-defined Link function
input.limits      = limits;             % An array of structures containing States, Controls, Parameters lower and Upper bounds as well as
                                        % Path and Event constraints Lower and Upper bounds.
input.guess       = guess;              % An array of strutures containing initial guess for the States, Controls and Parameters
input.linkages    = linkages;           % An array of structures containing the desired values for the 'LinkFunction'
input.derivatives = 'automatic';        % A string containing the method for computing gradients and jacobians:              automatic/numerical/complex/analytical
input.parallel    = 'no';               % A string containing the option for multicore computation of numerical and complex differentiation: yes/no
input.autoscale   = 'off';              % A string that indicates wether automatic Scaling is used or not: yes/no
input.solver      = 'ipopt';            % A string contyaining the NonLinear Programming Solver to be used: ipopt/snopt
input.method      = 'hermite-simpson';  % A string containing the transcription method to be used: hermite-simpson/pseudospectral

% RUN DMG TOOL
output  = DMG(input)
```



**NOTE**: For a detailed description on how to define each input, please refer to the documentation that can be found in the *documentation* folder.

## Important Note
Any use of DMG Tool MUST abide by the GPOPS license

## Disclaimer
This software is provided 'as is' and free-of-charge. The authors do not assume any responsibility for any harm
resulting from the use of this software. The authors do, however,
hope that users will find this software useful for research and other
purposes.
