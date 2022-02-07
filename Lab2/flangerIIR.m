#opcjonalnie podajemy:
#delay=opoznienie
#range=zakres zmian
#freq=czestotliwosc

function flangerIIR(fileIn='sample.wav', delay=15, range=12, freq=0.3125)
  [x,Fs]=audioread(fileIn);
  x=x(:,1);

  for i=1:length(x)-delay-range
   temp=x(i+delay+round(range*sin(2*pi*i*freq/Fs)));
   y(i)=x(i)+temp;
  endfor
  
  fileOut=['flanger_IIR_' fileIn];
  audiowrite(fileOut,y,Fs);
  disp('Efekt flanger w wersji IIR');
  disp(['Wczytano plik ',fileIn]);
  disp(['Zapisano plik ',fileOut]);
  clear;
endfunction