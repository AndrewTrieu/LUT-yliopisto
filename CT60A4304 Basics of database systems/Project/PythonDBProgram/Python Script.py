try:
    from prettytable import PrettyTable
except ImportError:
    auth = input(
        'This Python script requires PrettyTable library. Please press ENTER.')
    import os
    os.system('pip install prettytable')
    from prettytable import PrettyTable
try:
    from bokeh.io import output_file, show
    from bokeh.plotting import figure
    from bokeh.models import ColumnDataSource
except ImportError:
    import os
    os.system('pip install bokeh')
    from bokeh.io import output_file, show
    from bokeh.plotting import figure
    from bokeh.models import ColumnDataSource
import sys
import sqlite3
try:
    sql = sqlite3.connect(
        r"Project.db")
except:
    print("\nDatabase not found!")
cursor = sql.cursor()


def back():
    input('\nPress ENTER to return to main menu...')
    main()


def header():
    num_fields = len(cursor.description)
    field_names = [i[0] for i in cursor.description]
    return field_names


def showTables():
    tablelist = []
    cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
    maintable = PrettyTable(["Option", "Number"])
    tablenames = cursor.fetchall()
    for i in range(len(tablenames)):
        a = [x.replace('(', "").replace(')', "").replace("'", "")
             for x in tablenames[i]]
        tablelist.append(str(a[0]))
        maintable.add_row([a[0], i+1])
    print(maintable)
    return tablelist


# First query - View table


def viewTable():
    try:
        tablelist = showTables()
        choiceTable = int(input("Select table to view: "))
        cursor.execute("SELECT * FROM %s" % (tablelist[choiceTable-1]))
        table = PrettyTable(header())
        values = cursor.fetchall()
        for i in values:
            a = [x.replace('(', "").replace(')', "").replace("'", "")
                 for x in str(i).split(',')]
            table.add_row(a)
        print(table)
    except Exception as e:
        print('\n'+str(e).capitalize())
    back()


# Second query - Insert row


def insertRow():
    try:
        insert = []
        tablelist = showTables()
        choiceTable = int(input("Select table to insert values: "))
        cursor.execute("SELECT * FROM %s" % (tablelist[choiceTable-1]))
        scriptmain = "INSERT INTO %s VALUES " % tablelist[choiceTable-1]
        multi = len(header())-1
        scriptmain = scriptmain + '('+'%s'+',%s'*multi+')'
        for i in header():
            inp = input(i + " = ")
            if inp.isnumeric() == True:
                inp = int(inp)
            else:
                inp = "'"+inp+"'"
            insert.append(inp)
        insert = tuple(insert)
        cursor.execute(scriptmain % (insert))
        sql.commit()
    except Exception as e:
        print('\n'+str(e).capitalize())
        sql.rollback()
    back()


# Third query - Delete row


def deleteRow():
    try:
        tablelist = showTables()
        choiceTable = int(input("Select table to delete values: "))
        cursor.execute("SELECT * FROM %s" % (tablelist[choiceTable-1]))
        scriptmain = "DELETE FROM %s WHERE" % (tablelist[choiceTable-1])
        table = PrettyTable(["Option", "Number"])
        count = 1
        for i in header():
            table.add_row([i, count])
            count += 1
        print(table)
        choiceColumn = int(input("Select column to delete values: "))
        column = header()[choiceColumn-1]
        choiceField = input(column + " = ")
        if choiceField.isnumeric() == True:
            choiceField = int(choiceField)
        else:
            choiceField = "'"+choiceField+"'"
        scriptmain = scriptmain + ' %s = %s'
        cursor.execute(scriptmain % (column, choiceField))
        sql.commit()
    except Exception as e:
        print('\n'+str(e).capitalize())
        sql.rollback()
    back()


# Fourth query - Update row


def updateRow():
    try:
        tablelist = showTables()
        choiceTable = int(input("Select table to update values: "))
        cursor.execute("SELECT * FROM %s" % (tablelist[choiceTable-1]))
        scriptmain = "UPDATE " + (tablelist[choiceTable-1]) + " SET %s WHERE "
        table = PrettyTable(["Option", "Number"])
        count = 1
        for i in header():
            table.add_row([i, count])
            count += 1
        print(table)
        choiceColumn = int(input("Select condition column: "))
        column = header()[choiceColumn-1]
        contentColumn = input(column + " = ")
        if contentColumn.isnumeric() == True:
            column = column + " = " + str(contentColumn)
        else:
            column = column + " = " + "'"+contentColumn + "'"
        scriptmain = scriptmain + column
        upd = ''
        while True:
            choiceField = int(input("Select column to be updated: "))
            field = header()[choiceField-1]
            contentField = input(field + " = ")
            if contentField.isnumeric() == True:
                field = field + " = " + str(contentField)
            else:
                field = field + " = " + "'"+contentField + "'"
            upd = upd+", "+field
            con = input(
                'Do you want to add another one to be updated? (y for yes, any other key for no) ')
            if con == 'y':
                continue
            else:
                break
        upd = upd[2:]
        cursor.execute(scriptmain % upd)
        sql.commit()
    except Exception as e:
        print('\n'+str(e).capitalize())
        sql.rollback()
    back()


# Fifth query - Bokeh visualization


def bokeh():
    try:
        lst = []
        cursor.execute(
            "SELECT Item.Name as Item from Shipment INNER JOIN Item on Shipment.ItemID=Item.ItemID ")
        items = cursor.fetchall()
        for i in items:
            i = str(i).replace('(', '').replace(')', '').replace(
                "'", "").replace(",", "")
            lst.append(i)
        order = [i for n, i in enumerate(lst) if i not in lst[:n]]
        dct = {}
        for i in order:
            dct[i] = lst.count(i)
        x = list(dct.keys())
        y = list(dct.values())
        sorted_x = sorted(x, key=lambda a: y[x.index(a)], reverse=True)
        source = ColumnDataSource(data=dict(x=x, y=y))
        p = figure(x_range=sorted_x, y_range=(0, 9), title="Counts",
                   toolbar_location=None, tools="", width=700, height=300, sizing_mode='scale_width')
        p.vbar(x='x', top='y', width=0.9, legend_field='x', source=source)
        p.xgrid.grid_line_color = None
        p.legend.visible = False
        output_file('BokehChart.html')
        show(p)
        back()
    except Exception as e:
        print('\n'+str(e).capitalize())
    back()

# Sixth query - Many-to-many relation: 2 JOIN clauses


def itemCustomer():
    try:
        cursor.execute('SELECT Customer.Name as Customer, group_concat(Item.Name, ", ") as Item from Shipment INNER JOIN Customer on Shipment.CustomerID=Customer.CustomerID INNER JOIN Item on Item.ItemID=Shipment.ItemID GROUP BY Customer;')
        table = PrettyTable(header())
        final = cursor.fetchall()
        for i in final:
            table.add_row(list(i))
        print(table)
    except Exception as e:
        print('\n'+str(e).capitalize())
    back()


def main():
    table = PrettyTable(["Option", "Number"])
    table.add_row(['View Table', 1])
    table.add_row(['Insert Row', 2])
    table.add_row(['Delete Row', 3])
    table.add_row(['Update Row', 4])
    table.add_row(['Chart: Number of times each item was ordered', 5])
    table.add_row(['List items each customer has ordered', 6])
    table.add_row(['Quit', 7])
    print(table)
    option = input("Select option: ")
    if option == '1':
        viewTable()
    elif option == '2':
        insertRow()
    elif option == '3':
        deleteRow()
    elif option == '4':
        updateRow()
    elif option == '5':
        bokeh()
    elif option == '6':
        itemCustomer()
    elif option == '7':
        sql.close()
        print("Thank you for using!")
        sys.exit()
    else:
        print("\nUnknown option.")
        back()


if __name__ == '__main__':
    main()
