# UTN_TUP_TPI_GRUPO_11

Sistema de gestión para una clínica médica, desarrollado en C# con ASP.NET WebForms y arquitectura de tres capas.

Organización de ramas y archivos

Rama login

Login.aspx: pantalla de inicio de sesión.

InicioAdmin.aspx: página principal del administrador.

InicioMedico.aspx: página principal del médico.

Rama pacientes

AgregarPaciente.aspx: formulario para registrar nuevos pacientes.

ListadoPacientes.aspx: listado, búsqueda y baja lógica de pacientes.

ModificarPaciente.aspx: formulario para modificar los datos de un paciente.

Rama medicos

AgregarMedico.aspx: formulario para registrar médicos.

ListadoMedicos.aspx: listado, búsqueda y baja lógica de médicos.

ModificarMedico.aspx: formulario para modificar los datos de un médico.

Rama turnos

AsignarTurno.aspx: asignación de turnos a pacientes según la disponibilidad del médico.

MisTurnos.aspx: visualización de turnos del médico, registro de asistencia y observaciones.

Rama informes

Informes.aspx: generación de informes y estadísticas de la clínica.

Rama main

Contiene la estructura principal del proyecto y se utilizará para integrar los avances de las demás ramas.

Estructura del proyecto

Vistas: páginas .aspx y sus archivos .aspx.cs y .designer.cs.

Negocio: clases encargadas de la lógica del sistema.

Datos: clases encargadas del acceso a la base de datos.

Entidades: clases que representan las entidades del sistema.

Nota: todas las ramas contienen inicialmente la misma estructura. Los archivos mencionados indican las responsabilidades principales de cada rama, no una separación exclusiva de archivos.
