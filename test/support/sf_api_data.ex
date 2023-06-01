defmodule Chuckwagon.Support.SFApiData do
  def successful_response() do
    %HTTPoison.Response{
      status_code: 200,
      body:
        "[{\"objectid\":\"1658680\",\"applicant\":\"The New York Frankfurter Co. of CA, Inc. DBA: Annie's Hot Dogs\",\"facilitytype\":\"Push Cart\",\"cnn\":\"12195000\",\"locationdescription\":\"STOCKTON ST: OFARRELL ST to GEARY ST (100 - 199)\",\"address\":\"101 STOCKTON ST\",\"blocklot\":\"0314002\",\"block\":\"0314\",\"lot\":\"002\",\"permit\":\"22MFF-00069\",\"status\":\"APPROVED\",\"fooditems\":\"Soft Pretzels: hot dogs: sausage: chips: popcorn: soda: espresso: cappucino: pastries: ice cream: italian sausages: shish-ka-bob: churros: juice: water: various drinks\",\"x\":\"6010660.159\",\"y\":\"2114587.863\",\"latitude\":\"37.786856111883054\",\"longitude\":\"-122.40689189299718\",\"schedule\":\"http://bsm.sfdpw.org/PermitsTracker/reports/report.aspx?title=schedule&report=rptSchedule&params=permit=22MFF-00069&ExportPDF=1&Filename=22MFF-00069_schedule.pdf\",\"approved\":\"2022-11-09T00:00:00.000\",\"received\":\"20221109\",\"priorpermit\":\"1\",\"expirationdate\":\"2023-11-15T00:00:00.000\",\"location\":{\"latitude\":\"37.786856111883054\",\"longitude\":\"-122.40689189299718\",\"human_address\":\"{\\\"address\\\": \\\"\\\", \\\"city\\\": \\\"\\\", \\\"state\\\": \\\"\\\", \\\"zip\\\": \\\"\\\"}\"},\":id\":\"row-dutw~yvwa_3354\"}\n,{\"objectid\":\"1660554\",\"applicant\":\"Bay Area Mobile Catering, Inc. dba. Taqueria Angelica's\",\"facilitytype\":\"Truck\",\"cnn\":\"5683000\",\"locationdescription\":\"FOLSOM ST: 11TH ST to NORFOLK ST (1500 - 1548)\",\"address\":\"1501 FOLSOM ST\",\"blocklot\":\"3521058\",\"block\":\"3521\",\"lot\":\"058\",\"permit\":\"22MFF-00075\",\"status\":\"APPROVED\",\"fooditems\":\"Tacos: burritos: soda & juice\",\"x\":\"6008490.781\",\"y\":\"2109071.076\",\"latitude\":\"37.771586702670334\",\"longitude\":\"-122.41400704302406\",\"schedule\":\"http://bsm.sfdpw.org/PermitsTracker/reports/report.aspx?title=schedule&report=rptSchedule&params=permit=22MFF-00075&ExportPDF=1&Filename=22MFF-00075_schedule.pdf\",\"approved\":\"2022-11-22T00:00:00.000\",\"received\":\"20221118\",\"priorpermit\":\"1\",\"expirationdate\":\"2023-11-15T00:00:00.000\",\"location\":{\"latitude\":\"37.771586702670334\",\"longitude\":\"-122.41400704302406\",\"human_address\":\"{\\\"address\\\": \\\"\\\", \\\"city\\\": \\\"\\\", \\\"state\\\": \\\"\\\", \\\"zip\\\": \\\"\\\"}\"},\":id\":\"row-ddu9-2dqa-fngb\"}]\n",
      headers: [
        {"Server", "nginx"},
        {"Date", "Thu, 01 Jun 2023 00:56:43 GMT"},
        {"Content-Type", "application/json;charset=utf-8"},
        {"Transfer-Encoding", "chunked"},
        {"Connection", "keep-alive"},
        {"Access-Control-Allow-Origin", "*"},
        {"ETag",
         "W/\"YWxwaGEuMzkyNF81XzI4MTczczZ6UE9qSlYyZFNLeHAyU0xWOE8xampRU0U---gzioNs8LgeLy173wccNH97gIqLp08dg--gzip--gzip\""},
        {"X-SODA2-Fields",
         "[\"objectid\",\"applicant\",\"facilitytype\",\"cnn\",\"locationdescription\",\"address\",\"blocklot\",\"block\",\"lot\",\"permit\",\"status\",\"fooditems\",\"x\",\"y\",\"latitude\",\"longitude\",\"schedule\",\"dayshours\",\"noisent\",\"approved\",\"received\",\"priorpermit\",\"expirationdate\",\"location\",\":id\"]"},
        {"X-SODA2-Types",
         "[\"number\",\"text\",\"text\",\"number\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"number\",\"number\",\"number\",\"number\",\"text\",\"text\",\"floating_timestamp\",\"floating_timestamp\",\"text\",\"number\",\"floating_timestamp\",\"location\",\"row_identifier\"]"},
        {"X-SODA2-Data-Out-Of-Date", "false"},
        {"X-SODA2-Truth-Last-Modified", "Fri, 05 May 2023 12:15:06 GMT"},
        {"X-SODA2-Secondary-Last-Modified", "Fri, 05 May 2023 12:15:06 GMT"},
        {"Last-Modified", "Fri, 05 May 2023 12:15:06 GMT"},
        {"Vary", "Accept-Encoding"},
        {"Age", "0"},
        {"X-Socrata-Region", "aws-us-east-1-fedramp-prod"},
        {"Strict-Transport-Security", "max-age=31536000; includeSubDomains"},
        {"X-Socrata-RequestId", "201367b0d6aa2fc9cde8b727da87f92e"}
      ],
      request_url:
        "https://data.sfgov.org/api/id/rqzj-sfat.json?$query=select%20*,%20:id%20search%20'soda'%20limit%202&$$query_timeout_seconds=30",
      request: %HTTPoison.Request{
        method: :get,
        url:
          "https://data.sfgov.org/api/id/rqzj-sfat.json?$query=select%20*,%20:id%20search%20'soda'%20limit%202&$$query_timeout_seconds=30",
        headers: [],
        body: "",
        params: %{},
        options: []
      }
    }
  end

  def status_code_different_from_200() do
    %HTTPoison.Response{
      status_code: 300,
      body:
        "[{\"objectid\":\"1658680\",\"applicant\":\"The New York Frankfurter Co. of CA, Inc. DBA: Annie's Hot Dogs\",\"facilitytype\":\"Push Cart\",\"cnn\":\"12195000\",\"locationdescription\":\"STOCKTON ST: OFARRELL ST to GEARY ST (100 - 199)\",\"address\":\"101 STOCKTON ST\",\"blocklot\":\"0314002\",\"block\":\"0314\",\"lot\":\"002\",\"permit\":\"22MFF-00069\",\"status\":\"APPROVED\",\"fooditems\":\"Soft Pretzels: hot dogs: sausage: chips: popcorn: soda: espresso: cappucino: pastries: ice cream: italian sausages: shish-ka-bob: churros: juice: water: various drinks\",\"x\":\"6010660.159\",\"y\":\"2114587.863\",\"latitude\":\"37.786856111883054\",\"longitude\":\"-122.40689189299718\",\"schedule\":\"http://bsm.sfdpw.org/PermitsTracker/reports/report.aspx?title=schedule&report=rptSchedule&params=permit=22MFF-00069&ExportPDF=1&Filename=22MFF-00069_schedule.pdf\",\"approved\":\"2022-11-09T00:00:00.000\",\"received\":\"20221109\",\"priorpermit\":\"1\",\"expirationdate\":\"2023-11-15T00:00:00.000\",\"location\":{\"latitude\":\"37.786856111883054\",\"longitude\":\"-122.40689189299718\",\"human_address\":\"{\\\"address\\\": \\\"\\\", \\\"city\\\": \\\"\\\", \\\"state\\\": \\\"\\\", \\\"zip\\\": \\\"\\\"}\"},\":id\":\"row-dutw~yvwa_3354\"}\n,{\"objectid\":\"1660554\",\"applicant\":\"Bay Area Mobile Catering, Inc. dba. Taqueria Angelica's\",\"facilitytype\":\"Truck\",\"cnn\":\"5683000\",\"locationdescription\":\"FOLSOM ST: 11TH ST to NORFOLK ST (1500 - 1548)\",\"address\":\"1501 FOLSOM ST\",\"blocklot\":\"3521058\",\"block\":\"3521\",\"lot\":\"058\",\"permit\":\"22MFF-00075\",\"status\":\"APPROVED\",\"fooditems\":\"Tacos: burritos: soda & juice\",\"x\":\"6008490.781\",\"y\":\"2109071.076\",\"latitude\":\"37.771586702670334\",\"longitude\":\"-122.41400704302406\",\"schedule\":\"http://bsm.sfdpw.org/PermitsTracker/reports/report.aspx?title=schedule&report=rptSchedule&params=permit=22MFF-00075&ExportPDF=1&Filename=22MFF-00075_schedule.pdf\",\"approved\":\"2022-11-22T00:00:00.000\",\"received\":\"20221118\",\"priorpermit\":\"1\",\"expirationdate\":\"2023-11-15T00:00:00.000\",\"location\":{\"latitude\":\"37.771586702670334\",\"longitude\":\"-122.41400704302406\",\"human_address\":\"{\\\"address\\\": \\\"\\\", \\\"city\\\": \\\"\\\", \\\"state\\\": \\\"\\\", \\\"zip\\\": \\\"\\\"}\"},\":id\":\"row-ddu9-2dqa-fngb\"}]\n",
      headers: [
        {"Server", "nginx"},
        {"Date", "Thu, 01 Jun 2023 00:56:43 GMT"},
        {"Content-Type", "application/json;charset=utf-8"},
        {"Transfer-Encoding", "chunked"},
        {"Connection", "keep-alive"},
        {"Access-Control-Allow-Origin", "*"},
        {"ETag",
         "W/\"YWxwaGEuMzkyNF81XzI4MTczczZ6UE9qSlYyZFNLeHAyU0xWOE8xampRU0U---gzioNs8LgeLy173wccNH97gIqLp08dg--gzip--gzip\""},
        {"X-SODA2-Fields",
         "[\"objectid\",\"applicant\",\"facilitytype\",\"cnn\",\"locationdescription\",\"address\",\"blocklot\",\"block\",\"lot\",\"permit\",\"status\",\"fooditems\",\"x\",\"y\",\"latitude\",\"longitude\",\"schedule\",\"dayshours\",\"noisent\",\"approved\",\"received\",\"priorpermit\",\"expirationdate\",\"location\",\":id\"]"},
        {"X-SODA2-Types",
         "[\"number\",\"text\",\"text\",\"number\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"number\",\"number\",\"number\",\"number\",\"text\",\"text\",\"floating_timestamp\",\"floating_timestamp\",\"text\",\"number\",\"floating_timestamp\",\"location\",\"row_identifier\"]"},
        {"X-SODA2-Data-Out-Of-Date", "false"},
        {"X-SODA2-Truth-Last-Modified", "Fri, 05 May 2023 12:15:06 GMT"},
        {"X-SODA2-Secondary-Last-Modified", "Fri, 05 May 2023 12:15:06 GMT"},
        {"Last-Modified", "Fri, 05 May 2023 12:15:06 GMT"},
        {"Vary", "Accept-Encoding"},
        {"Age", "0"},
        {"X-Socrata-Region", "aws-us-east-1-fedramp-prod"},
        {"Strict-Transport-Security", "max-age=31536000; includeSubDomains"},
        {"X-Socrata-RequestId", "201367b0d6aa2fc9cde8b727da87f92e"}
      ],
      request_url:
        "https://data.sfgov.org/api/id/rqzj-sfat.json?$query=select%20*,%20:id%20search%20'soda'%20limit%202&$$query_timeout_seconds=30",
      request: %HTTPoison.Request{
        method: :get,
        url:
          "https://data.sfgov.org/api/id/rqzj-sfat.json?$query=select%20*,%20:id%20search%20'soda'%20limit%202&$$query_timeout_seconds=30",
        headers: [],
        body: "",
        params: %{},
        options: []
      }
    }
  end

  def error_response() do
    %HTTPoison.Error{reason: "some_reason"}
  end
end
