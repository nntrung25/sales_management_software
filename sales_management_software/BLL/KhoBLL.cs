﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace sales_management_software
{
    public class KhoBLL
    {
        public static List<KHO_HANG_DTO> EF_GetAll()
        {
            return KHO_HANG_DAL.EF_GetAll();
        }
    }
}
