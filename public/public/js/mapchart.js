// The svg
var svg = d3.select("#my_dataviz_peta"),
    width = +svg.attr("width"),
    height = +svg.attr("height");

// Map and projection
var path = d3.geoPath();
var projection = d3.geoMercator()
    .scale(500)
    .center([150, 18])
    .translate([width / 1.2, height / 15]);

// Data and color scale
var data = d3.map();
var colorScale = d3.scaleThreshold()
    .domain([600, 1200, 1800, 2400, 3000, 3600, 4200, 4800])
    .range(d3.schemeGreens[9]);

// Load external data and boot
d3.queue()
    .defer(d3.json, "https://raw.githubusercontent.com/marchawilda/rpl/main/gadm41_IDN_1_fix.json")
    .defer(d3.csv, "https://raw.githubusercontent.com/marchawilda/rpl/main/data_populasi.csv", function (d) { data.set(d.CC_1, +d.pop20); })
    .await(ready);

function ready(error, topo) {

    // Add tooltip element
    var tooltip_peta = d3.select("body").append("div")
        .attr("class", "tooltip_peta")
        .style("opacity", 0);

    let mouseOver = function (d) {
        d3.selectAll(".Provinsi")
            .transition()
            .duration(200)
            .style("opacity", .5)
        d3.select(this)
            .transition()
            .duration(200)
            .style("opacity", .5)
            .style("stroke", "blue")

        // Tampilkan tooltip dengan informasi tambahan
        tooltip_peta.transition()
            .duration(200)
            .style("opacity", .9);
        tooltip_peta.html("Provinsi: " + d.properties.NAME_1 + "<br>Populasi: " + (data.get(d.id) || 0) + " ribu jiwa")
            .style("left", (d3.event.pageX) + "px")
            .style("top", (d3.event.pageY - 28) + "px");
    }

    let mouseLeave = function (d) {
        d3.selectAll(".Provinsi")
            .transition()
            .duration(200)
            .style("opacity", .8)
        d3.select(this)
            .transition()
            .duration(0)
            .style("stroke", "transparent")

        // Sembunyikan tooltip
        tooltip_peta.transition()
            .duration(500)
            .style("opacity", 0);
    }

    // Fungsi mousemove
    let mouseMove = function (d) {
        tooltip_peta.style("left", (d3.event.pageX) + "px")
            .style("top", (d3.event.pageY - 28) + "px");
    }

    // Draw the map
    svg.append("g")
        .selectAll("path")
        .data(topo.features)
        .enter()
        .append("path")
        // draw each province
        .attr("d", d3.geoPath()
            .projection(projection)
        )
        // set the color of each province
        .attr("fill", function (d) {
            d.total = data.get(d.id) || 0; // 
            return colorScale(d.total);
        })
        .style("stroke", "transparent")
        .attr("class", function (d) { return "Provinsi" })
        .style("opacity", .8)
        .on("mouseover", mouseOver)
        .on("mouseleave", mouseLeave)
        .on("mousemove", mouseMove); // Tambahkan event mousemove

    // When the dropdown changes, run the updateMap function
    d3.select("#yearDropdown_peta").on("change", function () {
        var selectedYear = d3.select(this).property("value");
        updateMap(selectedYear);
    });

    // Initial map rendering
    updateMap("pop20");
}

function updateMap(selectedYear) {
    // Update map based on selected year
    var newData = d3.map();
    var newColorScale = d3.scaleThreshold()
        .domain([600, 1200, 1800, 2400, 3000, 3600, 4200, 4800])
        .range(d3.schemeGreens[9]);

    d3.queue()
        .defer(d3.json, "https://raw.githubusercontent.com/marchawilda/rpl/main/gadm41_IDN_1_fix.json")
        .defer(d3.csv, "https://raw.githubusercontent.com/marchawilda/rpl/main/data_populasi.csv", function (d) { newData.set(d.CC_1, +d[selectedYear]); })
        .await(function (error, topo) {
            // Assign the new data and color scale
            data = newData;
            colorScale = newColorScale;

            // Update the map based on the new data
            svg.selectAll(".Provinsi")
                .attr("fill", function (d) {
                    d.total = data.get(d.id) || 0;
                    return colorScale(d.total);
                });
        });
}