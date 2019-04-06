@istest
private class ItemLineTriggerTest {
	@istest
    private static void ItemLineTriggerTest(){
        Line_Item__c li = new Line_Item__c(Description__c = 'Descrition test', Type__c = 'Small');
        Test.startTest();
        insert li;
        Test.stopTest();
        Product_Line_Item__c pli =[select id, Description__c, Type__c from Product_Line_Item__c where Test_academy__c =:li.Id];
    	System.assertEquals(pli.Description__c, li.Description__c, 'son iguales');
    }
}