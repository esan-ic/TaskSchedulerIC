#---------------------------------------------#
# SCHEDULER: Ejecutar automaticamente scripts #
#---------------------------------------------#
# Instalar y cargar librerias
library(taskscheduleR)        # Programar scripts/Markdown para su ejecución


# 1. Programar Tareas -----------------------------------------------------
# Ejecución semanal del script Tab_Graduados a las 16:45 el primer Lunes de cada mes
taskscheduler_create(taskname = "AutoScript_UpdateTab_Graduados",
                     rscript = "D:/@_GitHub/ESAN/DataBAse/scripts/UpdateTablesMaestras/UpdateTab_Graduados.sql", # CONFIG: Actualizar ubicación
                     schedule = "WEEKLY",
                     starttime = "16:45",
                     days = "TUE")

# Ejecución semanal del script Tab_Alumnos a las 17:30 los Lunes, Miércoles y Viernes
taskscheduler_create(taskname = "AutoScript_UpdateTab_Alumnos",
                     rscript = "D:/@_GitHub/ESAN/DataBAse/scripts/UpdateTablesMaestras/UpdateTab_Alumnos.sql", # CONFIG: Actualizar ubicación
                     schedule = "WEEKLY",
                     starttime = "17:30",
                     days = c("MON", "WED", "FRI"))



# 2. Eliminar tareas ------------------------------------------------------
# Tab_Graduados
taskscheduler_delete(taskname = "AutoScript_UpdateTab_Graduados")

# Tab_Alumnos 
taskscheduler_delete(taskname = "AutoScript_UpdateTab_Alumnos")



#==============================================================================#
# BIBLIOGRAPHY:
# https://www.r-bloggers.com/2020/05/how-to-schedule-r-scripts/
# https://cran.r-project.org/web/packages/taskscheduleR/vignettes/taskscheduleR.html
# https://rpubs.com/itheta/197242
# https://rpubs.com/arafath/automateR
#==============================================================================#