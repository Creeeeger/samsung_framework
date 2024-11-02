.class public final enum Lcom/android/systemui/qs/bar/BarType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/bar/BarType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/bar/BarType;

.field public static final enum BOTTOM_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum BRIGHTNESS:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum BRIGHTNESS_MEDIA_DEVICES:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum BUDS:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum MEDIA_DEVICES:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum MULTI_SIM_PREFERRED_SLOT:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum PAGED_TILE:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum QS_MEDIA_PLAYER:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum SECURITY_FOOTER:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum TOP_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

.field public static final enum VIDEO_CALL_MIC_MODE:Lcom/android/systemui/qs/bar/BarType;


# instance fields
.field private final mCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/systemui/qs/bar/BarItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mCollapsed:Z

.field private final mExpanded:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v6, Lcom/android/systemui/qs/bar/BarType;

    .line 2
    .line 3
    const-string v1, "DUMMY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, v6

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/android/systemui/qs/bar/BarType;

    .line 15
    .line 16
    const-string v8, "VIDEO_CALL_MIC_MODE"

    .line 17
    .line 18
    const/4 v9, 0x1

    .line 19
    const-class v10, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    .line 20
    .line 21
    const/4 v15, 0x0

    .line 22
    const/16 v16, 0x1

    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    const/4 v12, 0x1

    .line 26
    move-object v7, v1

    .line 27
    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    .line 28
    .line 29
    .line 30
    sput-object v1, Lcom/android/systemui/qs/bar/BarType;->VIDEO_CALL_MIC_MODE:Lcom/android/systemui/qs/bar/BarType;

    .line 31
    .line 32
    new-instance v2, Lcom/android/systemui/qs/bar/BarType;

    .line 33
    .line 34
    const-string v18, "TOP_LARGE_TILE"

    .line 35
    .line 36
    const/16 v19, 0x2

    .line 37
    .line 38
    const-class v20, Lcom/android/systemui/qs/bar/TopLargeTileBar;

    .line 39
    .line 40
    const/16 v22, 0x1

    .line 41
    .line 42
    const/16 v21, 0x0

    .line 43
    .line 44
    move-object/from16 v17, v2

    .line 45
    .line 46
    invoke-direct/range {v17 .. v22}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    .line 47
    .line 48
    .line 49
    sput-object v2, Lcom/android/systemui/qs/bar/BarType;->TOP_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

    .line 50
    .line 51
    new-instance v3, Lcom/android/systemui/qs/bar/BarType;

    .line 52
    .line 53
    const-string v24, "PAGED_TILE"

    .line 54
    .line 55
    const/16 v25, 0x3

    .line 56
    .line 57
    const-class v26, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;

    .line 58
    .line 59
    const/16 v27, 0x0

    .line 60
    .line 61
    const/16 v28, 0x1

    .line 62
    .line 63
    move-object/from16 v23, v3

    .line 64
    .line 65
    invoke-direct/range {v23 .. v28}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    .line 66
    .line 67
    .line 68
    sput-object v3, Lcom/android/systemui/qs/bar/BarType;->PAGED_TILE:Lcom/android/systemui/qs/bar/BarType;

    .line 69
    .line 70
    new-instance v4, Lcom/android/systemui/qs/bar/BarType;

    .line 71
    .line 72
    const-string v8, "MULTI_SIM_PREFERRED_SLOT"

    .line 73
    .line 74
    const/4 v9, 0x4

    .line 75
    const-class v10, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    .line 76
    .line 77
    sget-boolean v12, Lcom/android/systemui/QpRune;->QUICK_BAR_MULTISIM:Z

    .line 78
    .line 79
    move-object v7, v4

    .line 80
    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    .line 81
    .line 82
    .line 83
    sput-object v4, Lcom/android/systemui/qs/bar/BarType;->MULTI_SIM_PREFERRED_SLOT:Lcom/android/systemui/qs/bar/BarType;

    .line 84
    .line 85
    new-instance v5, Lcom/android/systemui/qs/bar/BarType;

    .line 86
    .line 87
    const-string v12, "BRIGHTNESS"

    .line 88
    .line 89
    const/4 v13, 0x5

    .line 90
    const-class v14, Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 91
    .line 92
    move-object v11, v5

    .line 93
    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    .line 94
    .line 95
    .line 96
    sput-object v5, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS:Lcom/android/systemui/qs/bar/BarType;

    .line 97
    .line 98
    new-instance v7, Lcom/android/systemui/qs/bar/BarType;

    .line 99
    .line 100
    const-string v18, "BRIGHTNESS_MEDIA_DEVICES"

    .line 101
    .line 102
    const/16 v19, 0x6

    .line 103
    .line 104
    const-class v20, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    .line 105
    .line 106
    const/16 v21, 0x1

    .line 107
    .line 108
    const/16 v22, 0x0

    .line 109
    .line 110
    move-object/from16 v17, v7

    .line 111
    .line 112
    invoke-direct/range {v17 .. v22}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    .line 113
    .line 114
    .line 115
    sput-object v7, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS_MEDIA_DEVICES:Lcom/android/systemui/qs/bar/BarType;

    .line 116
    .line 117
    new-instance v14, Lcom/android/systemui/qs/bar/BarType;

    .line 118
    .line 119
    const-string v9, "BOTTOM_LARGE_TILE"

    .line 120
    .line 121
    const/4 v10, 0x7

    .line 122
    const-class v11, Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    .line 123
    .line 124
    const/4 v12, 0x0

    .line 125
    const/4 v13, 0x1

    .line 126
    move-object v8, v14

    .line 127
    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    .line 128
    .line 129
    .line 130
    sput-object v14, Lcom/android/systemui/qs/bar/BarType;->BOTTOM_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

    .line 131
    .line 132
    new-instance v8, Lcom/android/systemui/qs/bar/BarType;

    .line 133
    .line 134
    const-string v16, "MEDIA_DEVICES"

    .line 135
    .line 136
    const/16 v17, 0x8

    .line 137
    .line 138
    const-class v18, Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 139
    .line 140
    const/16 v23, 0x0

    .line 141
    .line 142
    const/16 v20, 0x0

    .line 143
    .line 144
    const/16 v19, 0x0

    .line 145
    .line 146
    move-object v15, v8

    .line 147
    invoke-direct/range {v15 .. v20}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    .line 148
    .line 149
    .line 150
    sput-object v8, Lcom/android/systemui/qs/bar/BarType;->MEDIA_DEVICES:Lcom/android/systemui/qs/bar/BarType;

    .line 151
    .line 152
    new-instance v9, Lcom/android/systemui/qs/bar/BarType;

    .line 153
    .line 154
    const-string v25, "QS_MEDIA_PLAYER"

    .line 155
    .line 156
    const/16 v26, 0x9

    .line 157
    .line 158
    const-class v27, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    .line 159
    .line 160
    const/16 v29, 0x0

    .line 161
    .line 162
    move-object/from16 v24, v9

    .line 163
    .line 164
    invoke-direct/range {v24 .. v29}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    .line 165
    .line 166
    .line 167
    sput-object v9, Lcom/android/systemui/qs/bar/BarType;->QS_MEDIA_PLAYER:Lcom/android/systemui/qs/bar/BarType;

    .line 168
    .line 169
    new-instance v10, Lcom/android/systemui/qs/bar/BarType;

    .line 170
    .line 171
    const-string v20, "BUDS"

    .line 172
    .line 173
    const/16 v21, 0xa

    .line 174
    .line 175
    const-class v22, Lcom/android/systemui/qs/bar/BudsBar;

    .line 176
    .line 177
    const/16 v24, 0x1

    .line 178
    .line 179
    move-object/from16 v19, v10

    .line 180
    .line 181
    invoke-direct/range {v19 .. v24}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    .line 182
    .line 183
    .line 184
    sput-object v10, Lcom/android/systemui/qs/bar/BarType;->BUDS:Lcom/android/systemui/qs/bar/BarType;

    .line 185
    .line 186
    new-instance v11, Lcom/android/systemui/qs/bar/BarType;

    .line 187
    .line 188
    const-string v26, "SECURITY_FOOTER"

    .line 189
    .line 190
    const/16 v27, 0xb

    .line 191
    .line 192
    const-class v28, Lcom/android/systemui/qs/bar/SecurityFooterBar;

    .line 193
    .line 194
    const/16 v30, 0x1

    .line 195
    .line 196
    move-object/from16 v25, v11

    .line 197
    .line 198
    invoke-direct/range {v25 .. v30}, Lcom/android/systemui/qs/bar/BarType;-><init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V

    .line 199
    .line 200
    .line 201
    sput-object v11, Lcom/android/systemui/qs/bar/BarType;->SECURITY_FOOTER:Lcom/android/systemui/qs/bar/BarType;

    .line 202
    .line 203
    move-object v6, v7

    .line 204
    move-object v7, v14

    .line 205
    filled-new-array/range {v0 .. v11}, [Lcom/android/systemui/qs/bar/BarType;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    sput-object v0, Lcom/android/systemui/qs/bar/BarType;->$VALUES:[Lcom/android/systemui/qs/bar/BarType;

    .line 210
    .line 211
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/systemui/qs/bar/BarItemImpl;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/systemui/qs/bar/BarType;->mCls:Ljava/lang/Class;

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/android/systemui/qs/bar/BarType;->mCollapsed:Z

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/android/systemui/qs/bar/BarType;->mExpanded:Z

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/bar/BarType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/qs/bar/BarType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/qs/bar/BarType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/bar/BarType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/bar/BarType;->$VALUES:[Lcom/android/systemui/qs/bar/BarType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/qs/bar/BarType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/qs/bar/BarType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getCls()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarType;->mCls:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasCollapsed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BarType;->mCollapsed:Z

    .line 2
    .line 3
    return p0
.end method

.method public final hasExpanded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BarType;->mExpanded:Z

    .line 2
    .line 3
    return p0
.end method
