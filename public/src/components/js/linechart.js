// set the dimensions and margins of the graph
var margin = { top: 20, right: 100, bottom: 40, left: 70 },
    width = 600 - margin.left - margin.right,
    height = 400 - margin.top - margin.bottom;

// append the svg object to the body of the page
var svg4 = d3.select("#my_dataviz_line")
    .append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
    .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

// Read the data
d3.csv("https://raw.githubusercontent.com/marchawilda/rpl/main/data_populasi.csv", function (data) {

    // Transpose the dataset
    var transposedData = d3.transpose(data.map(function (d) {
        return Object.values(d).slice(2); // Assuming the first two columns are not needed in the transpose
    }));

    // List of groups (here I have one group per column)
    var allGroup = data.map(function (d) { return d.NAME_1; });

    // Add the options to the button
    d3.select("#selectButton")
        .selectAll('myOptions')
        .data(allGroup)
        .enter()
        .append('option')
        .text(function (d) { return d; }) // text showed in the menu
        .attr("value", function (d) { return d; }) // corresponding value returned by the button

    // A color scale: one color for each group
    var myColor = d3.scaleOrdinal()
        .domain(allGroup)
        .range(d3.schemeSet2);

    // Find the maximum value in the dataset
    var maxValue = d3.max(transposedData.flat());

    // Add X axis
    var x = d3.scaleBand()
        .domain(["pop20", "pop21", "pop22"])
        .range([0, width])
        .padding(0.1);

    svg4.append("g")
        .attr("transform", "translate(0," + height + ")")
        .call(d3.axisBottom(x));

    // Add Y axis
    var y = d3.scaleLinear()
        .domain([0, 50000])
        .range([height, 0]);

    svg4.append("g")
        .call(d3.axisLeft(y));

    // Add X axis title
    svg4.append("text")
        .attr("class", "axis-title")
        .attr("text-anchor", "middle")
        .attr("transform", "translate(" + (width / 2) + "," + (height + margin.bottom) + ")")
        .text("Tahun");

    // Add Y axis title
    svg4.append("text")
        .attr("class", "axis-title")
        .attr("text-anchor", "middle")
        .attr("transform", "rotate(-90)")
        .attr("y", 0 - margin.left)
        .attr("x", 0 - (height / 2))
        .text("");

    // Add Y axis label
    svg4.append("text")
        .attr("class", "axis-label")
        .attr("text-anchor", "middle")
        .attr("transform", "rotate(-90)")
        .attr("y", 0 - margin.left + 20)
        .attr("x", 0 - (height / 2))
        .text("Jumlah Populasi (ribu)");

    // Initialize line with group a
    var line = svg4
        .append('g')
        .append("path")
        .datum(transposedData)
        .attr("class", "line")
        .attr("d", d3.line()
            .x(function (_, i) { return x(["pop20", "pop21", "pop22"][i]) + x.bandwidth() / 2; })
            .y(function (d) { return y(+d[0]) })
        )
        .attr("stroke", function (d) { return myColor(allGroup[0]) });

    // A function that updates the chart
    function update(selectedGroup) {

        // Create new data with the selection
        var dataFilter = transposedData.map(function (d, i) {
            return { time: i, value: d[allGroup.indexOf(selectedGroup)] };
        });

        // Give this new data to update the line
        line
            .datum(dataFilter)
            .transition()
            .duration(1000)
            .attr("d", d3.line()
                .x(function (_, i) { return x(["pop20", "pop21", "pop22"][i]) + x.bandwidth() / 2; })
                .y(function (d) { return y(+d.value) })
            )
            .attr("stroke", function (d) { return myColor(selectedGroup) });
    }

    // When the button is changed, run the updateChart function
    d3.select("#selectButton").on("change", function () {
        // Recover the option that has been chosen
        var selectedOption = d3.select(this).property("value");
        // Run the updateChart function with this selected option
        update(selectedOption);
    });

});