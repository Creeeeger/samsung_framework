.class public final synthetic Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->values()[Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 9
    .line 10
    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->INITIALIZED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    aput v3, v0, v2

    .line 18
    .line 19
    sget-object v2, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->PAUSED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x2

    .line 26
    aput v5, v0, v4

    .line 27
    .line 28
    sget-object v4, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->STARTED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v7, 0x3

    .line 35
    aput v7, v0, v6

    .line 36
    .line 37
    invoke-static {}, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->values()[Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    array-length v0, v0

    .line 42
    new-array v0, v0, [I

    .line 43
    .line 44
    sput-object v0, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    aput v3, v0, v6

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    aput v5, v0, v6

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    aput v7, v0, v6

    .line 63
    .line 64
    invoke-static {}, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->values()[Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    array-length v0, v0

    .line 69
    new-array v0, v0, [I

    .line 70
    .line 71
    sput-object v0, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$2:[I

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    aput v3, v0, v6

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    aput v5, v0, v6

    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    aput v7, v0, v6

    .line 90
    .line 91
    invoke-static {}, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->values()[Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    array-length v0, v0

    .line 96
    new-array v0, v0, [I

    .line 97
    .line 98
    sput-object v0, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$3:[I

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    aput v3, v0, v6

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    aput v5, v0, v6

    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    aput v7, v0, v6

    .line 117
    .line 118
    invoke-static {}, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->values()[Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    array-length v0, v0

    .line 123
    new-array v0, v0, [I

    .line 124
    .line 125
    sput-object v0, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$4:[I

    .line 126
    .line 127
    sget-object v6, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    aput v3, v0, v6

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    aput v5, v0, v1

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    aput v7, v0, v1

    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    const/4 v2, 0x4

    .line 152
    aput v2, v0, v1

    .line 153
    .line 154
    return-void
.end method
