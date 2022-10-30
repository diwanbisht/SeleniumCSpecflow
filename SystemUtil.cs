using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace SeleniumCShape10.Common
{
    public class SystemUtils
    {

        public static string GetProjectPath()
        {
            string path = Directory.GetCurrentDirectory().Split("\\bin")[0];
            return path + "\\";
        }

        public static string GetExtendReportPath()
        {
            string path = Directory.GetCurrentDirectory().Split("\\Results")[0];
            return path + "\\";
        }

        public static string GetExcelDataFilePath()
        {
            string ExcelFilePath = Directory.GetCurrentDirectory().Split("\\bin")[0];
            return ExcelFilePath + "\\TestData";
        }

        public static string GetChromeDriverPath()
        {
            string ExcelFilePath = Directory.GetCurrentDirectory().Split("\\bin")[0];
            return ExcelFilePath + "\\Drivers";
        }

        public static List<String> GetDirSearch(string sDir)
        {
            List<String> files = new List<String>();

            foreach (string f in Directory.GetFiles(sDir))
            {
                files.Add(f);
            }
            foreach (string d in Directory.GetDirectories(sDir))
            {
                files.AddRange(GetDirSearch(d));
            }
            return files;
        }

        public static string [] GetAllDrivInfo(string driveName)
        {
           // string[] files = Directory.GetFiles(@driveName + "\\", "*.*", SearchOption.AllDirectories);
            string[] files = Directory.GetFiles(@driveName + "\\", "*.*", SearchOption.TopDirectoryOnly);

            return files;
        }
    }
}
