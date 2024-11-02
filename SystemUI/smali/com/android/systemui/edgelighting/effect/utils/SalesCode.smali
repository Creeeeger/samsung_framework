.class public final Lcom/android/systemui/edgelighting/effect/utils/SalesCode;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final isChn:Z

.field public static final isIND:Z

.field public static final isKor:Z

.field public static final isMAL:Z

.field public static final isMYM:Z

.field public static final isPHI:Z

.field public static final isSIN:Z

.field public static final isTHL:Z

.field public static final isVn:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    .line 1
    const-string/jumbo v0, "ro.csc.sales_code"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "unknown"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "XXV"

    .line 12
    .line 13
    const-string v2, "XEV"

    .line 14
    .line 15
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "XTC"

    .line 20
    .line 21
    const-string v3, "SMA"

    .line 22
    .line 23
    const-string v4, "GLB"

    .line 24
    .line 25
    const-string v5, "XTE"

    .line 26
    .line 27
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "XME"

    .line 32
    .line 33
    filled-new-array {v3}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "THL"

    .line 38
    .line 39
    filled-new-array {v4}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v5, "XID"

    .line 44
    .line 45
    const-string v6, "XSE"

    .line 46
    .line 47
    const-string v7, "INS"

    .line 48
    .line 49
    const-string v8, "INU"

    .line 50
    .line 51
    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string v6, "MYM"

    .line 56
    .line 57
    filled-new-array {v6}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const-string v7, "XSP"

    .line 62
    .line 63
    const-string v8, "SIN"

    .line 64
    .line 65
    const-string v9, "MM1"

    .line 66
    .line 67
    const-string v10, "STH"

    .line 68
    .line 69
    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    const-string v8, "SKC"

    .line 74
    .line 75
    const-string v9, "KTC"

    .line 76
    .line 77
    const-string v10, "LUC"

    .line 78
    .line 79
    const-string v11, "KOO"

    .line 80
    .line 81
    const-string v12, "SKT"

    .line 82
    .line 83
    const-string v13, "SKO"

    .line 84
    .line 85
    const-string v14, "KTT"

    .line 86
    .line 87
    const-string v15, "KTO"

    .line 88
    .line 89
    const-string v16, "LGT"

    .line 90
    .line 91
    const-string v17, "LUO"

    .line 92
    .line 93
    const-string v18, "K06"

    .line 94
    .line 95
    const-string v19, "K01"

    .line 96
    .line 97
    filled-new-array/range {v8 .. v19}, [Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    const-string v9, "CHU"

    .line 102
    .line 103
    const-string v10, "CTC"

    .line 104
    .line 105
    const-string v11, "CHM"

    .line 106
    .line 107
    const-string v12, "CHC"

    .line 108
    .line 109
    const-string v13, "CHN"

    .line 110
    .line 111
    filled-new-array {v11, v9, v10, v12, v13}, [Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-static {v0, v1}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    sput-boolean v1, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isVn:Z

    .line 120
    .line 121
    invoke-static {v0, v2}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    sput-boolean v1, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isPHI:Z

    .line 126
    .line 127
    invoke-static {v0, v3}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    sput-boolean v1, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isMAL:Z

    .line 132
    .line 133
    invoke-static {v0, v4}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    sput-boolean v1, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isTHL:Z

    .line 138
    .line 139
    invoke-static {v0, v5}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    sput-boolean v1, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isIND:Z

    .line 144
    .line 145
    invoke-static {v0, v6}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    sput-boolean v1, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isMYM:Z

    .line 150
    .line 151
    invoke-static {v0, v7}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    sput-boolean v1, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isSIN:Z

    .line 156
    .line 157
    invoke-static {v0, v8}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    sput-boolean v1, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isKor:Z

    .line 162
    .line 163
    invoke-static {v0, v9}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    sput-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isChn:Z

    .line 168
    .line 169
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs is(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    array-length v0, p1

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_2

    .line 9
    .line 10
    aget-object v3, p1, v2

    .line 11
    .line 12
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    :goto_1
    return v1
.end method
