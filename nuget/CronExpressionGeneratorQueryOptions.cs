using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.CronExpressionGenerator
{
    /// <summary>
    /// Query options for the Cron Expression Generator API
    /// </summary>
    public class CronExpressionGeneratorQueryOptions
    {
        /// <summary>
        /// Natural language description of the schedule (max 200 characters)
        /// Example: every weekday at 9am
        /// </summary>
        [JsonProperty("schedule")]
        public string Schedule { get; set; }
    }
}
