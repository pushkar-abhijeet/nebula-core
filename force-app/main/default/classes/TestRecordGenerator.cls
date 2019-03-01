/**
 * @author aidan@nebulaconsulting.co.uk
 * @date 2019-03-01
 */

public inherited sharing abstract class TestRecordGenerator {

    public TestRecords parentTestRecords;

    public abstract SObject getObjectNoInsert(Map<String, Object> params);

    private SObject record;

    public virtual SObject getObjectWithInsert(Map<String, Object> params) {
        if(record == null) {
            record = getObjectNoInsert(params);
            insert record;
        }
        return record;
    }
}