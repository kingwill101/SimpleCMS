using System;
using SimpleCMS.Database;

namespace SimpleCMS
{
    public class SettingsHelper
    {
        public static string GetSetting(string setting)
        {
            try
            {
                var opt = Option.Read(setting);
                return opt.Value;
            }
            catch (Exception)
            {
                return "";
            }
        }   
        
        public static void UpdateSetting(string setting, string value)
        {
            try
            {
                var opt = Option.Update(setting, value);
           
            }
            catch (Exception)
            {
                throw new Exception("Unable to update settings, please try again");
            }
        }
    }
}