
(function($,Edge,compId){var Composition=Edge.Composition,Symbol=Edge.Symbol;
//Edge symbol: 'stage'
(function(symbolName){Symbol.bindTriggerAction(compId,symbolName,"Default Timeline",0,function(sym,e){sym.stop();});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle}","click",function(sym,e){sym.play("TheBrief");});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle}","mouseover",function(sym,e){$(this.lookupSelector("Rectangle")).css('cursor','pointer');});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle2}","click",function(sym,e){sym.play("TheBriefReverse");});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle2}","mouseover",function(sym,e){$(this.lookupSelector("Rectangle2")).css('cursor','pointer');});
//Edge binding end
Symbol.bindTriggerAction(compId,symbolName,"Default Timeline",1000,function(sym,e){sym.stop();});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle3}","click",function(sym,e){sym.play("TheSolution");});
//Edge binding end
Symbol.bindTriggerAction(compId,symbolName,"Default Timeline",1750,function(sym,e){sym.play(0);});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle3}","mouseover",function(sym,e){$(this.lookupSelector("Rectangle3")).css('cursor','pointer');});
//Edge binding end
Symbol.bindTriggerAction(compId,symbolName,"Default Timeline",2500,function(sym,e){sym.stop();});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle4}","click",function(sym,e){sym.play("TheSolutionReverse");});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle4}","mouseover",function(sym,e){$(this.lookupSelector("Rectangle4")).css('cursor','pointer');});
//Edge binding end
Symbol.bindTriggerAction(compId,symbolName,"Default Timeline",3250,function(sym,e){sym.play(0);});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle5}","click",function(sym,e){sym.play("TheBenefits");});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle5}","mouseover",function(sym,e){$(this.lookupSelector("Rectangle5")).css('cursor','pointer');});
//Edge binding end
Symbol.bindTriggerAction(compId,symbolName,"Default Timeline",4000,function(sym,e){sym.stop();});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle6}","click",function(sym,e){sym.play("TheBenefitsReverse");});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle6}","mouseover",function(sym,e){$(this.lookupSelector("Rectangle6")).css('cursor','pointer');});
//Edge binding end
Symbol.bindTriggerAction(compId,symbolName,"Default Timeline",4750,function(sym,e){sym.play(0);});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle7}","click",function(sym,e){sym.play("TheConclusion");});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle7}","mouseover",function(sym,e){$(this.lookupSelector("Rectangle7")).css('cursor','pointer');});
//Edge binding end
Symbol.bindTriggerAction(compId,symbolName,"Default Timeline",5500,function(sym,e){sym.stop();});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle8}","click",function(sym,e){sym.play("TheConclusionReverse");});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle8}","mouseover",function(sym,e){$(this.lookupSelector("Rectangle8")).css('cursor','pointer');});
//Edge binding end
Symbol.bindTriggerAction(compId,symbolName,"Default Timeline",6250,function(sym,e){sym.play(0);});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle9}","click",function(sym,e){window.open("http://twitter.com/#!/aps_group","_blank");});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle9}","mouseover",function(sym,e){$(this.lookupSelector("Rectangle9")).css('cursor','pointer');});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle10}","click",function(sym,e){window.open("http://www.linkedin.com/company/aps-group","_blank");});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle10}","mouseover",function(sym,e){$(this.lookupSelector("Rectangle10")).css('cursor','pointer');});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle11}","click",function(sym,e){window.open("http://www.apsgroup.co.uk","_blank");});
//Edge binding end
Symbol.bindElementAction(compId,symbolName,"${_Rectangle11}","mouseover",function(sym,e){$(this.lookupSelector("Rectangle11")).css('cursor','pointer');});
//Edge binding end
})("stage");
//Edge symbol end:'stage'
})(jQuery,AdobeEdge,"EDGE-29300940");