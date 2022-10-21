List<Integer> nums = new List<Integer>{1,6,2,1,6,1};
    Map<Integer, Integer> numMap = new HashMap<>();
    for (Integer num : nums){
        if (numMap.containsKey(num)){
            Integer numFreq = numMap.get(num);
            numMap.put(num, numFreq+1);
        } else {
            numMap.put(num, 1);
        }
    }
     
    Integer biggestFreq = 0;
    Integer biggestVal = 0;
    for (Integer num : numMap.keySet()){
        if (numMap.get(num) > biggestFreq){
            biggestFreq = numMap.get(num);
            biggestVal = num;
        }
    }
     
    System.debug(biggestVal);
