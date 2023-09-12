using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace App_SistemaAcademico
{
    public class cls_estudiantes
    {
        private string str_mensaje;
        SqlCommand con; SqlDataReader Lectura;

        public void fnt_agregar(string identificacion, string nombre, string contacto, string correo, string direccion,
            string acudiente, string estrato, string sexo, string observaciones)
        {
            if ( (identificacion == "") ||(nombre == "") || (contacto == "") || (correo == "") || (direccion == ""))
            {
                str_mensaje = "Llene los campos obligatorios";
            }
            else
            {
                try
                {
                    cls_conexion objConecta = new cls_conexion();
                    SqlCommand con = new SqlCommand("SP_registrar", objConecta.connection);
                    con.CommandType = CommandType.StoredProcedure;
                    con.Parameters.AddWithValue("@codigo", identificacion);
                    con.Parameters.AddWithValue("@nombre", nombre);
                    con.Parameters.AddWithValue("@contacto", contacto);
                    con.Parameters.AddWithValue("@correo", correo);
                    con.Parameters.AddWithValue("@direccion", direccion);
                    con.Parameters.AddWithValue("@acudiente", acudiente);
                    con.Parameters.AddWithValue("@estrato", estrato);
                    con.Parameters.AddWithValue("@sexo", sexo);
                    con.Parameters.AddWithValue("@observaciones", observaciones);


                    objConecta.connection.Open();
                    con.ExecuteNonQuery();
                    objConecta.connection.Close();
                    str_mensaje = "Registro exitoso";
                }
                catch (Exception) { str_mensaje = "Faltan campos / este registro ya existe"; }
            }
        }
        public string getMensaje() { return this.str_mensaje; }
    }
}