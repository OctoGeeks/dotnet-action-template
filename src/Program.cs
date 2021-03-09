using System;
using System.Collections;

namespace dotnet_xplat_action
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            foreach (DictionaryEntry envVar in Environment.GetEnvironmentVariables())
            {
                Console.WriteLine($"{envVar.Key}: {envVar.Value}");
            }
        }
    }
}
