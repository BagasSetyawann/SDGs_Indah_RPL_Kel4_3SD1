// set the dimensions and margins of the graph
var margin = { top: 10, right: 30, bottom: 120, left: 80 },
    width = 510 - margin.left - margin.right,
    height = 460 - margin.top - margin.bottom;

// append the svg object to the body of the page
var svg1 = d3
    .select("#my_dataviz_bar")
    .append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
    .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

//Read the data
d3.csv($("#urlDataSet").val(), function (data) {
    // Extract the years from the dataset
    var years = Object.keys(data[0]).filter(function (key) {
        return key !== "NAME_1";
    });

    // add the options to the button
    d3.select("#yearDropdown_bar")
        .selectAll("myOptions")
        .data(years)
        .enter()
        .append("option")
        .text(function (d) {
            return d;
        }) // text showed in the menu
        .attr("value", function (d) {
            return d;
        }); // corresponding value returned by the button

    // A color scale: one color for each year
    var myColor = d3.scaleOrdinal().domain(years).range(d3.schemeSet2);

    // Add X axis --> it is a date format
    var x = d3
        .scaleBand()
        .domain(data.map(function (d) {
            return d.NAME_1;
        }))
        .range([0, width])
        .padding(0.1);

    svg1
        .append("g")
        .attr("transform", "translate(0," + height + ")")
        .call(d3.axisBottom(x))
        .selectAll("text")
        .attr("transform", "translate(-10,0)rotate(-45)")
        .style("text-anchor", "end")
        .attr("font-size", "12px");

    // Add Y axis
    var y = d3.scaleLinear().domain([0, d3.max(data, function (d) { return +d3.max(years, function (y) { return d[y]; }); })]).range([height, 0]);

    svg1.append("g").call(d3.axisLeft(y));

    // Add X axis label
    svg1.append("text")
        .attr("text-anchor", "middle")
        .attr("transform", "translate(" + width / 2 + "," + (height + margin.bottom - 10) + ")")
        .style("font-size", "14px")
        .text("");

    // Add Y axis label
    svg1.append("text")
        .attr("text-anchor", "middle")
        .attr("transform", "rotate(-90)")
        .attr("y", 20 - margin.left)
        .attr("x", 0 - height / 2)
        .style("font-size", "14px")
        .text("Population (in thousands)");

    // Initialize bar chart with the first year
    var bars = svg1
        .selectAll("mybar")
        .data(data)
        .enter()
        .append("rect")
        .attr("x", function (d) {
            return x(d.NAME_1);
        })
        .attr("y", function (d) {
            return y(d[years[0]]);
        })
        .attr("width", x.bandwidth())
        .attr("height", function (d) {
            return height - y(d[years[0]]);
        })
        .attr("fill", function (d) {
            return myColor(years[0]);
        })
        .style("opacity", 0.7)
        .on("mouseover", function (d) {
            d3.select(this).style("opacity", 1);
        })
        .on("mouseleave", function (d) {
            d3.select(this).style("opacity", 0.7);
        })
        .on("mousemove", function (d) {
            tooltip_bar
                .html("Province: " + d.NAME_1 + "<br>Population: " + (d[years[2]] || 0) + " thousand people")
                .style("left", d3.event.pageX + "px")
                .style("top", d3.event.pageY - 28 + "px");
        });

    // Add tooltip element
    var tooltip_bar = d3.select("body").append("div").attr("class", "tooltip_bar").style("opacity", 0);

    // A function that update the chart
    function update(selectedYear) {
        // Give new data to update bars
        bars
            .data(data)
            .transition()
            .duration(1000)
            .attr("y", function (d) {
                return y(d[selectedYear]);
            })
            .attr("height", function (d) {
                return height - y(d[selectedYear]);
            })
            .attr("fill", function (d) {
                return myColor(selectedYear);
            });

        // Show tooltip with additional information
        // tooltip_bar.transition()
        //     .duration(1000)
        //     .style("opacity", .9);
        // tooltip_bar.html("Province: " + d.NAME_1 + "<br>Population: " + (d[[selectedYear]] || 0) + " thousand people")
        //     .style("left", (d3.event.pageX) + "px")
        //     .style("top", (d3.event.pageY - 28) + "px");
    }

    // When the button is changed, run the updateChart function
    d3.select("#yearDropdown_bar").on("change", function (d) {
        // recover the option that has been chosen
        var selectedOption = d3.select(this).property("value");
        // run the updateChart function with this selected option
        update(selectedOption);
    });
});