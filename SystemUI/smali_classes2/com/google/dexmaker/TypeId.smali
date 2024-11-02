.class public final Lcom/google/dexmaker/TypeId;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BOOLEAN:Lcom/google/dexmaker/TypeId;

.field public static final BYTE:Lcom/google/dexmaker/TypeId;

.field public static final CHAR:Lcom/google/dexmaker/TypeId;

.field public static final DOUBLE:Lcom/google/dexmaker/TypeId;

.field public static final FLOAT:Lcom/google/dexmaker/TypeId;

.field public static final INT:Lcom/google/dexmaker/TypeId;

.field public static final LONG:Lcom/google/dexmaker/TypeId;

.field public static final PRIMITIVE_TO_TYPE:Ljava/util/Map;

.field public static final SHORT:Lcom/google/dexmaker/TypeId;


# instance fields
.field public final constant:Lcom/google/dexmaker/dx/rop/cst/CstType;

.field public final name:Ljava/lang/String;

.field public final ropType:Lcom/google/dexmaker/dx/rop/type/Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/google/dexmaker/TypeId;

    .line 2
    .line 3
    sget-object v1, Lcom/google/dexmaker/dx/rop/type/Type;->BOOLEAN:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/dexmaker/TypeId;->BOOLEAN:Lcom/google/dexmaker/TypeId;

    .line 9
    .line 10
    new-instance v1, Lcom/google/dexmaker/TypeId;

    .line 11
    .line 12
    sget-object v2, Lcom/google/dexmaker/dx/rop/type/Type;->BYTE:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/google/dexmaker/TypeId;->BYTE:Lcom/google/dexmaker/TypeId;

    .line 18
    .line 19
    new-instance v2, Lcom/google/dexmaker/TypeId;

    .line 20
    .line 21
    sget-object v3, Lcom/google/dexmaker/dx/rop/type/Type;->CHAR:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    .line 24
    .line 25
    .line 26
    sput-object v2, Lcom/google/dexmaker/TypeId;->CHAR:Lcom/google/dexmaker/TypeId;

    .line 27
    .line 28
    new-instance v3, Lcom/google/dexmaker/TypeId;

    .line 29
    .line 30
    sget-object v4, Lcom/google/dexmaker/dx/rop/type/Type;->DOUBLE:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 31
    .line 32
    invoke-direct {v3, v4}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lcom/google/dexmaker/TypeId;->DOUBLE:Lcom/google/dexmaker/TypeId;

    .line 36
    .line 37
    new-instance v4, Lcom/google/dexmaker/TypeId;

    .line 38
    .line 39
    sget-object v5, Lcom/google/dexmaker/dx/rop/type/Type;->FLOAT:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 40
    .line 41
    invoke-direct {v4, v5}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    .line 42
    .line 43
    .line 44
    sput-object v4, Lcom/google/dexmaker/TypeId;->FLOAT:Lcom/google/dexmaker/TypeId;

    .line 45
    .line 46
    new-instance v5, Lcom/google/dexmaker/TypeId;

    .line 47
    .line 48
    sget-object v6, Lcom/google/dexmaker/dx/rop/type/Type;->INT:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 49
    .line 50
    invoke-direct {v5, v6}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    .line 51
    .line 52
    .line 53
    sput-object v5, Lcom/google/dexmaker/TypeId;->INT:Lcom/google/dexmaker/TypeId;

    .line 54
    .line 55
    new-instance v6, Lcom/google/dexmaker/TypeId;

    .line 56
    .line 57
    sget-object v7, Lcom/google/dexmaker/dx/rop/type/Type;->LONG:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 58
    .line 59
    invoke-direct {v6, v7}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    .line 60
    .line 61
    .line 62
    sput-object v6, Lcom/google/dexmaker/TypeId;->LONG:Lcom/google/dexmaker/TypeId;

    .line 63
    .line 64
    new-instance v7, Lcom/google/dexmaker/TypeId;

    .line 65
    .line 66
    sget-object v8, Lcom/google/dexmaker/dx/rop/type/Type;->SHORT:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 67
    .line 68
    invoke-direct {v7, v8}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    .line 69
    .line 70
    .line 71
    sput-object v7, Lcom/google/dexmaker/TypeId;->SHORT:Lcom/google/dexmaker/TypeId;

    .line 72
    .line 73
    new-instance v8, Lcom/google/dexmaker/TypeId;

    .line 74
    .line 75
    sget-object v9, Lcom/google/dexmaker/dx/rop/type/Type;->VOID:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 76
    .line 77
    invoke-direct {v8, v9}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    .line 78
    .line 79
    .line 80
    new-instance v9, Lcom/google/dexmaker/TypeId;

    .line 81
    .line 82
    sget-object v10, Lcom/google/dexmaker/dx/rop/type/Type;->OBJECT:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 83
    .line 84
    invoke-direct {v9, v10}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    .line 85
    .line 86
    .line 87
    new-instance v9, Lcom/google/dexmaker/TypeId;

    .line 88
    .line 89
    sget-object v10, Lcom/google/dexmaker/dx/rop/type/Type;->STRING:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 90
    .line 91
    invoke-direct {v9, v10}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/google/dexmaker/dx/rop/type/Type;)V

    .line 92
    .line 93
    .line 94
    new-instance v9, Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 97
    .line 98
    .line 99
    sput-object v9, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    .line 100
    .line 101
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 102
    .line 103
    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 107
    .line 108
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 112
    .line 113
    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 117
    .line 118
    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 122
    .line 123
    invoke-virtual {v9, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 127
    .line 128
    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 132
    .line 133
    invoke-virtual {v9, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 137
    .line 138
    invoke-virtual {v9, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 142
    .line 143
    invoke-virtual {v9, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public constructor <init>(Lcom/google/dexmaker/dx/rop/type/Type;)V
    .locals 1

    .line 6
    iget-object v0, p1, Lcom/google/dexmaker/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/google/dexmaker/TypeId;-><init>(Ljava/lang/String;Lcom/google/dexmaker/dx/rop/type/Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/dexmaker/dx/rop/type/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 4
    invoke-static {p2}, Lcom/google/dexmaker/dx/rop/cst/CstType;->intern(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/cst/CstType;

    move-result-object p1

    iput-object p1, p0, Lcom/google/dexmaker/TypeId;->constant:Lcom/google/dexmaker/dx/rop/cst/CstType;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public static get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    .line 8
    .line 9
    check-cast v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/google/dexmaker/TypeId;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/16 v1, 0x2e

    .line 23
    .line 24
    const/16 v2, 0x2f

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "L"

    .line 40
    .line 41
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v0, 0x3b

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_0
    new-instance p0, Lcom/google/dexmaker/TypeId;

    .line 57
    .line 58
    :try_start_0
    const-string v1, "V"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    sget-object v1, Lcom/google/dexmaker/dx/rop/type/Type;->VOID:Lcom/google/dexmaker/dx/rop/type/Type;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Ljava/lang/String;Lcom/google/dexmaker/dx/rop/type/Type;)V

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 78
    .line 79
    const-string v0, "descriptor == null"

    .line 80
    .line 81
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/dexmaker/TypeId;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/google/dexmaker/TypeId;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final varargs getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/dexmaker/MethodId;

    .line 2
    .line 3
    new-instance v1, Lcom/google/dexmaker/TypeList;

    .line 4
    .line 5
    invoke-direct {v1, p3}, Lcom/google/dexmaker/TypeList;-><init>([Lcom/google/dexmaker/TypeId;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/dexmaker/MethodId;-><init>(Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/String;Lcom/google/dexmaker/TypeList;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
