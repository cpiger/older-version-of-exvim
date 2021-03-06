#  ======================================================================================
#  File         : protogen_entry_s.mk
#  Author       : Wu Jie 
#  Last Change  : 03/20/2012 | 20:03:51 PM | Tuesday,March
#  Description  : 
#  ======================================================================================

# /////////////////////////////////////////////////////////////////////////////
#  Global Configuration
# /////////////////////////////////////////////////////////////////////////////

#  ------------------------------------------------------------------ 
#  Desc: include general config
#  ------------------------------------------------------------------ 

include protogen_config.mk

# /////////////////////////////////////////////////////////////////////////////
#  User Define
# /////////////////////////////////////////////////////////////////////////////

#  ------------------------------------------------------------------ 
#  Desc: Parent Working Directory
#  ------------------------------------------------------------------ 

CWD := .

#  ------------------------------------------------------------------ 
#  Desc: Project Name
#  ------------------------------------------------------------------ 

Project := # TODO: current directory name

#  ------------------------------------------------------------------ 
#  Desc: Include Path
#  ------------------------------------------------------------------ 

IncDirs += .
IncDirs += # TODO: relative-address (sample: ./Incs)

#  ------------------------------------------------------------------ 
#  Desc: Source Path
#  ------------------------------------------------------------------ 

SrcDirs += .
SrcDirs += # TODO: relative-address (sample: ./Srcs)

# /////////////////////////////////////////////////////////////////////////////
#  Advanced User Define
#  NOTE: in this section, you can define advanced macros by uncomment them
# /////////////////////////////////////////////////////////////////////////////

#  ------------------------------------------------------------------ 
#  Desc: Target output directory 
#  ------------------------------------------------------------------ 

#  OutDir := ./_client
#  ErrDir := $(CWD)/_logs/errors

#  ------------------------------------------------------------------ 
#  Desc: Pre defines
#  ------------------------------------------------------------------ 

# PreDefs +=

# /////////////////////////////////////////////////////////////////////////////
#  Post Build Even
# 	programme after target been built, this is the project specific one (sample: make_fself $(@) $(basename $(@)).self)
# /////////////////////////////////////////////////////////////////////////////

define POST_BUILD
$(ECHO) Post Build $(Project)...
endef

# /////////////////////////////////////////////////////////////////////////////
#  Rules
# /////////////////////////////////////////////////////////////////////////////

include $(CWD)/protogen_rule_s.mk
