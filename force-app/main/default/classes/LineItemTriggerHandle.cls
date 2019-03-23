public class LineItemTriggerHandle {
    
    public static void insertProductLineItem(List<Line_Item__c> items){
    	Product_Line_Item__c pli = new Product_Line_Item__c();
        for(Line_Item__c li: items){
            pli.Description__c = li.Description__c;
            pli.Type__c = li.Type__c;
            pli.Test_academy__c = li.Id;
        }
        try{
        insert pli;
        }
        catch(Exception ex){
            System.debug(ex);
        }
    }
   
}