using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace App_SistemaAcademico
{
    public class cls_conexion
    {
        public SqlConnection connection = new SqlConnection("Data Source=ERO-SENNIN;Initial Catalog=db_simuladorCredito;Integrated Security=True");
    }
}