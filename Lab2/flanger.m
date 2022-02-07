#opcjonalnie podajemy:
#delay=opoznienie
#range=zakres zmian
#freq=czestotliwosc

function flanger(fileIn='sample.wav', delay=15, range=12, freq=0.3125)
  [x,Fs]=audioread(fileIn);
  x=x(:,1);

  for i=1:length(x)-delay-range
   y(i)=x(i)+x(i+delay+round(range*sin(2*pi*i*freq/Fs)));
  endfor
  fileOut=['flanger_' fileIn];
  audiowrite(fileOut,y,Fs);
  disp('Efekt flanger');
  disp(['Wczytano plik ',fileIn]);
  disp(['Zapisano plik ',fileOut]);
  clear;
endfunction