% ************************************************************************
% File Name   : scramble.m
%               (function m-file)
% Author      : Necati KARTAL
% Date        : 13.01.2014
% Description : This function m-file is scramble function which has ceaser 
%               algoritim and rotational algorithim to code/encode a text
%               with given arguments.
%               Input : Text,Scheme,Key,Mode
%               Output: Code/Encode
% ************************************************************************

function [ code ] = scramble(varargin)

%VARARGIN: VARiable ARGuments IN 
%NARGIN: Number ARGuments IN

if nargin > 0, text=varargin{1}; else disp('Empty text argument.'); return; end %A text argument.
%There will be checking for next 3 arguments.
if nargin > 1, scheme=varargin{2}; else scheme=1; end %To select algorithms.
if nargin > 2, key=varargin{3}; else key=1; end %Positive key number for Code/Encode.
if nargin > 3, mode=varargin{4}; else mode=1; end %To code +1, To encode -1.
if nargin > 4, disp('Too much arguments. (=4)'); return; end %To check arguments numbers.

if(scheme == 1) %Ceaser algorithm.
    if(mode == 1) %Code.
        for i=1:length(text) %Get lenght of text.
            if(text(i)>=65 && text(i)<=90) %Chech text characters. LOWERCASE.
                code(i) = char(mod(text(i)+key+65,26)+65); %Upper case 65-A,...,90-Z
            elseif(text(i)>=97 && text(i)<=122) %Chech text characters. UPPERCASE.
                code(i) = char(mod(text(i)+key-97,26)+97); %Lower case 97-a,...,122-z
            else %Chech text characters. INVALID.
                disp('Invalid text argument. (A-Z,a-z)'); return;
            end
        end
    elseif(mode == -1) %Encode.
        for i=1:length(text) %Get lenght of text.
            if(text(i)>=65 && text(i)<=90) %Chech text characters. LOWERCASE.
                code(i) = char(mod(text(i)-key-65,26)+65); %Upper case 65-A,...,90-Z
            elseif(text(i)>=97 && text(i)<=122) %Chech text characters. UPPERCASE.
                code(i) = char(mod(text(i)-key-97,26)+97); %Lower case 97-a,...,122-z
            else %Chech text characters. INVALID.
                disp('Invalid text argument. (A-Z,a-z)'); return;
            end
        end
    else %Chech mode argument. INVALID.
        disp('Invalid mode argument. (1,-1)'); return;
    end
elseif(scheme == 2) %Rotational Algorithm.
    if(mode == 1) %Code.
        for i=1:length(text) %Get lenght of text.
            if(text(i)>=65 && text(i)<=90) %Chech text characters. LOWERCASE.
                code(i) = char(mod(text(i)+key+65,26)+65); %Upper case 65-A,...,90-Z
                key = key+1; %Increase key by 1.
            elseif(text(i)>=97 && text(i)<=122) %Chech text characters. UPPERCASE.
                code(i) = char(mod(text(i)+key-97,26)+97); %Lower case 97-a,...,122-z
                key = key+1; %Increase key by 1.
            else %Chech text characters. INVALID.
                disp('Invalid text argument. (A-Z,a-z)'); return;
            end
        end
    elseif(mode == -1) %Encode.
        for i=1:length(text) %Get lenght of text.
            if(text(i)>=65 && text(i)<=90) %Chech text characters. LOWERCASE.
                code(i) = char(mod(text(i)-key-65,26)+65); %Upper case 65-A,...,90-Z
                key = key+1; %Decrease key by 1.
            elseif(text(i)>=97 && text(i)<=122) %Chech text characters. UPPERCASE.
                code(i) = char(mod(text(i)-key-97,26)+97); %Lower case 97-a,...,122-z
                key = key+1; %Decrease key by 1.
            else %Chech text characters. INVALID.
                disp('Invalid text argument. (A-Z,a-z)'); return;
            end
        end 
    else  %Chech mode argument. INVALID.
        disp('Invalid mode argument. (1,-1)'); return;
    end
else %Chech scheme argument. INVALID.
    disp('Invalid scheme argument. (1,2)'); return;
end

end

