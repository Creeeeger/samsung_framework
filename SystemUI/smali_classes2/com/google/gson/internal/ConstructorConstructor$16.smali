.class public final Lcom/google/gson/internal/ConstructorConstructor$16;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final unsafeAllocator:Lcom/google/gson/internal/UnsafeAllocator;

.field public final synthetic val$rawType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;)V
    .locals 7

    .line 1
    iput-object p2, p0, Lcom/google/gson/internal/ConstructorConstructor$16;->val$rawType:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "newInstance"

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_0
    const-string/jumbo v2, "sun.misc.Unsafe"

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string/jumbo v3, "theUnsafe"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "allocateInstance"

    .line 33
    .line 34
    new-array v5, v1, [Ljava/lang/Class;

    .line 35
    .line 36
    const-class v6, Ljava/lang/Class;

    .line 37
    .line 38
    aput-object v6, v5, v0

    .line 39
    .line 40
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    new-instance v4, Lcom/google/gson/internal/UnsafeAllocator$1;

    .line 45
    .line 46
    invoke-direct {v4, v2, v3}, Lcom/google/gson/internal/UnsafeAllocator$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    const/4 v2, 0x2

    .line 51
    :try_start_1
    const-class v3, Ljava/io/ObjectStreamClass;

    .line 52
    .line 53
    const-string v4, "getConstructorId"

    .line 54
    .line 55
    new-array v5, v1, [Ljava/lang/Class;

    .line 56
    .line 57
    const-class v6, Ljava/lang/Class;

    .line 58
    .line 59
    aput-object v6, v5, v0

    .line 60
    .line 61
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 66
    .line 67
    .line 68
    new-array v4, v1, [Ljava/lang/Object;

    .line 69
    .line 70
    const-class v5, Ljava/lang/Object;

    .line 71
    .line 72
    aput-object v5, v4, v0

    .line 73
    .line 74
    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    const-class v3, Ljava/io/ObjectStreamClass;

    .line 85
    .line 86
    new-array v4, v2, [Ljava/lang/Class;

    .line 87
    .line 88
    const-class v5, Ljava/lang/Class;

    .line 89
    .line 90
    aput-object v5, v4, v0

    .line 91
    .line 92
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 93
    .line 94
    aput-object v5, v4, v1

    .line 95
    .line 96
    invoke-virtual {v3, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 101
    .line 102
    .line 103
    new-instance v4, Lcom/google/gson/internal/UnsafeAllocator$2;

    .line 104
    .line 105
    invoke-direct {v4, v3, p2}, Lcom/google/gson/internal/UnsafeAllocator$2;-><init>(Ljava/lang/reflect/Method;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_1
    :try_start_2
    const-class p2, Ljava/io/ObjectInputStream;

    .line 110
    .line 111
    new-array v2, v2, [Ljava/lang/Class;

    .line 112
    .line 113
    const-class v3, Ljava/lang/Class;

    .line 114
    .line 115
    aput-object v3, v2, v0

    .line 116
    .line 117
    const-class v0, Ljava/lang/Class;

    .line 118
    .line 119
    aput-object v0, v2, v1

    .line 120
    .line 121
    invoke-virtual {p2, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 126
    .line 127
    .line 128
    new-instance v4, Lcom/google/gson/internal/UnsafeAllocator$3;

    .line 129
    .line 130
    invoke-direct {v4, p1}, Lcom/google/gson/internal/UnsafeAllocator$3;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catch_2
    new-instance v4, Lcom/google/gson/internal/UnsafeAllocator$4;

    .line 135
    .line 136
    invoke-direct {v4}, Lcom/google/gson/internal/UnsafeAllocator$4;-><init>()V

    .line 137
    .line 138
    .line 139
    :goto_0
    iput-object v4, p0, Lcom/google/gson/internal/ConstructorConstructor$16;->unsafeAllocator:Lcom/google/gson/internal/UnsafeAllocator;

    .line 140
    .line 141
    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$16;->val$rawType:Ljava/lang/Class;

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/google/gson/internal/ConstructorConstructor$16;->unsafeAllocator:Lcom/google/gson/internal/UnsafeAllocator;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/gson/internal/UnsafeAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "Unable to create instance of "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw v1
.end method
