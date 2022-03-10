TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = PowerPMAC
# PowerPMAC.dbd will be created and installed
DBD += PowerPMAC.dbd

# PowerPMAC.dbd will be made up from these files:
PowerPMAC_DBD += base.dbd

# Include dbd files from all support applications:
PowerPMAC_DBD += base.dbd
PowerPMAC_DBD += asyn.dbd
PowerPMAC_DBD += drvAsynPowerPMACPort.dbd
PowerPMAC_DBD += motorSupport.dbd
PowerPMAC_DBD += devSoftMotor.dbd
PowerPMAC_DBD += pmacAsynMotorPort.dbd
PowerPMAC_DBD += busySupport.dbd
PowerPMAC_DBD += calcSupport.dbd
PowerPMAC_DBD += asSupport.dbd
PowerPMAC_DBD += devIocStats.dbd


# Add all the support libraries needed by this IOC
#PowerPMAC_LIBS += xxx
PowerPMAC_LIBS += calc
PowerPMAC_LIBS += busy
PowerPMAC_LIBS += pmacAsynMotorPort
PowerPMAC_LIBS += softMotor
PowerPMAC_LIBS += motor
PowerPMAC_LIBS += PowerPmacAsynPort
PowerPMAC_LIBS += asyn
PowerPMAC_LIBS += $(EPICS_BASE_IOC_LIBS)
PowerPMAC_LIBS += autosave
PowerPMAC_LIBS += devIocStats

# PowerPMAC_registerRecordDeviceDriver.cpp derives from PowerPMAC.dbd
PowerPMAC_SRCS += PowerPMAC_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
PowerPMAC_SRCS_DEFAULT += PowerPMACMain.cpp
PowerPMAC_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#PowerPMAC_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
PowerPMAC_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

