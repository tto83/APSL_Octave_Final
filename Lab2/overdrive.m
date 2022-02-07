function overdrive(fileIn='sample.wav')
  [x,Fs]=audioread(fileIn);
  signal_L=length(x);
  y=zeros(1,signal_L);
  th=1/3;
  
  for i=1:1:signal_L
    if abs(x(i))<th
      y(i)=2*x(i);   
    endif
    if abs(x(i))>=th
      if x(i)>0
        y(i)=(3-(2-x(i)*3).^2)/3;
      endif
      if x(i)<0
        y(i)=-(3-(2-abs(x(i))*3).^2)/3;
      endif
    endif
    if abs(x(i))>2*th
      if x(i)>0
        y(i)=1;
      endif
      if x(i)<0
        y(i)=-1;
      endif
    endif
  endfor

  fileOut=['overdrive_' fileIn];
  audiowrite(fileOut,y,Fs);
  disp('Efekt overdrive');
  disp(['Wczytano plik ',fileIn]);
  disp(['Zapisano plik ',fileOut]);
  clear;
endfunction