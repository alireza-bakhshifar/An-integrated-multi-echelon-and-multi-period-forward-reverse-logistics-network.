
Sets
     ff       /1*3/
     i                   /i1*i3/
     j_Union_l           /j1,j2,l1,l2/
     j(j_Union_l)        /j1*j2/
     k                   /k1*k2/
     l(j_Union_l)        /l1*l2/
     tp                  /t1*t8/
     o                   /o1*o2/

Scalar Cpp    /16000/
Scalar M      /10000000/
Scalar Phi    /0.2/
Scalar Wem    /0.6/
Scalar Wed    /0.4/
scalar p      /0.6/
scalar eta    /0.72/
Parameters
r(l)  ;
r(l)=uniform(4,10) ;
Parameters
Alpha(tp)
/
t1   0.2
t2   0.3
t3   0.35
t4   0.4
t5   0.5
t6   0.4
t7   0.33
t8   0.25
/

Beta(tp)
/
t1   0.5
t2   0.34
t3   0.44
t4   0.25
t5   0.66
t6   0.37
t7   0.33
t8   0.56
/
Gama(tp)
/
t1   0.8
t2   0.78
t3   0.35
t4   0.24
t5   0.04
t6   0.18
t7   0.56
t8   0.68
/


Cx(i,j) ''
/
i1.j1   3.7
i1.j2   19.2
i2.j1   19.2
i2.j2   3.7
i3.j1   15.2
i3.j2   6.1
/
Cs(i,k) ''
/
i1.k1   3.7
i1.k2   15.2
i2.k1   19.2
i2.k2   6.1
i3.k1   15.2
i3.k2   3.7
/
Cu(j,k) ''
/
j1.k1   3.7
j1.k2   15.2
j2.k1   19.2
j2.k2   6.1
/
Ce(k,l) ''
/
k1.l1   21.3
k1.l2   47.7
k2.l1   8.9
k2.l2   34.1
/
Cq(j,l) ''
/
j1.l1   20.3
j1.l2   40.7
j2.l1   5.6
j2.l2   29.6

/
Cv(i,l) ''
/
i1.l1   21.3
i1.l2   47.7
i2.l1   8.9
i2.l2   34.1
i3.l1   8.9
i3.l2   34.1
/
Cf(l,o) ''
/
l1.o1   3.7
l1.o2   27.9
l2.o1   27.9
l2.o2   3.7
/

Ch(tp) ''
/
t1   58
t2   58
t3   60
t4   63
t5   63
t6   66
t7   68
t8   72
/
Cp(tp) ''
/
t1   86
t2   89
t3   89
t4   91
t5   94
t6   94
t7   100
t8   103
/
Cr(tp) ''
/
t1   86
t2   86
t3   100
t4   100
t5   100
t6   115
t7   129
t8   137/
f(j) 's'
fp(l) 's'
Landa_h(j,tp) 's'
Landa_r(l,tp) 's'
d(k,tp)
Landa_c(i,tp)
dp(o,tp)
Ce_emf(i,tp)
Ce_tpd(i,j,tp)
Ce_tccp(k,l,tp)
Ce_tdc(j,k,tp)
Ce_tpc(i,k,tp)
Ce_tdcp(j,l,tp)
Ce_tpcp(i,l,tp)
Ce_tcpcpp(l,o,tp)
Ce_emfp(l,o,tp)
JO(j_Union_l)
ur(j_Union_l)
EV(j_Union_l)
rd(j_Union_l)

loop(j,f(j) = uniformint(14250,18250););
loop(l,fp(l) = uniformint(14250,22250););
loop(j,loop(tp,Landa_h(j,tp)=30;););
loop(l,loop(tp,Landa_r(l,tp)=uniformint(4,10);););
loop(k,loop(tp,d(k,tp)=uniformint(3,10);););
loop(i,loop(tp,Landa_c(i,tp)=uniformint(30,100);););
loop(o,loop(tp,dp(o,tp)=uniformint(5,20);););
loop(i,loop(tp,Ce_emf(i,tp)=uniformint(12,15);););
loop(i,loop(j,loop(tp,Ce_tpd(i,j,tp)=uniformint(18,30););););
loop(k,loop(l,loop(tp,Ce_tccp(k,l,tp)=uniformint(18,30););););
loop(j,loop(k,loop(tp,Ce_tdc(j,k,tp)=uniformint(18,30););););
loop(i,loop(k,loop(tp,Ce_tpc(i,k,tp)=uniformint(18,30););););
loop(j,loop(l,loop(tp,Ce_tdcp(j,l,tp)=uniformint(18,30););););
loop(i,loop(l,loop(tp,Ce_tpcp(i,l,tp)=uniformint(18,30););););
loop(l,loop(o,loop(tp,Ce_tcpcpp(l,o,tp)=uniformint(18,30););););
loop(l,loop(o,loop(tp,Ce_emfp(l,o,tp)=uniformint(15,20););););
loop(j,JO(j) =uniformint(2,8););
loop(l,JO(l) =uniformint(60,80););
loop(j,ur(j) = uniform(0.14,0.28););
loop(l,ur(l) = uniform(0.14,0.28););
loop(j,EV(j) = uniform(0.25,0.35););
loop(l,EV(l) = uniform(0.20,0.40););
loop(j,rd(j) = uniform(0.29,0.45););
loop(l,rd(l) = uniform(0.25,0.50););

variables
     Eff1           's'
     Eff2           's'
     Eff3           's'
     z1             's'
     z2             's'
     z3             's'
     z4             's'

positive variable
     Landa(i,tp)    's'
     X(i,j,tp)      's1'
     S(i,k,tp)      's1'
     U(j,k,tp)      's1'
     E(k,l,tp)      's1'
     Q(j,l,tp)      's1'
     V(i,l,tp)      's1'
     Ih(j,tp)       's'
     F1(l,o,tp)     's'
positive variable
sup(ff,i,tp);;
*Q.lo(j,l,tp)=2;
Binary Variables
     W(j_Union_l)
     Y(j_Union_l);
Equations
     Efficiency1
     Efficiency2
     Efficiency3
     Eq1
     Eq2
     Eq3
     Eq4
     Eq5(i,tp)
     Eq6(j)
     Eq7(i,tp)
     Eq8(j,tp)
     Eq9(k,tp)
     Eq10(i,tp)
     Eq11(l)
     Eq12(j,tp)
     Eq13(l)
     Eq14(k,tp)
     Eq15(l)
     Eq16(l,tp)
     Eq17(l,tp)
     Eq18(o,tp)
     Eq37
     Eq28
     EQ177
;

     Efficiency1..                    Eff1=e=z1+z2+z3+z4;
     Efficiency2..                    Eff2=e=sum(i,sum(tp,Ce_emf(i,tp)*Landa(i,tp)))+sum(i,sum(j,sum(tp,Ce_tpd(i,j,tp)*X(i,j,tp))))+sum(j,sum(k,sum(tp,Ce_tdc(j,k,tp)*U(j,k,tp))))+sum(i,sum(k,sum(tp,Ce_tpc(i,k,tp)*S(i,k,tp))))+sum(k,sum(l,sum(tp,Ce_tccp(k,l,tp)*E(k,l,tp))))+sum(j,sum(l,sum(tp,Ce_tdcp(j,l,tp)*Q(j,l,tp))))+sum(i,sum(l,sum(tp,Ce_tpcp(i,l,tp)*V(i,l,tp))))+sum(l,sum(o,sum(tp,Ce_tcpcpp(l,o,tp)*F1(l,o,tp))))+sum(o,sum(l,sum(tp,Ce_emfp(l,o,tp)*F1(l,o,tp))));
     Efficiency3..                    Eff3=e=sum(j,JO(j)*ur(j)*W(j))+sum(l,Jo(l)*ur(l)*Y(l))+sum(j,EV(j)*(1-rd(j))*W(j))+sum(l,EV(l)*(1-rd(l))*Y(l));

Eq1..z1=e=sum(j,f(j)*W(j))+sum(l,fp(l)*Y(l));
EQ177(i,tp) .. sum(ff,sup(ff,i,tp))=e=sum(j,x(i,j,tp))+sum(k,s(i,k,tp));

Eq2..z2=e=sum(i,sum(j,sum(tp,Cx(i,j)*X(i,j,tp))))+sum(j,sum(k,sum(tp,Cu(j,k)*U(j,k,tp))))+
sum(i,sum(k,sum(tp,Cs(i,k)*S(i,k,tp))))+sum(i,sum(l,sum(tp,Cv(i,l)*V(i,l,tp))))+
sum(j,sum(l,sum(tp,Cq(j,l)*Q(j,l,tp))))+sum(k,sum(l,sum(tp,Ce(k,l)*E(k,l,tp))))+
sum(l,sum(o,sum(tp,Cf(l,o)*F1(l,o,tp))));

Eq3.. z3=e=sum(j,sum(tp,Ch(tp)*Ih(j,tp)));

Eq4..z4=e=sum(i,sum(j,sum(tp,Cp(tp)*X(i,j,tp))))+
sum(l,sum(o,sum(tp,Cr(tp)*F1(l,o,tp))))+
sum(i,sum(tp,Landa(i,tp)*Cpp));

Eq5(i,tp)..Landa(i,tp)*(1-(Alpha(tp)))=e=sum(j,X(i,j,tp))+ sum(k,S(i,k,tp));

Eq6(j)..   sum(i,sum(tp,X(i,j,tp)))=l=M*W(j);

Eq7(i,tp)..Landa(i,tp)=l=Landa_c(i,tp);


Eq28(j,tp) .. Ih(j,tp-1)+sum(i,X(i,j,tp))=e= Ih(j,tp)+sum(k,U(j,k,tp))+sum(l,Q(j,l,tp));

Eq8(j,tp)..Ih(j,tp)=l=Landa_h(j,tp);

Eq9(k,tp)..sum(j,U(j,k,tp))+sum(i,S(i,k,tp))=l=d(k,tp);

Eq10(i,tp)..sum(l,V(i,l,tp))=l=(Alpha(tp))*Landa(i,tp);

Eq11(l)..sum(i,sum(tp,V(i,l,tp)))=l=M*Y(l);

Eq12(j,tp)..sum(l,Q(j,l,tp))=l=((Beta(tp))*Ih(j,tp-1));

Eq13(l)..sum(j,sum(tp,Q(j,l,tp)))=l=M*Y(l);

Eq14(k,tp)..sum(l,E(k,l,tp))=l=(Gama(tp))*d(k,tp);

Eq15(l)..sum(k,sum(tp,E(k,l,tp)))=l=M*Y(l);

Eq16(l,tp).. (sum(i,V(i,l,tp))+sum(j,Q(j,l,tp))+sum(k,E(k,l,tp)))*Phi=e=sum(o,F1(l,o,tp));

Eq17(l,tp)..sum(o,F1(l,o,tp))=l=r(l);

Eq18(o,tp)..                     sum(l,F1(l,o,tp))=l=dp(o,tp);

Eq37    ..(p*(sum((i,k,tp),s(i,k,tp))+sum((j,k,tp),u(j,k,tp)))/sum((k,tp),d(k,tp)))+((1-p)*sum((tp,l,o),f1(l,o,tp))/sum((o,tp),dp(o,tp)))=g=eta;

Model pro /all/

option optca=0;
option optcr=0;
*Solve pro min Eff1 using MIP;
*Solve pro2 min Eff2 using MIP;
*Solve pro3 max Eff3 using MIP;
*Display  Eff1.l,Eff2.l,Eff3.l,z1.l,z2.l,z3.l,z4.l,X.l,S.l,U.l,E.l,Q.l,V.l,Ih.l,Landa.l,W.l,Y.l,F1.l;

********************************************************************************
******************************LexAEC Method*************************************
********************************************************************************

Sets  OBJECTIVE 'set of objctives'  /obj1 , obj2 , obj3 /;

* All functions are minimized *

Variables
f_obj1
f_obj2
f_obj3
;

Equations
ObjFun1
ObjFun2
ObjFun3
;

*Preference of objectives
ObjFun1..        f_obj1=e=Eff1;
ObjFun2..        f_obj2=e=Eff2;
ObjFun3..        f_obj3=e=-Eff3;


Model MODM
/
pro
ObjFun1
ObjFun2
ObjFun3
/
;


*****Lexicografic method for determining Epsilon range


Parameter PayoffMat(OBJECTIVE,OBJECTIVE);


Solve MODM US MIP Min f_obj1;
PayoffMat('obj1','obj1')=f_obj1.l;

Solve MODM US MIP Min f_obj2;
PayoffMat('obj2','obj2')=f_obj2.l;

Solve MODM US MIP Min f_obj3;
PayoffMat('obj3','obj3')=f_obj3.l;

*

Equation
Optimality_objfun1
Optimality_objfun2
Optimality_objfun3
;

Optimality_objfun1..     f_obj1=e=PayoffMat('obj1','obj1');
Optimality_objfun2..     f_obj2=e=PayoffMat('obj2','obj2');
Optimality_objfun3..     f_obj3=e=PayoffMat('obj3','obj3');


** first row of the Payoff Matrix

Model    objfun1_objfun2
/
MODM
Optimality_objfun2
/
;

Option Reslim=400;
Solve objfun1_objfun2 US MIP Min f_obj1;
PayoffMat('obj1','obj2')=f_obj1.l;


Model    objfun1_objfun3
/
MODM
Optimality_objfun3
/
;
Solve objfun1_objfun3 US MIP Min f_obj1;
PayoffMat('obj1','obj3')=f_obj1.l;


** second row of the payoff matrix

Model    objfun2_objfun1
/
MODM
Optimality_objfun1
/
;

Solve objfun2_objfun1 US MIP Min f_obj2;
PayoffMat('obj2','obj1')=f_obj2.l;


Model    objfun2_objfun3
/
MODM
Optimality_objfun3
/
;
**not neccessary
PayoffMat('obj2','obj3')=PayoffMat('obj2','obj2');



** Third row of the payoff matrix


PayoffMat('obj3','obj1')=PayoffMat('obj3','obj3')/2;

PayoffMat('obj3','obj2')=PayoffMat('obj3','obj3');


********************************************************************************
Parameter
MinFunction(OBJECTIVE)
MaxFunction(OBJECTIVE)
RangFunction(OBJECTIVE)
;

MinFunction('obj1')=PayoffMat('obj1','obj1');
MinFunction('obj2')=PayoffMat('obj2','obj2');
MinFunction('obj3')=PayoffMat('obj3','obj3');

MaxFunction('obj1')=smax(objective,PayoffMat('obj1',objective));
MaxFunction('obj2')=smax(objective,PayoffMat('obj2',objective));
MaxFunction('obj3')=smax(objective,PayoffMat('obj3',objective));

RangFunction(OBJECTIVE)=MaxFunction(OBJECTIVE)-MinFunction(OBJECTIVE);


Display
PayoffMat
MinFunction
MaxFunction
RangFunction


*****AEC method******

Scalar
PHI2
PHI3
Epsilon2
Epsilon3
;

PHI2=1/100*RangFunction('obj1')/RangFunction('obj2');
PHI3=1/100*RangFunction('obj1')/RangFunction('obj3');


Positive Variables
Slack2
Slack3
;

Free Variable
Z_AEC
;

Equations
AEC_OBJ
AEC_Cons2
AEC_cons3
;

AEC_OBJ..        Z_AEC =e= f_obj1 - PHI2*Slack2 - PHI3*Slack3;
AEC_Cons2..      f_obj2 + Slack2 =e= Epsilon2;
AEC_Cons3..      f_obj3 + Slack3 =e= Epsilon3;

*********************Main Loop of AEC for Pareto Front********************

Sets
Partion     /1*20/
;


Model AEC
/
MODM
AEC_OBJ
AEC_Cons2
AEC_cons3
/

Option Reslim=300;

Parameter Result(Partion,*);


execseed = 1000*(frac(jnow));
Loop(Partion,

Epsilon2=(MinFunction('obj2')+MaxFunction('obj2'))/2  + RangFunction('obj2')*uniform(-1,.8)/2;
Epsilon3=(MinFunction('obj3')+MaxFunction('obj3'))/2  + RangFunction('obj3')*uniform(-1,.8)/2;

option mip=cplex;
option optcr=0;
option reslim=7200;
option iterlim=1100;
Solve AEC US MIP Min Z_AEC;

if ( AEC.ModelStat <> 4 and AEC.ModelStat <> 19,

Display  AEC.resusd,Eff1.l,Eff2.l,Eff3.l,z1.l,z2.l,z3.l,z4.l,sup.l,X.l,S.l,U.l,E.l,Q.l,V.l,Ih.l,Landa.l,W.l,Y.l,F1.l
Eq4.m
     Eq5.m
     Eq6.m
     Eq7.m
     Eq8.m
     Eq9.m
     Eq10.m
     Eq11.m
     Eq12.m
     Eq13.m
     Eq14.m
     Eq15.m
     Eq16.m
     Eq17.m
     Eq18.m
     Eq37.m
     Eq28.m
     EQ177.m;

Result(Partion,'Epsilon2')=Epsilon2;
Result(Partion,'Epsilon3')=-Epsilon3;
Result(Partion,'Obj1')=f_obj1.l;
Result(Partion,'Obj2')=f_obj2.l;
Result(Partion,'Obj3')=-f_obj3.l;

);

);

Display   Result;

display
f
fp
Landa_h
Landa_r
d
Landa_c
dp
Ce_emf
Ce_tpd
Ce_tccp
Ce_tdc
Ce_tpc
Ce_tdcp
Ce_tpcp
Ce_tcpcpp
Ce_emfp
JO
ur
EV
rd





























