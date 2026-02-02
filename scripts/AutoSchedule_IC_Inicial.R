#---------------------------------------------#
# SCHEDULER: Ejecutar automaticamente scripts #
#---------------------------------------------#
# Instalar y cargar librerias
library(taskscheduleR) # Programar scripts/Markdown para su ejecución


# 1. Programar Tareas -----------------------------------------------------
# Ejecución semanal del script Brevo Blacklist a las 08:15 los Lunes, Miércoles y Viernes
taskscheduler_create(taskname = "AutoScript_BrevoBlacklist_API",
                     rscript = "D:/@_GitHub/ESAN/BrevoAutomate/script/Brevo_Blacklist_API.R", # CONFIG: Actualizar ubicación
                     schedule = "WEEKLY",
                     starttime = "08:15",
                     days = c("MON", "WED", "FRI"))

# Ejecución semanal del script Brevo Métricas a las 09:03 los Lunes, Miércoles y Viernes
taskscheduler_create(taskname = "AutoScript_BrevoDashboard_API",
                     rscript = "D:/@_GitHub/ESAN/BrevoAutomate/script/Brevo_Dashboard_API.R", # CONFIG: Actualizar ubicación
                     schedule = "WEEKLY",
                     starttime = "09:03",
                     days = c("MON", "WED", "FRI"))

# Ejecución semanal del script Tab_Alumnos a las 10:30 los Lunes, Miércoles y Viernes
taskscheduler_create(taskname = "AutoScript_UpdateTab_Alumnos",
                     rscript = "D:/@_GitHub/ESAN/DataBAse/script/UpdateTablesMaestras/UpdateTab_Alumnos.sql", # CONFIG: Actualizar ubicación
                     schedule = "WEEKLY",
                     starttime = "10:30",
                     days = c("MON", "WED", "FRI"))

# Ejecución semanal del script Tab_Graduados a las 12:45 el primer Lunes de cada mes
taskscheduler_create(taskname = "AutoScript_UpdateTab_Graduados",
                     rscript = "D:/@_GitHub/ESAN/DataBAse/script/UpdateTablesMaestras/UpdateTab_Graduados.sql", # CONFIG: Actualizar ubicación
                     schedule = "WEEKLY",
                     starttime = "12:45",
                     days = "TUE")



# 2. Eliminar tareas ------------------------------------------------------
# Brevo Blacklist 
taskscheduler_delete(taskname = "AutoScript_BrevoBlacklist_API")

# Brevo Dashboard
taskscheduler_delete(taskname = "AutoScript_BrevoDashboard_API")

# Tab_Alumnos 
taskscheduler_delete(taskname = "AutoScript_UpdateTab_Alumnos")

# Tab_Graduados
taskscheduler_delete(taskname = "AutoScript_UpdateTab_Graduados")



#==============================================================================#
# BIBLIOGRAPHY:
# https://www.r-bloggers.com/2020/05/how-to-schedule-r-scripts/
# https://cran.r-project.org/web/packages/taskscheduleR/vignettes/taskscheduleR.html
# https://rpubs.com/itheta/197242
# https://rpubs.com/arafath/automateR
#==============================================================================#