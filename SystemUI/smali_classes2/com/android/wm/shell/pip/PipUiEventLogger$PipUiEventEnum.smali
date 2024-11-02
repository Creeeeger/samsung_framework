.class public final enum Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_AUTO_ENTER:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_CUSTOM_CLOSE:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_ENTER:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_ENTER_CONTENT_PIP:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_EXPAND_TO_FULLSCREEN:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_HIDE_MENU:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_RESIZE:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_SHOW_MENU:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_SHOW_SETTINGS:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_STASH_LEFT:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_STASH_RIGHT:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_STASH_UNSTASHED:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_TAP_TO_REMOVE:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 2
    .line 3
    const/16 v1, 0x25b

    .line 4
    .line 5
    const-string v2, "PICTURE_IN_PICTURE_ENTER"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_ENTER:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 12
    .line 13
    new-instance v1, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 14
    .line 15
    const/16 v2, 0x521

    .line 16
    .line 17
    const-string v3, "PICTURE_IN_PICTURE_AUTO_ENTER"

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-direct {v1, v3, v4, v2}, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_AUTO_ENTER:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 24
    .line 25
    new-instance v2, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 26
    .line 27
    const/16 v3, 0x522

    .line 28
    .line 29
    const-string v4, "PICTURE_IN_PICTURE_ENTER_CONTENT_PIP"

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    invoke-direct {v2, v4, v5, v3}, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_ENTER_CONTENT_PIP:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 36
    .line 37
    new-instance v3, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 38
    .line 39
    const/16 v4, 0x25c

    .line 40
    .line 41
    const-string v5, "PICTURE_IN_PICTURE_EXPAND_TO_FULLSCREEN"

    .line 42
    .line 43
    const/4 v6, 0x3

    .line 44
    invoke-direct {v3, v5, v6, v4}, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_EXPAND_TO_FULLSCREEN:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 48
    .line 49
    new-instance v4, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 50
    .line 51
    const/16 v5, 0x25d

    .line 52
    .line 53
    const-string v6, "PICTURE_IN_PICTURE_TAP_TO_REMOVE"

    .line 54
    .line 55
    const/4 v7, 0x4

    .line 56
    invoke-direct {v4, v6, v7, v5}, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v4, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_TAP_TO_REMOVE:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 60
    .line 61
    new-instance v5, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 62
    .line 63
    const/16 v6, 0x25e

    .line 64
    .line 65
    const-string v7, "PICTURE_IN_PICTURE_DRAG_TO_REMOVE"

    .line 66
    .line 67
    const/4 v8, 0x5

    .line 68
    invoke-direct {v5, v7, v8, v6}, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    new-instance v6, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 72
    .line 73
    const/16 v7, 0x25f

    .line 74
    .line 75
    const-string v8, "PICTURE_IN_PICTURE_SHOW_MENU"

    .line 76
    .line 77
    const/4 v9, 0x6

    .line 78
    invoke-direct {v6, v8, v9, v7}, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v6, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_SHOW_MENU:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 82
    .line 83
    new-instance v7, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 84
    .line 85
    const/16 v8, 0x260

    .line 86
    .line 87
    const-string v9, "PICTURE_IN_PICTURE_HIDE_MENU"

    .line 88
    .line 89
    const/4 v10, 0x7

    .line 90
    invoke-direct {v7, v9, v10, v8}, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    sput-object v7, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_HIDE_MENU:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 94
    .line 95
    new-instance v8, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 96
    .line 97
    const/16 v9, 0x261

    .line 98
    .line 99
    const-string v10, "PICTURE_IN_PICTURE_CHANGE_ASPECT_RATIO"

    .line 100
    .line 101
    const/16 v11, 0x8

    .line 102
    .line 103
    invoke-direct {v8, v10, v11, v9}, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    .line 104
    .line 105
    .line 106
    new-instance v9, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 107
    .line 108
    const/16 v10, 0x262

    .line 109
    .line 110
    const-string v11, "PICTURE_IN_PICTURE_RESIZE"

    .line 111
    .line 112
    const/16 v12, 0x9

    .line 113
    .line 114
    invoke-direct {v9, v11, v12, v10}, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    .line 115
    .line 116
    .line 117
    sput-object v9, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_RESIZE:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 118
    .line 119
    new-instance v10, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 120
    .line 121
    const/16 v11, 0x2c5

    .line 122
    .line 123
    const-string v12, "PICTURE_IN_PICTURE_STASH_UNSTASHED"

    .line 124
    .line 125
    const/16 v13, 0xa

    .line 126
    .line 127
    invoke-direct {v10, v12, v13, v11}, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    .line 128
    .line 129
    .line 130
    sput-object v10, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_STASH_UNSTASHED:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 131
    .line 132
    new-instance v11, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 133
    .line 134
    const/16 v12, 0x2c6

    .line 135
    .line 136
    const-string v13, "PICTURE_IN_PICTURE_STASH_LEFT"

    .line 137
    .line 138
    const/16 v14, 0xb

    .line 139
    .line 140
    invoke-direct {v11, v13, v14, v12}, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    .line 141
    .line 142
    .line 143
    sput-object v11, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_STASH_LEFT:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 144
    .line 145
    new-instance v12, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 146
    .line 147
    const/16 v13, 0x2c7

    .line 148
    .line 149
    const-string v14, "PICTURE_IN_PICTURE_STASH_RIGHT"

    .line 150
    .line 151
    const/16 v15, 0xc

    .line 152
    .line 153
    invoke-direct {v12, v14, v15, v13}, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    sput-object v12, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_STASH_RIGHT:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 157
    .line 158
    new-instance v13, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 159
    .line 160
    const/16 v14, 0x3a5

    .line 161
    .line 162
    const-string v15, "PICTURE_IN_PICTURE_SHOW_SETTINGS"

    .line 163
    .line 164
    move-object/from16 v16, v12

    .line 165
    .line 166
    const/16 v12, 0xd

    .line 167
    .line 168
    invoke-direct {v13, v15, v12, v14}, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    .line 169
    .line 170
    .line 171
    sput-object v13, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_SHOW_SETTINGS:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 172
    .line 173
    new-instance v14, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 174
    .line 175
    const/16 v12, 0x422

    .line 176
    .line 177
    const-string v15, "PICTURE_IN_PICTURE_CUSTOM_CLOSE"

    .line 178
    .line 179
    move-object/from16 v17, v13

    .line 180
    .line 181
    const/16 v13, 0xe

    .line 182
    .line 183
    invoke-direct {v14, v15, v13, v12}, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    .line 184
    .line 185
    .line 186
    sput-object v14, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_CUSTOM_CLOSE:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 187
    .line 188
    move-object/from16 v12, v16

    .line 189
    .line 190
    move-object/from16 v13, v17

    .line 191
    .line 192
    filled-new-array/range {v0 .. v14}, [Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    sput-object v0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->$VALUES:[Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 197
    .line 198
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->mId:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->$VALUES:[Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->mId:I

    .line 2
    .line 3
    return p0
.end method
