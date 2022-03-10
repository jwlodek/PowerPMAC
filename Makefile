#Makefile at top of application tree
TOP = .
include $(TOP)/configure/CONFIG

DIRS += configure
DIRS += PowerPMACSupport
PowerPMACSupport_DEPEND_DIRS = configure
DIRS += PowerPMACApp
PowerPMACApp_DEPEND_DIRS = PowerPMACSupport


include $(TOP)/configure/RULES_TOP
