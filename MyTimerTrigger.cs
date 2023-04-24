using Microsoft.Azure.WebJobs;
using Microsoft.Extensions.Logging;

public static class MyTimerTrigger
{
    [FunctionName("MyTimerTrigger")]
    public static void Run([TimerTrigger("0 */5 * * * *")] TimerInfo myTimer, ILogger log)
    {
        log.LogInformation($"C# Timer trigger function executed at: {DateTime.Now}");
    }
}