.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final L_AND_G_PATTERNS:[[I

.field public static final L_PATTERNS:[[I

.field public static final MIDDLE_PATTERN:[I

.field public static final START_END_PATTERN:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    filled-new-array {v0, v0, v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sput-object v1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 7
    .line 8
    filled-new-array {v0, v0, v0, v0, v0}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sput-object v1, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    const/4 v2, 0x2

    .line 16
    filled-new-array {v1, v2, v0, v0}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    filled-new-array {v2, v2, v2, v0}, [I

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    filled-new-array {v2, v0, v2, v2}, [I

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const/4 v6, 0x4

    .line 29
    filled-new-array {v0, v6, v0, v0}, [I

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    filled-new-array {v0, v0, v1, v2}, [I

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    filled-new-array {v0, v2, v1, v0}, [I

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    filled-new-array {v0, v0, v0, v6}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    filled-new-array {v0, v1, v0, v2}, [I

    .line 46
    .line 47
    .line 48
    move-result-object v11

    .line 49
    filled-new-array {v0, v2, v0, v1}, [I

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    filled-new-array {v1, v0, v0, v2}, [I

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v6, v7

    .line 58
    move-object v7, v8

    .line 59
    move-object v8, v9

    .line 60
    move-object v9, v10

    .line 61
    move-object v10, v11

    .line 62
    move-object v11, v12

    .line 63
    move-object v12, v1

    .line 64
    filled-new-array/range {v3 .. v12}, [[I

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    sput-object v1, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    .line 69
    .line 70
    const/16 v2, 0x14

    .line 71
    .line 72
    new-array v3, v2, [[I

    .line 73
    .line 74
    sput-object v3, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    const/16 v5, 0xa

    .line 78
    .line 79
    invoke-static {v1, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    :goto_0
    if-ge v5, v2, :cond_1

    .line 83
    .line 84
    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    .line 85
    .line 86
    add-int/lit8 v3, v5, -0xa

    .line 87
    .line 88
    aget-object v1, v1, v3

    .line 89
    .line 90
    array-length v3, v1

    .line 91
    new-array v3, v3, [I

    .line 92
    .line 93
    move v6, v4

    .line 94
    :goto_1
    array-length v7, v1

    .line 95
    if-ge v6, v7, :cond_0

    .line 96
    .line 97
    array-length v7, v1

    .line 98
    sub-int/2addr v7, v6

    .line 99
    sub-int/2addr v7, v0

    .line 100
    aget v7, v1, v7

    .line 101
    .line 102
    aput v7, v3, v6

    .line 103
    .line 104
    add-int/lit8 v6, v6, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_0
    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 108
    .line 109
    aput-object v3, v1, v5

    .line 110
    .line 111
    add-int/lit8 v5, v5, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
