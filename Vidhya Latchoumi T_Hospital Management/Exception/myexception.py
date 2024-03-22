
class PatientNumberNotFoundException(Exception):
    pass
def find_patient_by_number(patientId):
    import pyodbc
    try:
        conn = pyodbc.connect('Driver={SQL Server};'
                      'Server=DESKTOP-KOST9TH\SQLEXPRESS01;'
                      'Database=hospital;'
                      'Trusted_Connection=yes;')
        print("Connected Successfully")
    except:
        print("Connection failed")
    c=conn.cursor()
    sql_query="select * from Patient"
    database=c.execute(sql_query)
    patient = database.get(patientId)
    if not patient:
        raise PatientNumberNotFoundException("Patient with ID {} not found in the database.".format(patientId))
    return patient