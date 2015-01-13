% ************************************************************************
% File Name   : main.m
%               (blank m-file)
% Author      : Necati KARTAL
% Date        : 13.01.2014
% Description : This m-file will test scramble function.
%               Input : Text,Scheme,Key,Mode
%               Output: Code/Encode
% ************************************************************************
try
    %Set everything to default.
    clear; close all; clc;
    
    %Press final message.
    disp('Testing SCRAMBLE function is started!');
    
    %Ceaser algorithm. 
    
    %CODE.
    disp('Ceaser algorithm.CODE for ''abc'':');
    scramble('abc',1,1,1) %bcd
    
    %DECODE.
    disp('Ceaser algorithm.DECODE for ''bcd'':');
    scramble('bcd',1,1,-1) %abc
    
    %CODE.
    disp('Ceaser algorithm.CODE for ''ABC'':');
    scramble('ABC',1,1,1) %BCD
    
    %DECODE.
    disp('Ceaser algorithm.DECODE for ''bcd'':');
    scramble('BCD',1,1,-1) %ABC
    
    %Rotatinal algorithm.
    
    %CODE.
    disp('Rotatinal algorithm.CODE for ''abc'':');
    scramble('abc',2,1,1) %bdf
   
    %DECODE.
    disp('Rotatinal algorithm.DECODE for ''bdf'':');
    scramble('bdf',2,1,-1) %abc
    
    %CODE.
    disp('Rotatinal algorithm.CODE for ''ABC'':');
    scramble('ABC',2,1,1) %BDF
   
    %DECODE.
    disp('Rotatinal algorithm.DECODE for ''BDF'':');
    scramble('BDF',2,1,-1) %ABC
    
    %Press final message.
    disp('Testing SCRAMBLE function is finished!');
    
catch err

    %Press error message.
    rethrow(err);
    
end  % end try/catch