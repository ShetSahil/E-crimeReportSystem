# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'login.ui'
#
# Created by: PyQt5 UI code generator 5.15.6
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QMessageBox
import res,sys
import mysql.connector

class Ui_Dialog(object):
    pushButton_submitsignal = QtCore.pyqtSignal()
    pushButton_submitsignal2 = QtCore.pyqtSignal()

        
        
    
    def setupUi(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.resize(605, 429)
        self.widget = QtWidgets.QWidget(Dialog)
        self.widget.setGeometry(QtCore.QRect(19, 19, 571, 451))
        self.widget.setObjectName("widget")
        self.label = QtWidgets.QLabel(self.widget)
        self.label.setGeometry(QtCore.QRect(0, 0, 571, 391))
        self.label.setStyleSheet("background-image: url(:/images/image.jpg);\n"
"border-radius: 25px;")
        self.label.setText("")
        self.label.setObjectName("label")
        self.label_2 = QtWidgets.QLabel(self.widget)
        self.label_2.setGeometry(QtCore.QRect(240, 50, 91, 31))
        font = QtGui.QFont()
        font.setPointSize(15)
        font.setBold(True)
        font.setWeight(75)
        self.label_2.setFont(font)
        self.label_2.setStyleSheet("background-color:#008fc8;")
        self.label_2.setObjectName("label_2")
        self.lineEdit = QtWidgets.QLineEdit(self.widget)
        self.lineEdit.setGeometry(QtCore.QRect(160, 110, 261, 31))
        font = QtGui.QFont()
        font.setPointSize(9)
        self.lineEdit.setFont(font)
        self.lineEdit.setStyleSheet("border-radius:15px;\n"
"border:2px solid black")
        self.lineEdit.setObjectName("lineEdit")
        self.lineEdit_2 = QtWidgets.QLineEdit(self.widget)
        self.lineEdit_2.setGeometry(QtCore.QRect(160, 170, 261, 31))
        font = QtGui.QFont()
        font.setPointSize(9)
        self.lineEdit_2.setFont(font)
        self.lineEdit_2.setStyleSheet("border-radius:15px;\n"
"border:2px solid black")
        self.lineEdit_2.setEchoMode(QtWidgets.QLineEdit.Password)
        self.lineEdit_2.setObjectName("lineEdit_2")
        self.radioButton = QtWidgets.QRadioButton(self.widget)
        self.radioButton.setChecked(True)
        self.radioButton.setGeometry(QtCore.QRect(190, 230, 95, 20))
        font = QtGui.QFont()
        font.setPointSize(9)
        self.radioButton.setFont(font)
        self.radioButton.setObjectName("radioButton")
        self.radioButton_2 = QtWidgets.QRadioButton(self.widget)
        self.radioButton_2.setGeometry(QtCore.QRect(280, 230, 95, 20))
        
        font = QtGui.QFont()
        font.setPointSize(9)
        self.radioButton_2.setFont(font)
        self.radioButton_2.setObjectName("radioButton_2")
        self.pushButton = QtWidgets.QPushButton(self.widget)
        self.pushButton.setGeometry(QtCore.QRect(160, 280, 261, 31))
        font = QtGui.QFont()
        font.setPointSize(10)
        font.setBold(False)
        font.setWeight(50)
        self.pushButton.setFont(font)
        self.pushButton.setStyleSheet("QPushButton#pushButton{\n"
"background-color:#aa55ff;\n"
"border-radius: 15px;\n"
"}\n"
"QPushButton#pushButton:hover{\n"
"background-color:rgb(255, 170, 255);\n"
"}\n"
"QPushButton#pushButton:pressed{\n"
"background-color:#be3fbe\n"
"}")
        self.pushButton.setObjectName("pushButton")
        self.pushButton_2 = QtWidgets.QPushButton(self.widget)
        self.pushButton_2.setGeometry(QtCore.QRect(160, 340, 261, 28))
        self.pushButton_2.setStyleSheet("QPushButton#pushButton_2{\n"
"background-color:#62c0ff;\n"
"border-radius:15px;\n"
"}\n"
"QPushButton#pushButton_2:hover{\n"
"background-color:#4386af;\n"
"}\n"
"QPushButton#pushButton_2:pressed{\n"
"background-color:#53a3d8;\n"
"}\n"
"")
        self.pushButton_2.setObjectName("pushButton_2")

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "Dialog"))
        self.label_2.setText(_translate("Dialog", "LOGIN"))
        self.lineEdit.setPlaceholderText(_translate("Dialog", "    Username"))
        self.lineEdit_2.setPlaceholderText(_translate("Dialog", "    Password"))
        self.radioButton.setText(_translate("Dialog", "USER"))
        self.radioButton_2.setText(_translate("Dialog", "OFFICER"))
        self.pushButton.setText(_translate("Dialog", "LogIn"))
        self.pushButton_2.setText(_translate("Dialog", "Don\'t have account? Register here.."))
       
        
        # self.pushButton.clicked.connect(pushButton_submitsignal.emit())
        self.pushButton.clicked.connect(lambda: self.login())
        self.pushButton_submitsignal.connect(lambda: print("adw"))

    
        
    def login(self):
        if(self.radioButton_2.isChecked()):
                if(self.lineEdit.text()=="admin" and self.lineEdit_2.text()=="admin"):
                        self.lineEdit.setText("")
                        self.lineEdit_2.setText("")
                        msg = QMessageBox()
                        msg.setWindowTitle("successfull")
                        msg.setText("login Successfull")
                        x = msg.exec_()
                        self.pushButton_submitsignal2.emit()
                         
                else: 
                        self.lineEdit.setText("")
                        self.lineEdit_2.setText("")
                        msg = QMessageBox()
                        msg.setWindowTitle("warning")
                        msg.setText("login failed")
                        msg.setIcon(QMessageBox.Warning)
                        x = msg.exec_()
                        
                return
                    
        print('Button Clicked')
        print(self.lineEdit.text())
        mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="dbms"
        )

        mycursor = mydb.cursor()

        mycursor.execute("SELECT username , pwd FROM acc where username = '%s' and pwd = '%s'" % (self.lineEdit.text(),self.lineEdit_2.text()))
        # mycursor.execute("SELECT username , password FROM registration where username = 'sahil' and password = '1234'")

        myresult = mycursor.fetchall()
        self.lineEdit.setText("")
        self.lineEdit_2.setText("")
        if(len(myresult) == 0):
                msg = QMessageBox()
                msg.setWindowTitle("warning")
                msg.setText("login failed")
                msg.setIcon(QMessageBox.Warning)
                x = msg.exec_()
        else:
                msg = QMessageBox()
                msg.setWindowTitle("successfull")
                msg.setText("login Successfull")
                x = msg.exec_()
                self.pushButton_submitsignal.emit()
                
                
#     def show_popup(self):
#         msg = QMessageBox()
#         msg.setWindowTitle("warning")
#         msg.setText("login Succesfull")
        
#         x = msg.exec_()
            
            

        

        
        
 

if __name__ == "__main__":
   app = QtWidgets.QApplication(sys.argv)
   Dialog = QtWidgets.QWidget()
   ui = Ui_Dialog()
   ui.setupUi(Dialog)
   Dialog.show()
   sys.exit(app.exec_())
        
        
