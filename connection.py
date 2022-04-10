import sys
from PyQt5 import QtWidgets, QtCore
from PyQt5.QtWidgets import  QDialog, QApplication, QWidget


from login import Ui_Dialog as page1
from userna import Ui_Dialog as page2
from officer import Ui_Dialog as page3
from signup import Ui_Form as page4
from report import Ui_pnl_user as page5
from crime import Ui_pnl_user as page6
from casestatus import Ui_Dialog as page7
from pendingcases import Ui_Dialog as page8
from userlist import Ui_Userlist as page9
from viewrep import Ui_ReportForm as page10


# crime_id = 0
class Login(QtWidgets.QWidget,page1):
    switch_window = QtCore.pyqtSignal()
    switch_window2 = QtCore.pyqtSignal()
    switch_window3 = QtCore.pyqtSignal()

    def __init__(self):
        QtWidgets.QWidget.__init__(self)
        self.setupUi(self)
        self.pushButton_submitsignal.connect(lambda : self.switch_window.emit())
        self.pushButton_submitsignal2.connect(lambda : self.switch_window2.emit())
        self.pushButton_2.clicked.connect(lambda : self.switch_window3.emit())
        
class Newuser(QtWidgets.QWidget, page2):
    switch_window = QtCore.pyqtSignal()
    switch_window2 = QtCore.pyqtSignal()
    switch_window3 = QtCore.pyqtSignal()
    switch_window4 = QtCore.pyqtSignal()


    
    def __init__(self):
        QtWidgets.QWidget.__init__(self)
        self.setupUi(self)
        self.pushButton.clicked.connect(lambda : self.switch_window.emit())
        self.pushButton_2.clicked.connect(lambda : self.switch_window2.emit())
        self.pushButton_4.clicked.connect(lambda : self.switch_window3.emit())
        self.pushButton_5.clicked.connect(lambda : self.switch_window4.emit())

  
class officer(QtWidgets.QWidget, page3):
    switch_window = QtCore.pyqtSignal()
    switch_window2 = QtCore.pyqtSignal()
    switch_window3 = QtCore.pyqtSignal()

    
    def __init__(self):
        QtWidgets.QWidget.__init__(self)
        self.setupUi(self)
        self.pushButton.clicked.connect(lambda : self.switch_window.emit())
        self.pushButton_5.clicked.connect(lambda : self.switch_window2.emit())
        self.pushButton_4.clicked.connect(lambda : self.switch_window3.emit())
        

class signup (QtWidgets.QWidget, page4):
    switch_window = QtCore.pyqtSignal()
    
    def __init__(self):
        QtWidgets.QWidget.__init__(self)
        self.setupUi(self)
        self.pushButton_submitsignal.connect(lambda : self.switch_window.emit())
        
class report(QtWidgets.QWidget,page5):
    switch_window = QtCore.pyqtSignal()
    #switch_window2 = QtCore.pyqtSignal()
    # switch_window3 = QtCore.pyqtSignal()

    def __init__(self):
        QtWidgets.QWidget.__init__(self)
        self.setupUi(self)
        self.btnlogout.clicked.connect(lambda : self.switch_window.emit())
        # self.pushButton_submitsignal2.connect(lambda : self.switch_window2.emit())
        # self.pushButton_2.clicked.connect(lambda : self.switch_window3.emit())
        
class crime(QtWidgets.QWidget,page6):
    switch_window = QtCore.pyqtSignal()
    #switch_window2 = QtCore.pyqtSignal()
    # switch_window3 = QtCore.pyqtSignal()

    def __init__(self):
        QtWidgets.QWidget.__init__(self)
        self.setupUi(self)
        self.btnlogout.clicked.connect(lambda : self.switch_window.emit())
        #self.pushButton_submitsignal2.connect(lambda : self.switch_window2.emit())
        # self.pushButton_2.clicked.connect(lambda : self.switch_window3.emit())
        
class casestatus(QtWidgets.QWidget,page7):
    switch_window = QtCore.pyqtSignal()
    #switch_window2 = QtCore.pyqtSignal()
    # switch_window3 = QtCore.pyqtSignal()

    def __init__(self):
        QtWidgets.QWidget.__init__(self)
        self.setupUi(self)
        self.btnlogout.clicked.connect(lambda : self.switch_window.emit())
        # self.pushButton_submitsignal2.connect(lambda : self.switch_window2.emit())
        # self.pushButton_2.clicked.connect(lambda : self.switch_window3.emit())
        
class pendingcases(QtWidgets.QWidget,page8):
    switch_window = QtCore.pyqtSignal()
    #switch_window2 = QtCore.pyqtSignal()
    # switch_window3 = QtCore.pyqtSignal()

    def __init__(self):
        QtWidgets.QWidget.__init__(self)
        self.setupUi(self)
        self.btnlogout.clicked.connect(lambda : self.switch_window.emit())
        # self.pushButton_submitsignal2.connect(lambda : self.switch_window2.emit())
        # self.pushButton_2.clicked.connect(lambda : self.switch_window3.emit())
        
        
class userlist(QtWidgets.QWidget,page9):
    switch_window = QtCore.pyqtSignal()
    switch_window2 = QtCore.pyqtSignal()
    #switch_window2 = QtCore.pyqtSignal()
    # switch_window3 = QtCore.pyqtSignal()
    
    def __init__(self):
        # global crime_id
        QtWidgets.QWidget.__init__(self)
        self.setupUi(self)
        self.Btn_back.clicked.connect(lambda : self.switch_window.emit())
        self.switch_window_new.connect(lambda : self.switch_window2.emit())
        # self.pushButton_submitsignal2.connect(lambda : self.switch_window2.emit())
        # self.pushButton_2.clicked.connect(lambda : self.switch_window3.emit())
        
        
class viewReport(QtWidgets.QWidget,page10):
    # switch_window = QtCore.pyqtSignal()
    #switch_window2 = QtCore.pyqtSignal()
    # switch_window3 = QtCore.pyqtSignal()
    def __init__(self):
        # global crime_id
        QtWidgets.QWidget.__init__(self)
        self.setupUi(self)
        # self.Btn_back.clicked.connect(lambda : self.switch_window.emit())
        # self.pushButton_submitsignal2.connect(lambda : self.switch_window2.emit())
        # self.pushButton_2.clicked.connect(lambda : self.switch_window3.emit())
        


class Controller:

    def __init__(self):
        pass

    def show_login_page(self):
        self.login = Login()
        self.login.switch_window.connect(self.show_newuser_page)
        self.login.switch_window2.connect(self.show_officer_page)
        self.login.switch_window3.connect(self.show_signup_page)
        self.login.show()
        if hasattr(self, 'newuser'): self.newuser.close()
    
    def show_newuser_page(self):
        self.newuser = Newuser()
        self.newuser.switch_window.connect(self.show_login_page)
        self.newuser.switch_window3.connect(self.show_crime_page)
        self.newuser.switch_window4.connect(self.show_casestatus_page)

        #self.login.close()
        self.newuser.show()
        if hasattr(self, 'newuser3'): self.newuser3.close()
        #if hasattr(self,'login'): self.login.close()
        if hasattr(self, 'newuser4'): self.newuser4.close()
        if hasattr(self,'login'): self.login.close()

    def show_officer_page(self):
        self.newuser = officer()
        self.newuser.switch_window.connect(self.show_login_page)
        self.newuser.switch_window2.connect(self.show_report_page)
        self.newuser.switch_window3.connect(self.show_userlist_page)

        #self.login.close()
        self.newuser.show()
        if hasattr(self, 'newuser2'): self.newuser2.close()
        if hasattr(self, 'newuser5'): self.newuser5.close()
        if hasattr(self,'login'): self.login.close()
        
    def show_signup_page(self):
        self.newuser = signup()
        self.newuser.switch_window.connect(self.show_login_page)
        self.login.close()
        self.newuser.show()
        
    def show_report_page(self):
        self.newuser2 = report()
        self.newuser2.switch_window.connect(self.show_officer_page)
        #self.newuser.switch_window2.connect(self.show_officer_page)
        self.newuser.close()
        self.newuser2.show()
        
    def show_crime_page(self):
        self.newuser3 = crime()
        self.newuser3.switch_window.connect(self.show_newuser_page)
        #self.newuser3.switch_window2.connect(self.show_newuser_page)
        self.newuser.close()
        self.newuser3.show()
        
    def show_casestatus_page(self):
        self.newuser4 = casestatus()
        self.newuser4.switch_window.connect(self.show_newuser_page)
        #self.newuser.switch_window2.connect(self.show_officer_page)
        self.newuser.close()
        self.newuser4.show()
        
    def show_pendingcases_page(self):
        self.newuser5 = pendingcases()
        self.newuser5.switch_window.connect(self.show_officer_page)
        #self.newuser.switch_window2.connect(self.show_officer_page)
        self.newuser.close()
        self.newuser5.show()

    def show_viewreport(self):
        self.newuser7 = viewReport()
        # self.newuser7.switch_window.connect(self.show_officer_page)
        #self.newuser.switch_window2.connect(self.show_officer_page)
        self.newuser6.close()
        self.newuser7.show()

    def show_userlist_page(self):
        self.newuser6 = userlist()
        self.newuser6.switch_window.connect(self.show_officer_page)
        self.newuser6.switch_window2.connect(self.show_viewreport)
        #self.newuser.switch_window2.connect(self.show_officer_page)
        self.newuser.close()
        self.newuser6.show()


 

def main():
    app = QtWidgets.QApplication(sys.argv)
    controller = Controller()
    controller.show_login_page()
    app.aboutToQuit.connect(lambda : controller.show_login_page())
    sys.exit(app.exec_())
    


if __name__ == "__main__":
    main()
    