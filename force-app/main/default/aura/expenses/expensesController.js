({
    clickCreate: function(component, event, helper) {
        var validExpense = component.find('expenseform').reduce(function (validSoFar, inputCmp) {
            // Displays error messages for invalid fields
            inputCmp.showHelpMessageIfInvalid();
            return validSoFar && inputCmp.get('v.validity').valid;
        }, true);
        // If we pass error checking, do some real work
        if(validExpense){
            // Create the new expense
            var newExpense = component.get("v.newExpense");
            console.log("Create expense: " + JSON.stringify(newExpense));
            helper.createExpense(component, newExpense);
        
            console.log("Expenses before 'create': " + JSON.stringify(theExpenses));
theExpenses.push(newExpense);
component.set("v.expenses", theExpenses);
console.log("Expenses after 'create': " + JSON.stringify(theExpenses));
        }
    }
})