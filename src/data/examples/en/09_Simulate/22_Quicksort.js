/*
 * @name Quicksort
 * @arialabel Bars of random heights are sorted from shortest to tallest left to right. The bars turn sage green and coral as they are sorted
 * @frame 710,400
 * @description This is a simulation of the Quicksort 
 * sorting algorithm. We start with an array of bars 
 * and sort them according to their height in ascending 
 * order. References taken from a coding challenge by 
 * The Coding Train.<br><br>
 * Quicksort is a divide-and-conquer algorithm: it 
 * performs sorting by dividing the original array into 
 * smaller subarrays and solving them independently, 
 * loosely speaking. It involves picking an element of 
 * the array as the pivot element and partitioning the 
 * given array around the picked pivot.<br>
 * Partitioning refers to arranging the given array(or 
 * subarray) in such a way that all elements to the left
 * of the pivot element are smaller than it and all 
 * elements to its right are larger than it. Thus, we have 
 * a reference point from where we proceed to sort the 
 * left and right 'halves' of the array, and eventually
 * arrive at an array sorted in ascending order.
 * <a href="https://www.geeksforgeeks.org/quick-sort/">
 * More</a><br>
 */

// width of each bar is taken as 8.
let values = [];
// The array 'states' helps in identifying the pivot index
// at every step, and also the subarray which is being sorted
// at any given time. 
let states = [];

// The setup() function is called once when the program 
// starts. Here, we fill the array 'values' with random values
// and the array 'states' with a value of -1 for each position.
function setup() {
  createCanvas(710, 400);
  for(let i = 0; i < width/8; i++) {
    values.push(random(height));
    states.push(-1);
  }
  quickSort(0, values.length - 1);
}

// The statements in draw() function are executed continuously
// until the program is stopped. Each statement is executed
// sequentially and after the last line is read, the first
// line is executed again.
function draw() {
  background(140);
  for(let i = 0; i < values.length; i++) {
    // color coding
    if (states[i] == 0) {
      // color for the bar at the pivot index
      fill('#E0777D');
    } else if (states[i] == 1) {
      // color for the bars being sorted currently
      fill('#D6FFB7');
    } else {
      fill(255);
    }
    rect(i * 8, height - values[i], 8, values[i]);
   }
}

async function quickSort(start, end) {
  if (start > end) {  // Nothing to sort!
    return;
  }
  // partition() returns the index of the pivot element.
  // Once partition() is executed, all elements to the  
  // left of the pivot element are smaller than it and 
  // all elements to its right are larger than it.
  let index = await partition(start, end);
  // restore original state
  states[index] = -1;
  await Promise.all(
    [quickSort(start, index - 1), 
     quickSort(index + 1, end)
    ]);
}

// We have chosen the element at the last index as 
// the pivot element, but we could've made different
// choices, e.g. take the first element as pivot.
async function partition(start, end) {
  for (let i = start; i < end; i++) {
    // identify the elements being considered currently
    states[i] = 1;
  }
  // Quicksort algorithm
  let pivotIndex = start;
  // make pivot index distinct
  states[pivotIndex] = 0;
  let pivotElement = values[end];
  for (let i = start; i < end; i++) {
    if (values[i] < pivotElement) {
      await swap(i, pivotIndex);
      states[pivotIndex] = -1;
      pivotIndex++;
      states[pivotIndex] = 0;
    }
  }
  await swap(end, pivotIndex);
  for (let i = start; i < end; i++) {
    // restore original state
    if (i != pivotIndex) {
      states[i] = -1;
    }
  }
  return pivotIndex;
}

// swaps elements of 'values' at indices 'i' and 'j'
async function swap(i, j) {
  // adjust the pace of the simulation by changing the
  // value
  await sleep(25);
  let temp = values[i];
  values[i] = values[j];
  values[j] = temp;
}

// custom helper function to deliberately slow down
// the sorting process and make visualization easy
function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}