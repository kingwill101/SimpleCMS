using System;
using SimpleCMS.Database;

namespace SimpleCMS
{
    public class Service
    {
        public static string GetSetting(string setting)
        {
            try
            {
                var opt = Option.Read(setting);
                return opt.Value;
            }
            catch (Exception e)
            {
                return "";
            }
        }   
        
        public static void updateSetting(string setting, string value)
        {
            try
            {
                var opt = Option.Update(setting, value);
           
            }
            catch (Exception e)
            {
                throw new Exception("Unable to update settings, please try again");
            }
        }
    }
}