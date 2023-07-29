# melakukan import mysql connector
import mysql.connector

# melakukan percobaan koneksi
conn = mysql.connector.Connect(
    user='root',
    password='password',
    host='localhost',
    database='kalbe_db'
)
# membuat object cursor sebagai penanda
cursor = conn.cursor()

# deklarasi SQL Query untuk memasukan record ke DB (KARYAWAN)
insert_sql = (
    'INSERT INTO KARYAWAN (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)' 
    'VALUES (%s, %s, %s, %s, %s)'
)
values = ('John', 'Doe', 25, 'M', 5000)
try:
    # eksekusi SQL Command
    cursor.execute(insert_sql, values)

    # melakukan perubahan (commit)pada DB
    cursor.execute('select * from karyawan')
    conn.commit()

except:
    # roll back apabila ada issue
    conn.rollback()

#menutup koneksi
conn.close()