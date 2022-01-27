namespace SimpleCMS.Models.JamCovid
{
    using System;
    using System.Collections.Generic;
    using System.Globalization;
    using Newtonsoft.Json;
    using Newtonsoft.Json.Converters;
// Root myDeserializedClass = JsonConvert.DeserializeObject<Root>(myJsonResponse);
    public class DoublingFactor
    {
        public string day { get; set; }
        public string date { get; set; }
        public object total_cases { get; set; }
        public object total_cases_cumulative { get; set; }
        public string _6th_day_doubling { get; set; }
        public string _8th_day_doubling { get; set; }
        public string _10th_day_doubling { get; set; }
        public string _12th_day_doubling { get; set; }
    }

    public class TotalCas
    {
        public string date { get; set; }
        public object tested { get; set; }
        public object positive { get; set; }
        public object tested_cumulative { get; set; }
        public object positive_cumulative { get; set; }
        public string positive_percentage { get; set; }
    }

    public class CountryWiseStatistic
    {
        public string day { get; set; }
        public string China { get; set; }
        public string China_total { get; set; }
        public string China_population { get; set; }

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
        public string Singapore_total { get; set; }
        public string Singapore_population { get; set; }
        public string Italy { get; set; }
        public string Italy_total { get; set; }
        public string Italy_population { get; set; }

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
        public string Panama_total { get; set; }
        public string Panama_population { get; set; }
        public string Jamaica { get; set; }
        public string Jamaica_total { get; set; }
        public string Jamaica_population { get; set; }

        [JsonProperty("Trinidad and Tobago")]
        public string TrinidadAndTobago { get; set; }

        [JsonProperty("Trinidad and Tobago_total")]
        public string TrinidadAndTobagoTotal { get; set; }

        [JsonProperty("Trinidad and Tobago_population")]
        public string TrinidadAndTobagoPopulation { get; set; }
        public string Bahamas { get; set; }
        public string Bahamas_total { get; set; }
        public string Bahamas_population { get; set; }
        public string Barbados { get; set; }
        public string Barbados_total { get; set; }
        public string Barbados_population { get; set; }
    }

    public class ParishesWiseReport
    {
        public string id { get; set; }
        public string parish { get; set; }
        public string code { get; set; }
        public string total_tests_positive { get; set; }
        public string total_tests_negative { get; set; }
        public string number_of_people_home_quarantined { get; set; }
        public string number_of_people_hospital_quarantined { get; set; }
        public string number_of_deaths { get; set; }
        public string number_of_people_recovered { get; set; }
        public string total_cases { get; set; }
        public string total_result_waiting_cases { get; set; }
        public string number_of_deaths_in_child_group { get; set; }
        public string number_of_deaths_in_adult_group { get; set; }
        public string number_of_deaths_in_senior_group { get; set; }
        public string number_of_cases_in_imported { get; set; }
    }

    public class OverallStatistic
    {
        public string date { get; set; }
        public string date_string { get; set; }
        public string number_of_cases { get; set; }
        public string number_of_deaths { get; set; }
        public string number_of_recovered { get; set; }
    }

    public class OverallStatistics1
    {
        public string date { get; set; }
        public string date_string { get; set; }
        public string number_of_cases { get; set; }
        public string number_of_deaths { get; set; }
        public string number_of_recovered { get; set; }
    }

    public class Pie
    {
        public string title { get; set; }
        public string value { get; set; }
    }

    public class AgeWiseData
    {
        public string category { get; set; }
        public string units { get; set; }
        public List<Pie> pie { get; set; }
    }

    public class Male
    {
        public string name { get; set; }
        public object value { get; set; }
    }

    public class Female
    {
        public string name { get; set; }
        public object value { get; set; }
    }

    public class GenderWiseData
    {
        public List<Male> male { get; set; }
        public List<Female> female { get; set; }
    }

    public class News
    {
        public string link { get; set; }
        public string name { get; set; }
    }

    public class Data
    {
        public List<DoublingFactor> doubling_factors { get; set; }
        public List<TotalCas> total_cases { get; set; }
        public List<CountryWiseStatistic> country_wise_statistics { get; set; }
        public string last_published_date { get; set; }
        public List<ParishesWiseReport> parishes_wise_report { get; set; }
        public List<OverallStatistic> overall_statistics { get; set; }
        public List<OverallStatistics1> overall_statistics1 { get; set; }
        public List<AgeWiseData> age_wise_data { get; set; }
        public GenderWiseData gender_wise_data { get; set; }
        public List<News> news { get; set; }
        public string lat { get; set; }
        public string lng { get; set; }
        public string quarantine_days { get; set; }
    }

    public class Error
    {
    }

    public class Root
    {
        public string message { get; set; }
        public Data data { get; set; }
        public Error error { get; set; }
    }


}