var ticksMapping = {
  10: 'UberBlack',
  20: 'uberX',
  30: 'uberVan',
  40: 'uberTaxi'
};
// With JQuery
$("#ex13").slider({
  tooltip: 'hide',
  step: 10,
  ticks: [10, 20, 30, 40],
  ticks_labels: ['UberBlack', 'uberX', 'uberVan', 'uberTaxi'],
  value: 20
}).on('change', function(obj) {
  console.log(obj.value);
  $('.old-value').text(ticksMapping[obj.value.oldValue] || '');
  $('.new-value').text(ticksMapping[obj.value.newValue] || '');
});