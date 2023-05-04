@isTest
public class AnimalLocatorTest {
	@isTest 
    static void animalLocatorMock(){
        try{
            test.setMock(httpCalloutMock.class, new AnimalLocatorMock());
            string result = AnimalLocator.getAnimalNameById(1);
            string expectedResult = 'fox';
            System.assertEquals(result, expectedResult);
        }catch(exception e){
            system.debug('error' + e);
        }
    } 
}