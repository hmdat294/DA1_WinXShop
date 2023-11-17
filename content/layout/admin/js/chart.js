
// Biểu Đồ tròn
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart1);
function drawChart1() {
const data = google.visualization.arrayToDataTable([
  ['Thống Kê', 'Mhl'],
  ['Đã Duyệt',54.8],
  ['Đã Hủy',48.6],
  ['Đang Chờ Xử Lý',44.4],
  ['Đang Giao Hàng',23.9],
]);
const options = {
  title:'Thống Kê Trạng Thái Đơn Hàng'
};
const chart = new google.visualization.PieChart(document.getElementById('myChartpie'));
chart.draw(data, options);

}
// biểu đồ cột
const xArray = ["10-11-2023", "11-11-2023", "12-11-2023", "13-11-2023", "14-11-2023"];
const yArray = [55, 49, 44, 24, 15];

const data = [{
  x:xArray,
  y:yArray,
  type:"bar",
  orientation:"v",
  marker: {color:"rgba(0,0,255,0.6)"}
}];

const layout = {title:"Thống Kê Số Lượng Đơn Hàng Đã Bán"};

Plotly.newPlot("myPlot", data, layout);

// biểu đồ cột nằm
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {

// Set Data
const data = google.visualization.arrayToDataTable([
  ['Thống Kê', 'Số Lượng'],
  ['10-11-2023',25],
  ['11-11-2023',69],
  ['12-11-2023',64],
  ['13-11-2023',14],
  ['14-11-2023',5]
]);

// Set Options
const options = {
  title:'Thống Kê Số Lượng Sản Phẩm Đã Bán'
};

// Draw
const chart = new google.visualization.BarChart(document.getElementById('myChartbar'));
chart.draw(data, options);}