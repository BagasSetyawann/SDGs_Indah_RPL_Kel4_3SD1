var dataTable;

function csvToJson(csv) {
  const lines = csv.split("\n");
  const result = [];
  const headers = lines[0].split(",");

  for (let i = 1; i < lines.length; i++) {
    const obj = {};
    const currentLine = lines[i].split(",");

    for (let j = 0; j < headers.length; j++) {
      obj[headers[j]] = currentLine[j];
    }

    result.push(obj);
  }

  return result; // Mengembalikan array objek JSON, bukan JSON string
}
var Global;

// Contoh penggunaan
const csvURL = `https://raw.githubusercontent.com/marchawilda/rpl/main/data_populasi.csv`;

// Mengambil data dari URL menggunakan fetch
fetch(csvURL)
  .then((response) => response.text()) // Mengambil teks dari respons
  .then((csvData) => {
    // Mengonversi teks CSV menjadi JSON
    Global = csvToJson(csvData);
  })
  .catch((error) => {
    console.error("Error fetching the CSV data:", error);
  });
// Called once the page has loaded
document.addEventListener("ready", function (event) {
  loadData(Global);
  elementReady("#table").then((table) => {
    dataTable = $(table).DataTable({
      paging: false,
      select: true,
      searching: true,
    });
  });
});

function elementReady(selector) {
  return new Promise((resolve, reject) => {
    const el = document.querySelector(selector);
    if (el) {
      resolve(el);
    }
    new MutationObserver((mutationRecords, observer) => {
      // Query for elements matching the specified selector
      Array.from(document.querySelectorAll(selector)).forEach(
        (element) => {
          resolve(element);
          //Once we have resolved we don't need the observer anymore.
          observer.disconnect();
        }
      );
    }).observe(document.documentElement, {
      childList: true,
      subtree: true,
    });
  });
}

function loadData(jsonData) {
  this.rows = jsonData;
  this.cols = Object.keys(this.rows[0]);
  this.filters = [];

  for (var row in this.rows) {
    var value = this.rows[row];
    if (!this.filters.includes(value)) {
      this.filters.push(value);
    }
  }

  outputRows(this.rows);
  console.log(this.rows)
}

function outputRows(rows) {
  var template = Handlebars.compile(
    document.getElementById("table-template").innerHTML
  );
  document.getElementById("table-container").innerHTML = template({
    rows: rows,
    cols: cols,
  });
}

function filterRows(filterValue) {
  dataTable.search(filterValue).draw();
}

$(document).ready(function () {
    $("#example").DataTable();
});