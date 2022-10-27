@isTest
private class CaseEscalationTest {

    private static testMethod void testInCutOff(){

        List<Case> testCases = new List<Case>();

        for(Integer i = 0; i < 10; i++)
            testCases.add(new Case(Status='Open'));

        insert testCases;

        Test.startTest();

        CaseEscalation ce = new CaseEscalation(system.today().addDays(1));
        database.executeBatch(ce, 10);

        Test.stopTest();

        testCases = [SELECT Id FROM Case WHERE Status = 'Open'];

        system.assertEquals(10, testCases.size());

    }

    private static testMethod void testOUtOfCutOff(){

        List<Case> testCases = new List<Case>();

        for(Integer i = 0; i < 10; i++)
            testCases.add(new Case(Status='Open'));

        insert testCases;

        Test.startTest();

        CaseEscalation ce = new CaseEscalation(system.today());
        database.executeBatch(ce, 10);

        Test.stopTest();

        testCases = [SELECT Id FROM Case WHERE Status = 'Open'];

        system.assertEquals(10, testCases.size());

    }

}