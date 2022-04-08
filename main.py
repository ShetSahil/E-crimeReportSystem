import sys
from PyQt5.uic import loadUi
from PyQt5 import QtWidgets
from PyQt5.QtGui import *
from PyQt5.QtWidgets import *
from PyQt5.QtGui import QPixmap

class WelcomeScreen(QDialog):

    def __init__(self):
        super(WelcomeScreen,self).__init__()
        loadUi("login.ui",self)
        self.label.setPixmap(QPixmap('image.jpg'))

#main
app = QApplication(sys.argv)
Welcome = WelcomeScreen()
widget = QtWidgets.QStackedWidget()
widget.addWidget(Welcome)
widget.setFixedHeight(500)
widget.setFixedWidth(500)
widget.show()
try:
    sys.exit(app.exec_())
except:
    print("Exiting")