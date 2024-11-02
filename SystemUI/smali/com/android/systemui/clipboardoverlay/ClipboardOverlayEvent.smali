.class public final enum Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_ACTION_SHOWN:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_ACTION_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_DISMISSED_OTHER:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_DISMISS_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_EDIT_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_EXPANDED_FROM_MINIMIZED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_REMOTE_COPY_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_SHARE_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_SWIPE_DISMISSED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_TAP_OUTSIDE:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_OVERLAY_TIMED_OUT:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

.field public static final enum CLIPBOARD_TOAST_SHOWN:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 2
    .line 3
    const/16 v1, 0x3b5

    .line 4
    .line 5
    const-string v2, "CLIPBOARD_OVERLAY_ENTERED"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 12
    .line 13
    const/16 v2, 0x3b6

    .line 14
    .line 15
    const-string v3, "CLIPBOARD_OVERLAY_UPDATED"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 22
    .line 23
    const/16 v3, 0x3b7

    .line 24
    .line 25
    const-string v4, "CLIPBOARD_OVERLAY_EDIT_TAPPED"

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    sput-object v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_EDIT_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 32
    .line 33
    new-instance v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 34
    .line 35
    const/16 v4, 0x42b

    .line 36
    .line 37
    const-string v5, "CLIPBOARD_OVERLAY_SHARE_TAPPED"

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    sput-object v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_SHARE_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 44
    .line 45
    new-instance v4, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 46
    .line 47
    const/16 v5, 0x4ec

    .line 48
    .line 49
    const-string v6, "CLIPBOARD_OVERLAY_ACTION_SHOWN"

    .line 50
    .line 51
    const/4 v7, 0x4

    .line 52
    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    .line 53
    .line 54
    .line 55
    sput-object v4, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_ACTION_SHOWN:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 56
    .line 57
    new-instance v5, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 58
    .line 59
    const/16 v6, 0x3b8

    .line 60
    .line 61
    const-string v7, "CLIPBOARD_OVERLAY_ACTION_TAPPED"

    .line 62
    .line 63
    const/4 v8, 0x5

    .line 64
    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    .line 65
    .line 66
    .line 67
    sput-object v5, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_ACTION_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 68
    .line 69
    new-instance v6, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 70
    .line 71
    const/16 v7, 0x3b9

    .line 72
    .line 73
    const-string v8, "CLIPBOARD_OVERLAY_REMOTE_COPY_TAPPED"

    .line 74
    .line 75
    const/4 v9, 0x6

    .line 76
    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v6, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_REMOTE_COPY_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 80
    .line 81
    new-instance v7, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 82
    .line 83
    const/16 v8, 0x3ba

    .line 84
    .line 85
    const-string v9, "CLIPBOARD_OVERLAY_TIMED_OUT"

    .line 86
    .line 87
    const/4 v10, 0x7

    .line 88
    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    .line 89
    .line 90
    .line 91
    sput-object v7, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_TIMED_OUT:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 92
    .line 93
    new-instance v8, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 94
    .line 95
    const/16 v9, 0x3bb

    .line 96
    .line 97
    const-string v10, "CLIPBOARD_OVERLAY_DISMISS_TAPPED"

    .line 98
    .line 99
    const/16 v11, 0x8

    .line 100
    .line 101
    invoke-direct {v8, v10, v11, v9}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    .line 102
    .line 103
    .line 104
    sput-object v8, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_DISMISS_TAPPED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 105
    .line 106
    new-instance v9, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 107
    .line 108
    const/16 v10, 0x3bc

    .line 109
    .line 110
    const-string v11, "CLIPBOARD_OVERLAY_SWIPE_DISMISSED"

    .line 111
    .line 112
    const/16 v12, 0x9

    .line 113
    .line 114
    invoke-direct {v9, v11, v12, v10}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    .line 115
    .line 116
    .line 117
    sput-object v9, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_SWIPE_DISMISSED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 118
    .line 119
    new-instance v10, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 120
    .line 121
    const/16 v11, 0x435

    .line 122
    .line 123
    const-string v12, "CLIPBOARD_OVERLAY_TAP_OUTSIDE"

    .line 124
    .line 125
    const/16 v13, 0xa

    .line 126
    .line 127
    invoke-direct {v10, v12, v13, v11}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    .line 128
    .line 129
    .line 130
    sput-object v10, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_TAP_OUTSIDE:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 131
    .line 132
    new-instance v11, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 133
    .line 134
    const/16 v12, 0x436

    .line 135
    .line 136
    const-string v13, "CLIPBOARD_OVERLAY_DISMISSED_OTHER"

    .line 137
    .line 138
    const/16 v14, 0xb

    .line 139
    .line 140
    invoke-direct {v11, v13, v14, v12}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    .line 141
    .line 142
    .line 143
    sput-object v11, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_DISMISSED_OTHER:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 144
    .line 145
    new-instance v12, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 146
    .line 147
    const/16 v13, 0x54c

    .line 148
    .line 149
    const-string v14, "CLIPBOARD_OVERLAY_SHOWN_EXPANDED"

    .line 150
    .line 151
    const/16 v15, 0xc

    .line 152
    .line 153
    invoke-direct {v12, v14, v15, v13}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    new-instance v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 157
    .line 158
    const/16 v14, 0x54d

    .line 159
    .line 160
    const-string v15, "CLIPBOARD_OVERLAY_SHOWN_MINIMIZED"

    .line 161
    .line 162
    move-object/from16 v16, v12

    .line 163
    .line 164
    const/16 v12, 0xd

    .line 165
    .line 166
    invoke-direct {v13, v15, v12, v14}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    .line 167
    .line 168
    .line 169
    new-instance v14, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 170
    .line 171
    const/16 v12, 0x54e

    .line 172
    .line 173
    const-string v15, "CLIPBOARD_OVERLAY_EXPANDED_FROM_MINIMIZED"

    .line 174
    .line 175
    move-object/from16 v17, v13

    .line 176
    .line 177
    const/16 v13, 0xe

    .line 178
    .line 179
    invoke-direct {v14, v15, v13, v12}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    .line 180
    .line 181
    .line 182
    sput-object v14, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_EXPANDED_FROM_MINIMIZED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 183
    .line 184
    new-instance v15, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 185
    .line 186
    const/16 v12, 0x4f6

    .line 187
    .line 188
    const-string v13, "CLIPBOARD_TOAST_SHOWN"

    .line 189
    .line 190
    move-object/from16 v18, v14

    .line 191
    .line 192
    const/16 v14, 0xf

    .line 193
    .line 194
    invoke-direct {v15, v13, v14, v12}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;-><init>(Ljava/lang/String;II)V

    .line 195
    .line 196
    .line 197
    sput-object v15, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_TOAST_SHOWN:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 198
    .line 199
    move-object/from16 v12, v16

    .line 200
    .line 201
    move-object/from16 v13, v17

    .line 202
    .line 203
    move-object/from16 v14, v18

    .line 204
    .line 205
    filled-new-array/range {v0 .. v15}, [Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    sput-object v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->$VALUES:[Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 210
    .line 211
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
    iput p3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->mId:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->$VALUES:[Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->mId:I

    .line 2
    .line 3
    return p0
.end method
