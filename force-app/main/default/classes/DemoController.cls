public with sharing class DemoController {
    /**
     * Test comment 
     *An empty constructor for the testing - test update - test update 2 - test update 3 - test update 4 - test update 5 - test update 6
     * New Comment 
     * New Comment2
     * New Comment3
     * New Comment 4
     * New Comment 5
     */
    public DemoController() {}

    /**
     * Set the contact for the page using the lastName parameter, if there is one
     */
    public DemoController(ApexPages.ApexPages.StandardController controller) {
        // Get the last name from the url
        String lastName = ApexPages.currentPage().getParameters().get('lastName');

        if (lastName != null) {
            // Query the object
            Contact theContact = [SELECT ID FROM Contact WHERE LastName = :lastName LIMIT 1];

            // this will set the Id, so now you can use the standard controller and just reference fields on the page
            ApexPages.currentPage().getParameters().put('id', theContact.Id);
        }
    }

    /**
     * Get the version of the SFDX demo app
     */
    public String getAppVersion() {
        return '1.0.0';
    }
}
