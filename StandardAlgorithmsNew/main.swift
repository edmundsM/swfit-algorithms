//
//  main.swift
//  StandardAlgorithmsNew
//
//  Created by Edmunds, Maximilian (NA) on 16/11/2021.
//



let sorting = Sorting()
let searching = Searching()
let targetItem = 123
let dataInput = [1,5,899,23,52,1,345,211,52,1,14,5,1,86,8]
let dataInputWithTarget = [1,5,899,23,52,1,345,123,211,52,1,14,5,1,86,8]
let bubbleOutput = sorting.bubbleSort(dataInput)
let insertionOutput = sorting.insertionSort(dataInput)
let mergeOutput = sorting.mergeSort(dataInput)
let quickOutput = sorting.quickSort(dataInput)
let linearOutput1 = searching.linearSearch(dataInput, targetItem)
let linearOutput2 = searching.linearSearch(dataInputWithTarget, targetItem)
let binaryOutput1 = searching.binarySearch(dataInput, targetItem)
let binaryOutput2 = searching.binarySearch(dataInputWithTarget, targetItem)

print("""
    Bubble sort is a sorting algorithm that repeatedly steps through the list, compares adjacent elements and swaps them if they are in the wrong order.

    The time complexity is O(n^2)

    The space complexity is O(1)

    Input : [1,5,899,23,52,1,345,211,52,1,14,5,1,86,8]

    Output : \(bubbleOutput)
      


    Insertion sort is a simple sorting algorithm that builds the final sorted array one item at a time.

    The time complexity is O(n^2)

    The space complexity is O(1)

    Input : [1,5,899,23,52,1,345,211,52,1,14,5,1,86,8]

    Output : \(insertionOutput)



    Merge sort is a sorting technique that sequences data by continuously splitting and merging items in the list while ordering them.

    The time complexity is O(nLogn)

    The space complexity is O(n)

    Input : [1,5,899,23,52,1,345,211,52,1,14,5,1,86,8]

    Output : \(mergeOutput)
      


    Quicksort is a divide-and-conquer algorithm. It works by selecting a 'pivot' element from the array and partitioning the other elements into two sub-arrays, according to whether they are less than or greater than the pivot.
          
    The time complexity is O(n^2)
          
    The space complexity is O(1)
          
    Input : [1,5,899,23,52,1,345,211,52,1,14,5,1,86,8]
          
    Output : \(quickOutput)
      


    Linear search is a searching algorithm that filters through every item in a list until it either finds its target or reaches the end of the list.
          
    The time complexity is O(n)
          
    The space complexity is O(1)
          
    Input array : [1,5,899,23,52,1,345,211,52,1,14,5,1,86,8]
                
    Input target : 123
          
    Output : \(linearOutput1)
                
    Input array : [1,5,899,23,52,1,345,123,211,52,1,14,5,1,86,8]
                
    Input target : 123
          
    Output : \(linearOutput2)
      


    Bubble sort is a sorting algorithm that repeatedly steps through the list, compares adjacent elements and swaps them if they are in the wrong order.
      
    The time complexity is O(n^2)
      
    The space complexity is O(1)
        Bubble sort is a sorting algorithm that repeatedly steps through the list, compares adjacent elements and swaps them if they are in the wrong order.
        
    The time complexity is O(n^2)
      
    The space complexity is O(1)
        
    Input array : [1,5,899,23,52,1,345,211,52,1,14,5,1,86,8]
        
    Input target : 123

    Output : \(binaryOutput1)
        
    Input array : [1,5,899,23,52,1,345,123,211,52,1,14,5,1,86,8]
  
    Input target : 123

    Output : \(binaryOutput2)
      
""")






