using DotnetActionsToolkit;
using System;
using System.Collections;
using System.Threading.Tasks;

namespace dotnet_sample_action
{
    public class Program
    {
        static readonly Core _core = new Core();

        static async Task Main(string[] args)
        {
            try
            {
                 var ms = _core.GetInput("milliseconds");
                 _core.Info($"Waiting {ms} milliseconds..."); // debug is only output if you set teh secret ACTIONS_RUNNER_DEBUG to true

                 _core.Debug(DateTime.Now.ToShortTimeString());
                 await Task.Delay(int.Parse(ms));
                 _core.Info(DateTime.Now.ToShortTimeString());

                 _core.SetOutput("time", DateTime.Now.ToShortTimeString());
            }
            catch (Exception ex)
            {
                _core.SetFailed(ex.Message);
            }
        }
    }
}
