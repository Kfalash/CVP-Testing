def counts(file,name_1,name_2):
    file = open(file,'r')
    file.readline()
    num1 = 0
    num2 = 0
    num3 = 0
    num4 = 0
    n1 = 0
    n2 = 0
    n3 = 0
    n4 = 0
    total = 0
    for row in file:
        clust = row.split(',')
        if int(clust[1]) == 1:
            num1 += 1
        if int(clust[1]) == 2:
            num2 += 1
        if int(clust[1]) == 3:
            num3 += 1
        if int(clust[1]) == 4:
            num4 += 1
        
        if int(clust[2]) == 1:
            n1 += 1
        if int(clust[2]) == 2:
            n2 += 1
        if int(clust[2]) == 3:
            n3 += 1
        if int(clust[2]) == 4:
            n4 += 1

    print("{:17}{}".format(name_1,name_2))
    print("Cluster 1:",num1,"| Cluster 1:",n1)
    print("Cluster 2:",num2,"| Cluster 2:",n2)
    print("Cluster 3:",num3,"| Cluster 3:",n3)
    print("Cluster 4:",num4,"| Cluster 4:",n4)
    print()

counts("combindedAW.txt","Average","Ward")
counts("combinedAC.txt","Average","Complete")
counts("combinedWC.txt","Ward","Complete")
