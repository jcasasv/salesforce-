({
	 packItem: function(component, event, helper){
    		
    		component.set("v.itemPacked__c",true);
    		event.getSource().set("v.disabled",true);
		
	}
    
})