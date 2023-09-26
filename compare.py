def compare_text_files(file1_path, file2_path):
    with open(file1_path, 'r') as file1, open(file2_path, 'r') as file2:
        lines1 = file1.readlines()
        lines2 = file2.readlines()

    if len(lines1) != len(lines2):
        return False

    for line1, line2 in zip(lines1, lines2):
        if line1 != line2:
            return False

    return True



if __name__ == "__main__":

    for target in["iris", "spheres","drive1", "drive2"]:
        for goal in ["sym", "norm", "ddg", "symnmf"]:
            path1 = f"{goal}_{target}.txt"
            path2 = f"{goal}_{target}_res.txt"
            print(f"{target} {goal}: {compare_text_files(path1, path2)}")
            if(goal!="symnmf"):
                path2 = f"{goal}c_{target}_res.txt"
                print(f"{target} {goal} in C: {compare_text_files(path1, path2)}")
