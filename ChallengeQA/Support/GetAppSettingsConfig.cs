using System;
using Microsoft.Extensions.Configuration;
namespace ChallengeQA.Support
{
    public class GetAppSettingsConfig
    {
        protected GetAppSettingsConfig() { }

        private static string _testProjectDirectory = string.Empty;
        public static string TestProjectDirectory { get => _testProjectDirectory; }

        private static IConfigurationRoot? _configuration;

        public static IConfigurationRoot Configuration
        {
            get
            {
                if (_configuration == null)
                    Setup();

                return _configuration ?? throw new Exception("Não foi possível ler o arquivo de configuração. Verifique.");
            }
        }

        public static void Initialize(string testProjectDirectory)
        {
            _testProjectDirectory = testProjectDirectory;
        }


        public static void Setup(string configFile = "appsettings.json")
        {
            var builder = new ConfigurationBuilder()
                            .SetBasePath(AppDomain.CurrentDomain.BaseDirectory)
                            .AddJsonFile(configFile);

            _configuration = builder.Build();
        }
    }
}