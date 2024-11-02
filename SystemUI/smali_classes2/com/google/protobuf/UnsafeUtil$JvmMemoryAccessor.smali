.class public final Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;
.super Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getBoolean(JLjava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getByte(JLjava/lang/Object;)B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getDouble(JLjava/lang/Object;)D
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final getFloat(JLjava/lang/Object;)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final putBoolean(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final putByte(Ljava/lang/Object;JB)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final putDouble(Ljava/lang/Object;JD)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final putFloat(Ljava/lang/Object;JF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final supportsUnsafeArrayOperations()Z
    .locals 9

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeArrayOperations()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "getByte"

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    new-array v4, v3, [Ljava/lang/Class;

    .line 21
    .line 22
    aput-object v0, v4, v2

    .line 23
    .line 24
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    aput-object v5, v4, v6

    .line 28
    .line 29
    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "putByte"

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x3

    .line 36
    new-array v7, v4, [Ljava/lang/Class;

    .line 37
    .line 38
    aput-object v0, v7, v2

    .line 39
    .line 40
    aput-object v5, v7, v6

    .line 41
    .line 42
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    aput-object v8, v7, v3

    .line 45
    .line 46
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    const-string v1, "getBoolean"

    .line 50
    .line 51
    new-array v7, v3, [Ljava/lang/Class;

    .line 52
    .line 53
    aput-object v0, v7, v2

    .line 54
    .line 55
    aput-object v5, v7, v6

    .line 56
    .line 57
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 58
    .line 59
    .line 60
    const-string/jumbo v1, "putBoolean"

    .line 61
    .line 62
    .line 63
    new-array v7, v4, [Ljava/lang/Class;

    .line 64
    .line 65
    aput-object v0, v7, v2

    .line 66
    .line 67
    aput-object v5, v7, v6

    .line 68
    .line 69
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 70
    .line 71
    aput-object v8, v7, v3

    .line 72
    .line 73
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 74
    .line 75
    .line 76
    const-string v1, "getFloat"

    .line 77
    .line 78
    new-array v7, v3, [Ljava/lang/Class;

    .line 79
    .line 80
    aput-object v0, v7, v2

    .line 81
    .line 82
    aput-object v5, v7, v6

    .line 83
    .line 84
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 85
    .line 86
    .line 87
    const-string/jumbo v1, "putFloat"

    .line 88
    .line 89
    .line 90
    new-array v7, v4, [Ljava/lang/Class;

    .line 91
    .line 92
    aput-object v0, v7, v2

    .line 93
    .line 94
    aput-object v5, v7, v6

    .line 95
    .line 96
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 97
    .line 98
    aput-object v8, v7, v3

    .line 99
    .line 100
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 101
    .line 102
    .line 103
    const-string v1, "getDouble"

    .line 104
    .line 105
    new-array v7, v3, [Ljava/lang/Class;

    .line 106
    .line 107
    aput-object v0, v7, v2

    .line 108
    .line 109
    aput-object v5, v7, v6

    .line 110
    .line 111
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 112
    .line 113
    .line 114
    const-string/jumbo v1, "putDouble"

    .line 115
    .line 116
    .line 117
    new-array v4, v4, [Ljava/lang/Class;

    .line 118
    .line 119
    aput-object v0, v4, v2

    .line 120
    .line 121
    aput-object v5, v4, v6

    .line 122
    .line 123
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 124
    .line 125
    aput-object v0, v4, v3

    .line 126
    .line 127
    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    return v6

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    invoke-static {p0}, Lcom/google/protobuf/UnsafeUtil;->access$000(Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    return v2
.end method

.method public final supportsUnsafeByteBufferOperations()Z
    .locals 9

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    const-string v1, "copyMemory"

    .line 4
    .line 5
    invoke-super {p0}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeByteBufferOperations()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v2, "getByte"

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    new-array v5, v4, [Ljava/lang/Class;

    .line 23
    .line 24
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 25
    .line 26
    aput-object v6, v5, v3

    .line 27
    .line 28
    invoke-virtual {p0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    const-string/jumbo v2, "putByte"

    .line 32
    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    new-array v7, v5, [Ljava/lang/Class;

    .line 36
    .line 37
    aput-object v6, v7, v3

    .line 38
    .line 39
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 40
    .line 41
    aput-object v8, v7, v4

    .line 42
    .line 43
    invoke-virtual {p0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    .line 45
    .line 46
    const-string v2, "getInt"

    .line 47
    .line 48
    new-array v7, v4, [Ljava/lang/Class;

    .line 49
    .line 50
    aput-object v6, v7, v3

    .line 51
    .line 52
    invoke-virtual {p0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    .line 54
    .line 55
    const-string/jumbo v2, "putInt"

    .line 56
    .line 57
    .line 58
    new-array v7, v5, [Ljava/lang/Class;

    .line 59
    .line 60
    aput-object v6, v7, v3

    .line 61
    .line 62
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 63
    .line 64
    aput-object v8, v7, v4

    .line 65
    .line 66
    invoke-virtual {p0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 67
    .line 68
    .line 69
    const-string v2, "getLong"

    .line 70
    .line 71
    new-array v7, v4, [Ljava/lang/Class;

    .line 72
    .line 73
    aput-object v6, v7, v3

    .line 74
    .line 75
    invoke-virtual {p0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    .line 77
    .line 78
    const-string/jumbo v2, "putLong"

    .line 79
    .line 80
    .line 81
    new-array v7, v5, [Ljava/lang/Class;

    .line 82
    .line 83
    aput-object v6, v7, v3

    .line 84
    .line 85
    aput-object v6, v7, v4

    .line 86
    .line 87
    invoke-virtual {p0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 88
    .line 89
    .line 90
    const/4 v2, 0x3

    .line 91
    new-array v7, v2, [Ljava/lang/Class;

    .line 92
    .line 93
    aput-object v6, v7, v3

    .line 94
    .line 95
    aput-object v6, v7, v4

    .line 96
    .line 97
    aput-object v6, v7, v5

    .line 98
    .line 99
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 100
    .line 101
    .line 102
    const/4 v7, 0x5

    .line 103
    new-array v7, v7, [Ljava/lang/Class;

    .line 104
    .line 105
    aput-object v0, v7, v3

    .line 106
    .line 107
    aput-object v6, v7, v4

    .line 108
    .line 109
    aput-object v0, v7, v5

    .line 110
    .line 111
    aput-object v6, v7, v2

    .line 112
    .line 113
    const/4 v0, 0x4

    .line 114
    aput-object v6, v7, v0

    .line 115
    .line 116
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    return v4

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    invoke-static {p0}, Lcom/google/protobuf/UnsafeUtil;->access$000(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    return v3
.end method
