#uzytkownik podaje nazwe pliku i parametry, jesli nie poda, to funkcja uzyje domyslnych
function tremolo(fileIn='sample.wav', f_M=2, A=10)
  [x,Fs]=audioread(fileIn);
  x_d=x(:,1);
  freq_M=f_M/Fs;
  y=zeros(length(x_d),1);

  for i=1:length(x_d)
    y(i)=x(i)*(1+A*(cos(2*pi*freq_M*i)));
  end
  fileOut=['tremolo_' fileIn];
  audiowrite(fileOut,y,Fs);
  disp('Efekt tremolo');
  disp(['Wczytano plik ',fileIn]);
  disp(['Zapisano plik ',fileOut]);
  clear;
 endfunction