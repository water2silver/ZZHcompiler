import os


def rename_files(directory):
    for filename in os.listdir(directory):
        # 检查文件名是否符合 "2023_func_number_name" 格式
        if filename.startswith("2023_func_") and len(filename.split('_')) >= 4:
            parts = filename.split('_')
            number = parts[2]
            name = "_".join(parts[3:])  # 处理文件名中有下划线的情况

            # 将 number 转换为三位数，不足则补0
            new_number = number.zfill(3)

            # 生成新的文件名
            new_filename = f"{new_number}_{name}"

            # 获取文件的完整路径
            old_file = os.path.join(directory, filename)
            new_file = os.path.join(directory, new_filename)

            # 重命名文件
            os.rename(old_file, new_file)
            print(f"Renamed: {filename} -> {new_filename}")


# 指定文件夹路径
directory = "."

# 调用函数重命名文件
rename_files(directory)
