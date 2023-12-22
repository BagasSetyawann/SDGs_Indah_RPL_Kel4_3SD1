// set the dimensions and margins of the graph
var margin = { top: 50, right: 30, bottom: 50, left: 50 },
    width = 460 - margin.left - margin.right,
    height = 460 - margin.top - margin.bottom;

// append the svg object to the body of the page
var svg0 = d3
    .select("#my_dataviz_histogram")
    .append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
    .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

// get the data
d3.csv($("#urlDataSet").val(), function (data) {

    // Extract the columns from the dataset
    var columns = Object.keys(data[0]).filter(function (key) {
        return key !== "NAME_1";
    });

    // X axis label
    svg0.append("text")
        .attr("text-anchor", "middle")
        .attr("transform", "translate(" + (width / 2) + "," + (height + margin.bottom - 10) + ")")
        .style("font-size", "14px")
        .text("Population (thousands)");

    // Y axis label
    svg0.append("text")
        .attr("text-anchor", "middle")
        .attr("transform", "rotate(-90)")
        .attr("y", 0 - margin.left)
        .attr("x", 0 - (height / 2))
        .attr("dy", "1em")
        .style("font-size", "14px")
        .text("Frequency");


    // Add the options to the dropdown
    d3.select("#columnDropdown")
        .selectAll("myOptions")
        .data(columns)
        .enter()
        .append("option")
        .text(function (d) { return d; })
        .attr("value", function (d) { return d; });

    // X axis: scale and draw
    var x = d3.scaleLinear()
        .domain([0, 50000])
        .range([0, width]);
    svg0.append("g")
        .attr("transform", "translate(0," + height + ")")
        .call(d3.axisBottom(x));

    // set the parameters for the histogram
    var histogram = d3.histogram()
        .value(function (d) { return +d[columns[1]]; })
        .domain(x.domain())
        .thresholds(x.ticks(40));

    // And apply this function to data to get the bins
    var bins = histogram(data);

    // Y axis: scale and draw
    var y = d3.scaleLinear()
        .range([height, 0])
        .domain([0, d3.max(bins, function (d) { return d.length; })]);
    svg0.append("g").attr("class", "y-axis").call(d3.axisLeft(y));

    // Add a tooltip div.
    var tooltip_histogram = d3.select("#my_dataviz_histogram")
        .append("div")
        .style("opacity", 0)
        .attr("class", "tooltip")
        .style("background-color", "black")
        .style("color", "white")
        .style("border-radius", "5px")
        .style("padding", "10px");

    // A function that changes the tooltip on hover
    var showTooltip_histogram = function (d) {
        tooltip_histogram.transition().duration(100).style("opacity", 1);
        tooltip_histogram.html("Range: " + d.x0 + " - " + d.x1 + "<br>Frequency: " + d.length)
            .style("left", (d3.mouse(this)[0] + 20) + "px")
            .style("top", (d3.mouse(this)[1]) + "px");
    };

    var moveTooltip_histogram = function (d) {
        tooltip_histogram.style("left", (d3.mouse(this)[0] + 20) + "px")
            .style("top", (d3.mouse(this)[1]) + "px");
    };

    // A function that changes the tooltip when leaving a point
    var hideTooltip_histogram = function (d) {
        tooltip_histogram.transition().duration(100).style("opacity", 0);
    };

    // append the bar rectangles to the svg element
    svg0.selectAll("rect")
        .data(bins)
        .enter()
        .append("rect")
        .attr("x", 1)
        .attr("transform", function (d) { return "translate(" + x(d.x0) + "," + y(d.length) + ")"; })
        .attr("width", function (d) { return x(d.x1) - x(d.x0) - 1; })
        .attr("height", function (d) { return height - y(d.length); })
        .attr("class", "bar") // Add a class for styling
        // Show tooltip on hover
        .on("mouseover", showTooltip_histogram)
        .on("mousemove", moveTooltip_histogram)
        .on("mouseleave", hideTooltip_histogram);

    // When the dropdown changes, update the chart
    d3.select("#columnDropdown").on("change", function () {
        var selectedColumn = d3.select(this).property("value");
        updateChart(selectedColumn);
    });

    // Function to update the chart based on selected column
    function updateChart(selectedColumn) {
        // Update histogram based on selected column
        histogram.value(function (d) { return +d[selectedColumn]; });
        bins = histogram(data);

        // Update Y axis
        y.domain([0, d3.max(bins, function (d) { return d.length; })]);
        svg0.select(".y-axis").call(d3.axisLeft(y));

        // Update bars
        svg0.selectAll(".bar")
            .data(bins)
            .transition()
            .duration(500)
            .attr("x", 1)
            .attr("transform", function (d) { return "translate(" + x(d.x0) + "," + y(d.length) + ")"; })
            .attr("width", function (d) { return x(d.x1) - x(d.x0) - 1; })
            .attr("height", function (d) { return height - y(d.length); });
    }
});