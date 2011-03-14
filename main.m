function varargout = main(varargin)
% MAIN M-file for main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main

% Last Modified by GUIDE v2.5 14-Mar-2011 13:15:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)

% Choose default command line output for main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.slider250,'Value',1.0);
set(handles.slider500,'Value',1.0);
set(handles.slider1000,'Value',1.0);
set(handles.slider2000,'Value',1.0);
set(handles.slider3000,'Value',1.0);
set(handles.slider4000,'Value',1.0);
set(handles.slider5000,'Value',1.0);
set(handles.slider6000,'Value',1.0);
set(handles.slider8000,'Value',1.0);
set(handles.slider10000,'Value',1.0);



% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider250_Callback(hObject, eventdata, handles)
% hObject    handle to slider250 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider250_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider250 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider500_Callback(hObject, eventdata, handles)
% hObject    handle to slider500 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider500_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider500 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider1000_Callback(hObject, eventdata, handles)
% hObject    handle to slider1000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2000_Callback(hObject, eventdata, handles)
% hObject    handle to slider2000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3000_Callback(hObject, eventdata, handles)
% hObject    handle to slider3000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on button press in filt_run.
function filt_run_Callback(hObject, eventdata, handles)
% hObject    handle to filt_run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

file = get(handles.audio_file_input, 'String');
[audio, sr] = wavread(file);

if (strcmp(get(handles.uipanel_coch, 'Visible'), 'off'))
    f = [0 300 0; 300 700 0; 700 1500 0; 1500 2500 0; 2500 3500 0; 3500 4500 0; 4500 5500 0; 5500 6700 0; 6700 9000 0; 9000 -1 0];
    f(1, 3) = get(handles.slider250, 'Value');
    f(2, 3) = get(handles.slider500, 'Value');
    f(3, 3) = get(handles.slider1000, 'Value');
    f(4, 3) = get(handles.slider2000, 'Value');
    f(5, 3) = get(handles.slider3000, 'Value');
    f(6, 3) = get(handles.slider4000, 'Value');
    f(7, 3) = get(handles.slider5000, 'Value');
    f(8, 3) = get(handles.slider6000, 'Value');
    f(9, 3) = get(handles.slider8000, 'Value');
    f(10, 3) = get(handles.slider10000, 'Value');
    %audio_re = zeros(size(audio));
    
    for i=1:size(audio, 2)
        y = stft(audio(:, i), 256, 256, 0, sr, 'audiogram', f);
        audio_re(:, i) = istft(y);
    end
else
    num_r = str2double(get(handles.range, 'String'));
    num_max = str2double(get(handles.maxima, 'String'));
    if (get(handles.radiobuttonlinear, 'Value') == 1.0)
        p = partition(num_r, sr);
    else
        p = partition2(num_r, sr);
    end
    
    for i=1:size(audio, 2)
        y = stft(audio(:, i), 256, 256, 0, sr, 'cochlear', p, num_max);
        audio_re(:, i) = istft(y);
    end
end

[~, F, T, P] = spectrogram(audio(1:10000, 1), 256, 250, 256, sr);
surf(handles.orig_axes, T, F, 10*log10(P), 'edgecolor', 'none');
view(handles.orig_axes, 0, 90);
axis(handles.orig_axes, 'tight');
xlabel(handles.orig_axes, 'Time (seconds)');
ylabel(handles.orig_axes, 'Hz');

[~, F, T, P] = spectrogram(audio_re(1:10000, 1), 256, 250, 256, sr);
surf(handles.filt_axes, T, F, 10*log10(P), 'edgecolor', 'none');
view(handles.filt_axes, 0, 90);
axis(handles.filt_axes, 'tight');
xlabel(handles.filt_axes, 'Time (seconds)');
ylabel(handles.filt_axes, 'Hz');

handles.orig_audio = audio;
handles.sr = sr;
handles.filt_audio = audio_re;
guidata(hObject, handles);

% --- Executes on slider movement.
function slider4000_Callback(hObject, eventdata, handles)
% hObject    handle to slider4000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function audio_file_input_Callback(hObject, eventdata, handles)
% hObject    handle to audio_file_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of audio_file_input as text
%        str2double(get(hObject,'String')) returns contents of audio_file_input as a double


% --- Executes during object creation, after setting all properties.
function audio_file_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to audio_file_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in orig_play.
function orig_play_Callback(hObject, eventdata, handles)
% hObject    handle to orig_play (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Only play first 2 seconds
clear playsnd;
wavplay(handles.orig_audio, handles.sr, 'async');

% --- Executes on button press in filt_play.
function filt_play_Callback(hObject, eventdata, handles)
% hObject    handle to filt_play (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Only play first 2 seconds
clear playsnd;
wavplay(handles.filt_audio, handles.sr, 'async');


% --- Executes on button press in audiogram_run.
function audiogram_run_Callback(hObject, eventdata, handles)
% hObject    handle to audiogram_run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
freqs = [250,500,1000,2000,3000,4000,5000,6000,8000,10000];
amps = [.1, .5, 1, 5, 10];
global heard;
global stop;
stop = 0;

set(handles.slider250,'Value',0);
set(handles.slider500,'Value',0);
set(handles.slider1000,'Value',0);
set(handles.slider2000,'Value',0);
set(handles.slider3000,'Value',0);
set(handles.slider4000,'Value',0);
set(handles.slider5000,'Value',0);
set(handles.slider6000,'Value',0);
set(handles.slider8000,'Value',0);
set(handles.slider10000,'Value',0);

choice = questdlg('This is a simple audiogram that will customize the filter to what you can hear. Click start to begin, then click the Heard button every time you hear a noise. You will be notified when the test is over, and you can stop it at any time.', ...
        'options', ...
        'Begin', 'Cancel', 'Begin');
switch choice
    case 'Begin'
        for f = 1:length(freqs)  
            if(stop == 1)
                break;
            end
            for a = 1:length(amps)
                if(stop == 1)
                    break;
                end

                heard = 0;

                pause(0.2+rand*0.7);  %% wait for duration of tone
                tone(freqs(f),amps(a));

                for wait = 1:20
                    pause(2/20);        %% wait 2 seconds in total
                end
                if(heard == 1)
                        if(freqs(f)==250)
                            set(handles.slider250,'Value',(mag2db(amps(a))-40)/-60);
                        end
                        if(freqs(f)==500)
                            set(handles.slider500,'Value',(mag2db(amps(a))-40)/-60);
                        end
                        if(freqs(f)==1000)
                            set(handles.slider1000,'Value',(mag2db(amps(a))-40)/-60);
                        end
                        if(freqs(f)==2000)
                            set(handles.slider2000,'Value',(mag2db(amps(a))-40)/-60);
                        end
                        if(freqs(f)==3000)
                            set(handles.slider3000,'Value',(mag2db(amps(a))-40)/-60);
                        end
                        if(freqs(f)==4000)
                            set(handles.slider4000,'Value',(mag2db(amps(a))-40)/-60);
                        end
                        if(freqs(f)==5000)
                            set(handles.slider5000,'Value',(mag2db(amps(a))-40)/-60);
                        end
                        if(freqs(f)==6000)
                            set(handles.slider6000,'Value',(mag2db(amps(a))-40)/-60);
                        end
                        if(freqs(f)==8000)
                            set(handles.slider8000,'Value',(mag2db(amps(a))-40)/-60);
                        end
                        if(freqs(f)==10000)
                            set(handles.slider10000,'Value',(mag2db(amps(a))-40)/-60);
                        end
                        break;
                end

            end

        end
        msgbox('The test is complete') 
    case 'Cancel'
end


% --- Executes on button press in explore.
function explore_Callback(hObject, eventdata, handles)
% hObject    handle to explore (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[fileName,pathName] = uigetfile('*.wav','Select the sound file');
if isequal(fileName,0)
   set(handles.audio_file_input,'String','no file selected');
else
   set(handles.audio_file_input,'String',fullfile(pathName, fileName));
end


% --- Executes on button press in Stop_sound.
function Stop_sound_Callback(hObject, eventdata, handles)
% hObject    handle to Stop_sound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear playsnd;


% --- Executes on button press in No_Filter_button.
function No_Filter_button_Callback(hObject, eventdata, handles)
% hObject    handle to No_Filter_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.slider250,'Value',1.0);
set(handles.slider500,'Value',1.0);
set(handles.slider1000,'Value',1.0);
set(handles.slider2000,'Value',1.0);
set(handles.slider3000,'Value',1.0);
set(handles.slider4000,'Value',1.0);
set(handles.slider5000,'Value',1.0);
set(handles.slider6000,'Value',1.0);
set(handles.slider8000,'Value',1.0);
set(handles.slider10000,'Value',1.0);

% --- Executes on button press in All_Filtered_Button.
function All_Filtered_Button_Callback(hObject, eventdata, handles)
% hObject    handle to All_Filtered_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.slider250,'Value',0.0);
set(handles.slider500,'Value',0.0);
set(handles.slider1000,'Value',0.0);
set(handles.slider2000,'Value',0.0);
set(handles.slider3000,'Value',0.0);
set(handles.slider4000,'Value',0.0);
set(handles.slider5000,'Value',0.0);
set(handles.slider6000,'Value',0.0);
set(handles.slider8000,'Value',0.0);
set(handles.slider10000,'Value',0.0);


% --- Executes on button press in Old_Age_Sample.
function Old_Age_Sample_Callback(hObject, eventdata, handles)
% hObject    handle to Old_Age_Sample (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.slider250,'Value',0.9);
set(handles.slider500,'Value',0.9);
set(handles.slider1000,'Value',0.8);
set(handles.slider2000,'Value',0.6);
set(handles.slider3000,'Value',0.45);
set(handles.slider4000,'Value',0.4);
set(handles.slider5000,'Value',0.4);
set(handles.slider6000,'Value',0.38);
set(handles.slider8000,'Value',0.38);
set(handles.slider10000,'Value',0.35);


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.slider250,'Value',0.5);
set(handles.slider500,'Value',0.55);
set(handles.slider1000,'Value',0.55);
set(handles.slider2000,'Value',0.4);
set(handles.slider3000,'Value',0.5);
set(handles.slider4000,'Value',0.4);
set(handles.slider5000,'Value',0.4);
set(handles.slider6000,'Value',0.4);
set(handles.slider8000,'Value',0.35);
set(handles.slider10000,'Value',0.45);


% --- Executes on button press in heardbutton.
function heardbutton_Callback(hObject, eventdata, handles)
% hObject    handle to heardbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global heard;
heard = 1;


% --- Executes on button press in stop_audiogram.
function stop_audiogram_Callback(hObject, eventdata, handles)
% hObject    handle to stop_audiogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global stop;
stop = 1;

function tone(w,amp)

fs=40000;  %sample freq in Hz

t = [0:1/fs:.5]; 

wave=amp*sin(2*pi*w*t); 
envelope = sin(pi*t/t(length(t)));

wave = wave .* envelope;

%play sound
sound(wave,fs);


% --- Executes on slider movement.
function slider5000_Callback(hObject, eventdata, handles)
% hObject    handle to slider5000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6000_Callback(hObject, eventdata, handles)
% hObject    handle to slider6000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider8000_Callback(hObject, eventdata, handles)
% hObject    handle to slider8000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider8000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider10000_Callback(hObject, eventdata, handles)
% hObject    handle to slider10000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider10000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider10000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in tab1.
function tab1_Callback(hObject, eventdata, handles)
% hObject    handle to tab1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.filter_panel_audio, 'Visible', 'On');
set(handles.uipanel_coch, 'Visible', 'Off');


% --- Executes on button press in tab2.
function tab2_Callback(hObject, eventdata, handles)
% hObject    handle to tab2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.filter_panel_audio, 'Visible', 'Off');
set(handles.uipanel_coch, 'Visible', 'On');



function range_Callback(hObject, eventdata, handles)
% hObject    handle to range (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of range as text
%        str2double(get(hObject,'String')) returns contents of range as a double


% --- Executes during object creation, after setting all properties.
function range_CreateFcn(hObject, eventdata, handles)
% hObject    handle to range (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function maxima_Callback(hObject, eventdata, handles)
% hObject    handle to maxima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maxima as text
%        str2double(get(hObject,'String')) returns contents of maxima as a double


% --- Executes during object creation, after setting all properties.
function maxima_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maxima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
