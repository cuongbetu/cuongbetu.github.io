using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FlodaStore.AppCode
{
    public class Convert
    {
        public int ToInt(object value)
        {
            if (value == null)
            {
                return 0;
            }

            int result = 0;
            int.TryParse(value.ToString(), out result);
            return result;
        }
    }
}