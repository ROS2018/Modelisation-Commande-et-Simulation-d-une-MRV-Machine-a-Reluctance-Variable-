% Les parametres:
    Rs = 7.8;
    Ld = 0.54 ;
    wd = 0.056;
    Trd = 0.1;
    Lq = 0.21;
    wq = 0.2;
    Trq = 0.046;

    kd =1/(Rs+Ld*(1-wd)/Trd); Td = wd*Ld*kd;
    kq =1/(Rs+Lq*(1-wq)/Trq); Tq = wq*Lq*kq;
% Le systeme d'axe d:
s=tf('s');
Fd = kd/(1+s*Td);
% Le systeme d'axe q:
Fq = kq/(1+s*Tq);

% Le PI :
Kid = 3/(Td*kd);
Pd = 3/kd;
Kiq = 3/(Tq*kq);
Pq = 3/kq;

%% Representation d'etat:
% Paramatres supposés :
Lrd = Ld/3; Rrd = 1.97; Md = 0.33 ;
Lrq = 0.07; Rrq = 0.346; Mq = 0.13 ;
p = 3; 
% la vitesse angulaire electrique:
w = 0;
we = p*w;
% le vecteurs et matrices d'etat:
W = [0 -we ; we, 0];
RRs = [Rs , 0; 0, Rs];
RRr = [Rrd, 0; 0, Rrq];
Ls = [Ld, 0 ; 0, Lq];
Lr = [Lrd, 0 ; 0, Lrq];
M = [Md, 0; 0, Mq]*0.9;
R = [RRs+W*Ls, W*M; zeros(2,2), RRr];
L = [Ls, M; M, Lr];

A = -inv(L)*R
eig(A)
%% Le PD du controleur qui considere la saturation
a1 = -(Rs/wd/Ld+(1-wd)/wd/Trd); e1=1/(wd*Ld) ;
b2=-(Rs/wq/Lq+(1-wq)/wq/Trq) ; e2=1/(wq*Lq) ;
% Le PI :
Kid_ = 1*a1^2/e1; 
Pd_ = -1*a1/e1; 
Kiq_ = 1*b2^2/e2; 
Pq_ = -1*b2/e2; 