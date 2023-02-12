import sqlite3
import os

db = 'learn'+'.db'
con = sqlite3.connect(db)
cur = con.cursor()
    

def create_table():

    statusList =[(1,'ToDo'), (2,'Inprogress'), (3,'Done')] 

    createTasksTableComand = """CREATE TABLE IF NOT EXISTS tasks (
        id         INTEGER,
        task_name TEXT,
        create_date  TEXT,
        deadline      TEXT,
        PRIMARY KEY (id)
        )"""

    createStatusTableComand = """CREATE TABLE IF NOT EXISTS status (
        id         INTEGER,
        status     TEXT,
        PRIMARY KEY (id)
        )"""

    feedStatusTableComand = """INSERT INTO status
    VALUES(?,?)"""

    showAllStatusComand = """SELECT * FROM status"""

    cur.execute(createTasksTableComand)
    con.commit()
    cur.execute(createStatusTableComand)
    con.commit()

    res = cur.execute(showAllStatusComand)
    if len(res.fetchall()) == 0:
        cur.executemany(feedStatusTableComand, statusList)
        con.commit()

def add_data():
    addDataComand = """INSERT INTO tasks (task_name, create_date, deadline)
    VALUES ('test', '1111', '2222')"""
    cur.execute(addDataComand)
    con.commit()

def show_all_task():
    showAllTaskComand = """SELECT * FROM tasks"""
    showAllStatusComand = """SELECT * FROM status"""
    print("Table: tasks")
    for task in cur.execute(showAllTaskComand):
        print(task)

    print("Table: status")
    for status in cur.execute(showAllStatusComand):
        print(status)

def delete_database():
    con.close()
    if os.path.exists(db):
        os.remove(db)
