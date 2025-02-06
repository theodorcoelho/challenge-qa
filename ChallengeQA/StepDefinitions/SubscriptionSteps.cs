using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ChallengeQA.Models;
using ChallengeQA.Pages;
using ChallengeQA.Support;
using Reqnroll;
using FluentAssertions;
using OpenQA.Selenium;


namespace ChallengeQA.StepDefinitions
{
    [Binding]
    public class SubscriptionSteps
    {
        private readonly ScenarioContext _scenarioContext;
        private readonly IWebDriver _driver;

        public SubscriptionSteps(ScenarioContext scenarioContext)
        {
            _scenarioContext = scenarioContext;
            _driver = _scenarioContext.Get<IWebDriver>();
        }

        private SubscriptionPage subscriptionPage;
        private SubscriptionPage SubscriptionPage => subscriptionPage ??= new SubscriptionPage(_driver);

        [Given("que o candidato acessa o portal de inscricoes")]
        public void GivenQueOCandidatoAcessaOPortalDeInscricoes()
        {
            _driver.Navigate().GoToUrl("https://developer.grupoa.education/subscription");
        }

        [Given("que o candidato está na página inicial")]
        public void GivenQueOCandidatoEstaNaPaginaInicial()
        {
            _driver.Navigate().GoToUrl("https://developer.grupoa.education/subscription");
            
        }

        [When("seleciona o nível de ensino {string}")]
        public void WhenSelecionaONivelDeEnsino(string graduacao)
        {
            throw new PendingStepException();
        }

        [Then("deve ser redirecionado para seleção de curso de {string}")]
        public void ThenDeveSerRedirecionadoParaSelecaoDeCursoDe(string graduacao)
        {
            throw new PendingStepException();
        }
    }
}
