trigger ItemLineTrigger on Line_Item__c (after insert) {
    if (Trigger.isAfter && Trigger.isInsert){
        LineItemTriggerHandle.insertProductLineItem(Trigger.new);
    }
}