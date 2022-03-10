TOP = ..
include $(TOP)/configure/CONFIG
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard *src*))
DIRS += opi
DIRS += pmc
include $(TOP)/configure/RULES_DIRS
