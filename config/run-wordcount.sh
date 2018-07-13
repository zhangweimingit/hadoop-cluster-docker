#!/bin/bash

# test the hadoop cluster by running wordcount

# create input directory on HDFS
hadoop fs -mkdir -p input

# put input files to HDFS
hdfs dfs -put ./input/* input

# run wordcount 
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-3.1.0.jar \
    -input input \
    -output output \
    -mapper ~/mapperC \
    -reducer ~/reduceC

hdfs dfs -get output/* ./output
# print the input files
#echo -e "\ninput file1.txt:"
#hdfs dfs -cat input/file1.txt

#echo -e "\ninput file2.txt:"
#hdfs dfs -cat input/file2.txt

# print the output of wordcount
#echo -e "\nwordcount output:"
#hdfs dfs -cat output/*

