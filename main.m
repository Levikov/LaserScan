global Xlim;
global Ylim;
global Zlim;
global Xdiv;
global Ydiv;
global Zdiv;
global Xsize;
global Ysize;
global Zsize;
global Xl;
global Yl;
global Zl;
global Xr;
global Yr;
global Zr;
Xlim = [0,1];   %X ����Χ
Ylim = [0,1];   %Y ����Χ
Zlim = [0,1];   %Z ����Χ
Xdiv = 0.01;    %X ����
Ydiv = 0.01;    %Y ����
Zdiv = 0.01;    %Z ����
Xsize = ceil((Xlim(2)-Xlim(1))/Xdiv)+1; %�������ά��1
Ysize = ceil((Ylim(2)-Ylim(1))/Ydiv)+1; %�������ά��2
Zsize = ceil((Zlim(2)-Zlim(1))/Zdiv)+1; %�������ά��3
Xl = 1; %������x����
Yl = 1; %������y����
Zl = 1; %������z����
Xr = 1; %������x����
Yr = 1.03; %������y����
Zr = 1; %������z����
I = zeros(Xsize,Ysize,Zsize,'single');  %�������
cells = cell(11,1);
for i=1:11
    for j=1:11
    disp([i,j]);
        I = I + calc_result(i,j);
    end
end
