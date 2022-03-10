TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#=============================
# Build the IOC support library
LIBRARY_Linux += PowerPmacAsynPort

DBD += drvAsynPowerPMACPort.dbd

# Link locally-provided code into the support library,
PowerPmacAsynPort_SRCS += sshDriver.cpp
PowerPmacAsynPort_SRCS += drvAsynPowerPMACPort.cpp

PowerPmacAsynPort_LIBS += asyn
PowerPmacAsynPort_LIBS += motor
PowerPmacAsynPort_SYS_LIBS += ssh2
PowerPmacAsynPort_LIBS += $(EPICS_BASE_IOC_LIBS)
	
#=============================
# Build the interactive shell test application
	
PROD_IOC_Linux = PowerPMACShell
	
PowerPMACShell_SRCS += interactive.cpp
	
# Link in the code from the support library
PowerPMACShell_LIBS += PowerPmacAsynPort
PowerPMACShell_LIBS += asyn
PowerPMACShell_LIBS += motor
PowerPMACShell_SYS_LIBS += ssh2
# Finally link to the EPICS Base libraries
PowerPMACShell_LIBS += $(EPICS_BASE_IOC_LIBS)


#=============================


include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

