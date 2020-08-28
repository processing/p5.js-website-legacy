/*
 * @name QuickSort
 * @description Sorts the randomly distributed bars
 * according to their height in ascending order
 * while simulating the whole sorting process.
 * References taken from a Coding Challenge by The Coding Train.
 */

let values = [];
let w = 10;

// The statements in the setup() function
// execute once when the program begins.
// The array is filled with random values in the setup() function.
function setup() {
  createCanvas(710, 400);
  values = new Array(floor(width / w));
  for (let i = 0; i < values.length; i++) {
    values[i] = random(height);
  }
  quickSort(values, 0, values.length - 1);
}

// The statements in draw() function are executed until the
// program is stopped. Each statement is executed in
// sequence and after the last line is read, the first
// line is executed again.
function draw() {
  background(0);
  for (let i = 0; i < values.length; i++) {
    stroke(0);
    fill('#4f8a8b');
    rect(i * w, height - values[i], w, values[i]);
  }
}

// QuickSort is a Divide and Conquer algorithm. It picks
// an element as the pivot and partitions the given array
// around the picked pivot.
async function quickSort(arr, start, end) {
  if (start >= end) {
    return;
  }
  let index = await partition(arr, start, end);
  await Promise.all([
    quickSort(arr, start, index - 1),
    quickSort(arr, index + 1, end)
  ]);
}

// This function partitions the array around the pivot. The
// last array element has been chosen as the pivot.
async function partition(arr, start, end) {
  let pivotValue = arr[end];
  let pivotIndex = start;
  for (let i = start; i < end; i++) {
    if (arr[i] < pivotValue) {
      await swap(arr, i, pivotIndex);
      pivotIndex++;
    }
  }
  await swap(arr, pivotIndex, end);
  return pivotIndex;
}

async function swap(arr, a, b) {
  // A delay is added to force the sorting algorithm to
  // slow down.
  await sleep(75);
  let temp = arr[a];
  arr[a] = arr[b];
  arr[b] = temp;
}

function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}
