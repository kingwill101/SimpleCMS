namespace SimpleCMS.Models.JamCovid
{
    using System.Collections.Generic;
    using Newtonsoft.Json;

    // Root myDeserializedClass = JsonConvert.DeserializeObject<Root>(myJsonResponse);
    public class DoublingFactor
    {
        public string Day { get; set; }
        public string Date { get; set; }
        public object TotalCases { get; set; }
        public object TotalCasesCumulative { get; set; }
        public string _6th_day_doubling { get; set; }
        public string _8th_day_doubling { get; set; }
        public string _10th_day_doubling { get; set; }
        public string _12th_day_doubling { get; set; }
    }

    public class TotalCas
    {
        public string Date { get; set; }
        public object Tested { get; set; }
        public object Positive { get; set; }
        public object TestedCumulative { get; set; }
        public object PositiveCumulative { get; set; }
        public string PositivePercentage { get; set; }
    }

    public class CountryWiseStatistic
    {
        public string Day { get; set; }
        public string China { get; set; }
        public string ChinaTotal { get; set; }
        public string ChinaPopulation { get; set; }

        [JsonProperty("United States")]
        public string UnitedStates { get; set; }

        [JsonProperty("United States_total")]
        public string UnitedStatesTotal { get; set; }

        [JsonProperty("United States_population")]
        public string UnitedStatesPopulation { get; set; }

        [JsonProperty("South Korea")]
        public string SouthKorea { get; set; }

        [JsonProperty("South Korea_total")]
        public string SouthKoreaTotal { get; set; }

        [JsonProperty("South Korea_population")]
        public string SouthKoreaPopulation { get; set; }
        public string Singapore { get; set; }
        public string SingaporeTotal { get; set; }
        public string SingaporePopulation { get; set; }
        public string Italy { get; set; }
        public string ItalyTotal { get; set; }
        public string ItalyPopulation { get; set; }

        [JsonProperty("United Kingdom")]
        public string UnitedKingdom { get; set; }

        [JsonProperty("United Kingdom_total")]
        public string UnitedKingdomTotal { get; set; }

        [JsonProperty("United Kingdom_population")]
        public string UnitedKingdomPopulation { get; set; }

        [JsonProperty("Dominican Republic")]
        public string DominicanRepublic { get; set; }

        [JsonProperty("Dominican Republic_total")]
        public string DominicanRepublicTotal { get; set; }

        [JsonProperty("Dominican Republic_population")]
        public string DominicanRepublicPopulation { get; set; }

        [JsonProperty("Costa Rica")]
        public string CostaRica { get; set; }

        [JsonProperty("Costa Rica_total")]
        public string CostaRicaTotal { get; set; }

        [JsonProperty("Costa Rica_population")]
        public string CostaRicaPopulation { get; set; }
        public string Panama { get; set; }
        public string PanamaTotal { get; set; }
        public string PanamaPopulation { get; set; }
        public string Jamaica { get; set; }
        public string JamaicaTotal { get; set; }
        public string JamaicaPopulation { get; set; }

        [JsonProperty("Trinidad and Tobago")]
        public string TrinidadAndTobago { get; set; }

        [JsonProperty("Trinidad and Tobago_total")]
        public string TrinidadAndTobagoTotal { get; set; }

        [JsonProperty("Trinidad and Tobago_population")]
        public string TrinidadAndTobagoPopulation { get; set; }
        public string Bahamas { get; set; }
        public string BahamasTotal { get; set; }
        public string BahamasPopulation { get; set; }
        public string Barbados { get; set; }
        public string BarbadosTotal { get; set; }
        public string BarbadosPopulation { get; set; }
    }

    public class ParishesWiseReport
    {
        public string Id { get; set; }
        public string Parish { get; set; }
        public string Code { get; set; }
        public string TotalTestsPositive { get; set; }
        public string TotalTestsNegative { get; set; }
        public string NumberOfPeopleHomeQuarantined { get; set; }
        public string NumberOfPeopleHospitalQuarantined { get; set; }
        public string NumberOfDeaths { get; set; }
        public string NumberOfPeopleRecovered { get; set; }
        public string TotalCases { get; set; }
        public string TotalResultWaitingCases { get; set; }
        public string NumberOfDeathsInChildGroup { get; set; }
        public string NumberOfDeathsInAdultGroup { get; set; }
        public string NumberOfDeathsInSeniorGroup { get; set; }
        public string NumberOfCasesInImported { get; set; }
    }

    public class OverallStatistic
    {
        public string Date { get; set; }
        public string DateString { get; set; }
        public string NumberOfCases { get; set; }
        public string NumberOfDeaths { get; set; }
        public string NumberOfRecovered { get; set; }
    }

    public class OverallStatistics1
    {
        public string Date { get; set; }
        public string DateString { get; set; }
        public string NumberOfCases { get; set; }
        public string NumberOfDeaths { get; set; }
        public string NumberOfRecovered { get; set; }
    }

    public class Pie
    {
        public string Title { get; set; }
        public string Value { get; set; }
    }

    public class AgeWiseData
    {
        public string Category { get; set; }
        public string Units { get; set; }
        public List<Pie> Pie { get; set; }
    }

    public class Male
    {
        public string Name { get; set; }
        public object Value { get; set; }
    }

    public class Female
    {
        public string Name { get; set; }
        public object Value { get; set; }
    }

    public class GenderWiseData
    {
        public List<Male> Male { get; set; }
        public List<Female> Female { get; set; }
    }

    public class News
    {
        public string Link { get; set; }
        public string Name { get; set; }
    }

    public class Data
    {
        public List<DoublingFactor> DoublingFactors { get; set; }
        public List<TotalCas> TotalCases { get; set; }
        public List<CountryWiseStatistic> CountryWiseStatistics { get; set; }
        public string LastPublishedDate { get; set; }
        public List<ParishesWiseReport> ParishesWiseReport { get; set; }
        public List<OverallStatistic> OverallStatistics { get; set; }
        public List<OverallStatistics1> OverallStatistics1 { get; set; }
        public List<AgeWiseData> AgeWiseData { get; set; }
        public GenderWiseData GenderWiseData { get; set; }
        public List<News> News { get; set; }
        public string Lat { get; set; }
        public string Lng { get; set; }
        public string QuarantineDays { get; set; }
    }

    public class Error
    {
    }

    public class Root
    {
        public string Message { get; set; }
        public Data Data { get; set; }
        public Error Error { get; set; }
    }


}