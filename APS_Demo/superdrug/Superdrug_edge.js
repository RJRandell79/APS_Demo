
(function($,Edge,compId){var _=null,y=true,n=false,t='transform',x7='rgba(255,255,255,0.00)',e9='${_APS_Case_Studies_button_plus3}',x3='rgba(0,0,0,0)',e23='${_Minus_Button_2}',e19='${_Rectangle2}',g='image',e37='${_Conclusion_Reverse}',e36='${_Rectangle6}',e35='${_Rectangle5}',b='block',e26='${_Rectangle4}',e34='${_Minus_Button_1}',e28='${_Rectangle7}',e29='${_Brief_Reverse}',x2='0.10.0.134',qoq='easeOutQuad',e33='${_Rectangle3}',e32='${_BenefitsReverse}',x16='hidden',a='Base State',e30='${_Conclusion}',m='rect',x5='rgba(255,255,255,1.00)',e13='${_APS_Case_Studies_button_plus3Copy3}',e11='${_APS_Case_Studies_button_plus3Copy}',h='height',i='none',x1='0.1.6',ty='translateY',e25='${_Solution}',e20='${_Minus_Button_4}',p='px',tx='translateX',e24='${_Solution_Reverse}',e22='${_Benefits}',e21='${_Brief}',e18='${_Rectangle9}',o='opacity',qis='easeInSine',d='display',e38='${_Rectangle}',s='style',e27='${_Rectangle8}',bg='background-color',e15='${_Stage}',c='color',e14='${_APS_Case_Studies_button_plus3Copy2}',e31='${_Minus_Button_3}',e12='${_Twitter_LinkedIn}',x6='rgba(255,255,255,1)',e10='${_Rectangle10}',w='width',ql='linear',ov='overflow',xc='rgba(0,0,0,1)',e17='${_Rectangle11}',x8='stage',dt='Default Timeline';var im='images/';var g4='Twitter_LinkedIn.png';var fonts={};var P=Edge.P,T=Edge.T,A=Edge.A;var resources=[];var symbols={"stage":{v:x1,b:x2,bS:a,iS:a,gpu:y,cn:{dom:[{id:'volvo_ipad_1_images',t:g,r:[0,0,1024,724],f:[x3,'superdrug_assets/superdrug_ipad_1_images-01.png']},{id:'APS_Case_Studies_for_export_Page',t:g,r:[0,0,1024,768],f:[x3,'superdrug_assets/superdrug_ipad_1.svg'],tf:[]},{id:'APS_Case_Studies_button_plus3',t:g,r:[0,0,45,45],o:1,f:[x3,'superdrug_assets/superdrug_plus.svg'],tf:[[21,124]]},{id:'APS_Case_Studies_button_plus3Copy',t:g,r:[0,0,45,45],o:1,f:[x3,'superdrug_assets/superdrug_plus.svg'],tf:[[21,185]]},{id:'APS_Case_Studies_button_plus3Copy2',t:g,r:[0,0,45,45],o:1,f:[x3,'superdrug_assets/superdrug_plus.svg'],tf:[[21,245]]},{id:'APS_Case_Studies_button_plus3Copy3',t:g,r:[0,0,45,45],o:1,f:[x3,'superdrug_assets/superdrug_plus.svg'],tf:[[21,304]]},{id:'Twitter_LinkedIn',t:g,r:[0,0,73,39],f:[x3,im+g4],tf:[[141,404]]},{id:'Brief',t:g,r:[0,0,1134,567],o:1,f:[x3,'superdrug_assets/superdrug_ipad_2.svg'],tf:[[594,100]]},{id:'Brief_Reverse',v:i,t:g,r:[0,0,1134,567],o:1,f:[x3,'superdrug_assets/superdrug_ipad_2.svg'],tf:[[594,100]]},{id:'Solution',v:i,t:g,r:[0,0,1134,567],f:[x3,'superdrug_assets/superdrug_ipad_3.svg'],tf:[]},{id:'Solution_Reverse',v:i,t:g,r:[0,0,1134,567],f:[x3,'superdrug_assets/superdrug_ipad_3.svg'],tf:[[594]]},{id:'Benefits',v:i,t:g,r:[0,0,1134,567],f:[x3,'superdrug_assets/superdrug_ipad_4.svg'],tf:[[-51,101]]},{id:'BenefitsReverse',v:i,t:g,r:[0,0,1134,567],f:[x3,'superdrug_assets/superdrug_ipad_4.svg'],tf:[[-51,101]]},{id:'Conclusion',v:i,t:g,r:[0,0,1134,567],f:[x3,'superdrug_assets/superdrug_ipad_5.svg']},{id:'Conclusion_Reverse',v:i,t:g,r:[0,0,1134,567],f:[x3,'superdrug_assets/superdrug_ipad_5.svg']},{id:'Minus_Button_1',t:g,r:[0,0,45,45],f:[x3,'superdrug_assets/superdrug_minus.svg']},{id:'Minus_Button_2',t:g,r:[0,0,45,45],f:[x3,'superdrug_assets/superdrug_minus.svg']},{id:'Minus_Button_3',t:g,r:[0,0,45,45],f:[x3,'superdrug_assets/superdrug_minus.svg']},{id:'Minus_Button_4',t:g,r:[0,0,45,45],f:[x3,'superdrug_assets/superdrug_minus.svg']},{id:'Rectangle',t:m,r:[28,132,138,36],f:[x5],s:[0,xc,i],tf:[[-2,-2]]},{id:'Rectangle2',v:i,t:m,r:[141,544,138,34],f:[x5],s:[0,"rgb(0, 0, 0)",i],tf:[[-114,-413]]},{id:'Rectangle3',t:m,r:[27,193,276,35],f:[x6],s:[0,"rgb(0, 0, 0)",i],tf:[[0,-3]]},{id:'Rectangle4',v:i,t:m,r:[22,190,279,39],f:[x6],s:[0,"rgb(0, 0, 0)",i],tf:[[2,-1]]},{id:'Rectangle5',t:m,r:[25,250,176,39],f:[x6],s:[0,"rgb(0, 0, 0)",i],tf:[[-1,-2]]},{id:'Rectangle6',v:i,t:m,r:[22,245,175,39],f:[x6],s:[0,"rgb(0, 0, 0)",i],tf:[[2,3]]},{id:'Rectangle7',t:m,r:[26,248,197,39],f:[x5],s:[0,xc,i],tf:[[-1,61]]},{id:'Rectangle8',v:i,t:m,r:[26,310,193,40],f:[x6],s:[0,"rgb(0, 0, 0)",i],tf:[[-2,-2]]},{id:'Rectangle9',t:m,r:[142,408,32,33],f:[x7],s:[0,xc,i]},{id:'Rectangle10',t:m,r:[178,408,33,32],f:[x7],s:[0,"rgb(0, 0, 0)",i],tf:[]},{id:'Rectangle11',t:m,r:[27,448,191,29],f:[x6],s:[0,"rgb(0, 0, 0)",i],tf:[[-4,-2]]}],sI:[]},s:{},tl:{"Default Timeline":{fS:a,tS:"",d:6250,a:y,l:{"TheBrief":500,"TheBriefReverse":1250,"TheSolution":2000,"TheSolutionReverse":2750,"TheBenefits":3500,"TheBenefitsReverse":4250,"TheConclusion":5000,"TheConclusionReverse":5750},tt:[]}}}};var S1=symbols[x8];var tl0=S1.tl[dt].tt,st1=S1.s[a]={},A1=A(_,tl0,st1);A1.A(e9).P(o,1,_,_,"").P(ty,124.99,t,_,p).P(tx,21.64,t);A1.A(e10).P(bg,x7,c).P(o,0,_,_,"").P(ty,0.99,t,_,p).P(tx,0.99,t);A1.A(e11).P(o,1,_,_,"").P(ty,185.32,t,_,p).P(tx,21.64,t);A1.A(e12).P(tx,141.28,t,_,p).P(ty,404.13,t);A1.A(e13).P(o,1,_,_,"").P(ty,304.97,t,_,p).P(tx,21.64,t);A1.A(e14).P(o,1,_,_,"").P(ty,245.31,t,_,p).P(tx,21.64,t);A1.A(e15).P(bg,x5,c).P(w,1024).P(h,704).P(ov,x16);A1.A(e17).P(tx,-4,t).P(h,29).P(o,0,_,_,"").P(ty,-2.57,t,_,p).P(w,191);A1.A(e18).P(bg,x7,c).P(o,0,_,_,"");A1.A(e19).P(bg,x5,c).P(tx,-114.45,t,_,p).P(h,34).P(o,0,_,_,"").P(ty,-413.02,t,_,p).P(w,138).P(d,i).T(0.5,b).T(1.75,i);A1.A(e20).P(o,0,_,_,"").T(5,1).T(6.25,0).P(tx,21.5,t,_,p).T(5,21.5).P(ty,304.97,t).T(6.25,304.97);A1.A(e21).P(o,1,_,_,"").P(d,b).T(1.25,i).P(tx,648,t,_,p).T(0.5,2.99,0.5,qoq).P(ty,100.52,t).T(0.5,100.52);A1.A(e22).P(ty,101,t).P(d,i).T(3.5,b).T(4.038,i).P(tx,648,t).T(3.5,3,0.5,qoq);A1.A(e23).P(o,0,_,_,"").T(2,1).T(3.25,0).P(ty,185.32,t,_,p).T(2,185.32).P(tx,21.5,t).T(2,21.5);A1.A(e24).P(ty,101,t,_,p).P(tx,3,t).T(2.75,648,0.5,qis).P(d,i).T(2.75,b).T(3.25,i);A1.A(e25).P(ty,101,t).P(d,i).T(2,b).T(2.5,b).T(2.531,i).T(4.75,i).P(tx,648,t).T(2,3,0.5,qoq);A1.A(e26).P(tx,2.66,t).P(h,39).P(o,0,_,_,"").P(ty,-1.34,t,_,p).P(w,279).P(d,i).T(2,b).T(3.25,i);A1.A(e27).P(tx,-2,t).P(h,40).P(o,0,_,_,"").P(ty,-2.03,t,_,p).P(w,193).P(d,i).T(5,b).T(6.25,i);A1.A(e28).P(bg,x5,c).P(tx,-1.43,t).P(h,39).P(o,0,_,_,"").P(ty,61.62,t,_,p).P(w,197).P(d,b).T(5,i).T(6.25,b);A1.A(e29).P(o,1,_,_,"").P(d,i).T(1.25,b).T(1.75,i).P(tx,2.99,t,_,p).T(1.25,648,0.5,qis).P(ty,100.52,t).T(1.25,100.52);A1.A(e30).P(d,i).T(5,b).T(5.549,i).P(tx,648,t).T(5,3,0.5,qoq).P(ty,101,t).T(5,101);A1.A(e31).P(ty,245.3,t).P(tx,21.5,t).T(3.5,21.5).P(o,0,_,_,"").T(0,0).T(3.5,1).T(4.75,0);A1.A(e32).P(ty,101,t).P(d,i).T(4.25,b).T(4.75,i).P(tx,3,t).T(4.25,648,0.5,qis);A1.A(e33).P(tx,-0.01,t).P(h,35).P(o,0,_,_,"").P(ty,-3,t,_,p).P(w,276).P(d,b).T(2,i).T(3.25,b);A1.A(e34).P(o,0,_,_,"").T(0.5,1).T(1.75,0).P(ty,125,t,_,p).T(0.5,125).P(tx,21.5,t).T(0.5,21.5);A1.A(e35).P(tx,-1,t).P(h,39).P(o,0,_,_,"").P(ty,-2.07,t,_,p).P(w,176).P(d,b).T(3.5,i).T(4.75,b);A1.A(e36).P(tx,2,t).P(h,39).P(o,0,_,_,"").P(ty,3.99,t,_,p).P(w,175).P(d,i).T(3.5,b).T(4.75,i);A1.A(e37).P(d,i).T(5.75,b).T(6.25,b).P(tx,3,t).T(5.75,648,0.5,qis).P(ty,101,t).T(5.75,101);A1.A(e38).P(bg,x5,c).P(tx,-2.37,t,_,p).P(h,36).P(o,0,_,_,"").P(ty,-2.4,t,_,p).P(w,138).P(d,b).T(0.5,i).T(1.75,b);Edge.registerCompositionDefn(compId,symbols,fonts,resources);$(window).ready(function(){Edge.launchComposition(compId);});})(jQuery,AdobeEdge,"EDGE-29300940");