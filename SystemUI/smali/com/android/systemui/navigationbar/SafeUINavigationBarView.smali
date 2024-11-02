.class public final Lcom/android/systemui/navigationbar/SafeUINavigationBarView;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInsetsSourceOwner:Landroid/os/Binder;

.field public mView:Landroid/view/View;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Binder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mInsetsSourceOwner:Landroid/os/Binder;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mWindowManager:Landroid/view/WindowManager;

    .line 14
    .line 15
    return-void
.end method

.method public static sendEvent(I)V
    .locals 14

    .line 1
    const/4 v6, 0x4

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v3

    .line 6
    new-instance v13, Landroid/view/KeyEvent;

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v9, -0x1

    .line 11
    const/4 v10, 0x0

    .line 12
    const/16 v11, 0x48

    .line 13
    .line 14
    const/16 v12, 0x101

    .line 15
    .line 16
    move-object v0, v13

    .line 17
    move-wide v1, v3

    .line 18
    move v5, p0

    .line 19
    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v13, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final getBarLayoutParamsForRotation()Landroid/view/WindowManager$LayoutParams;
    .locals 10

    .line 1
    const/4 v1, -0x1

    .line 2
    iget-object v6, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v2, 0x1050255

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v3, 0x105025a

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    .line 27
    .line 28
    const/16 v3, 0x7e3

    .line 29
    .line 30
    const v4, 0x20840068

    .line 31
    .line 32
    .line 33
    const/4 v5, -0x3

    .line 34
    move-object v0, v8

    .line 35
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 36
    .line 37
    .line 38
    const/16 v0, 0x50

    .line 39
    .line 40
    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 41
    .line 42
    new-instance v0, Landroid/view/InsetsFrameProvider;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mInsetsSourceOwner:Landroid/os/Binder;

    .line 45
    .line 46
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-direct {v0, p0, v2, v1}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 55
    .line 56
    const/16 v3, 0x7db

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-direct {v1, v3, v4}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;-><init>(ILandroid/graphics/Insets;)V

    .line 60
    .line 61
    .line 62
    filled-new-array {v1}, [Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/InsetsFrameProvider;->setInsetsSizeOverrides([Landroid/view/InsetsFrameProvider$InsetsSizeOverride;)Landroid/view/InsetsFrameProvider;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v1, -0x1

    .line 71
    if-eq v7, v1, :cond_0

    .line 72
    .line 73
    invoke-static {v2, v2, v2, v7}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    .line 78
    .line 79
    .line 80
    :cond_0
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const v3, 0x11101c1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/4 v3, 0x1

    .line 92
    xor-int/2addr v1, v3

    .line 93
    invoke-virtual {v0, v1, v3}, Landroid/view/InsetsFrameProvider;->setFlags(II)Landroid/view/InsetsFrameProvider;

    .line 94
    .line 95
    .line 96
    new-instance v1, Landroid/view/InsetsFrameProvider;

    .line 97
    .line 98
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    invoke-direct {v1, p0, v2, v4}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    const v5, 0x11101c3

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_1

    .line 117
    .line 118
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 119
    .line 120
    invoke-virtual {v1, v4}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    .line 121
    .line 122
    .line 123
    :cond_1
    new-instance v4, Landroid/view/InsetsFrameProvider;

    .line 124
    .line 125
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-direct {v4, p0, v2, v5}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 130
    .line 131
    .line 132
    new-instance v5, Landroid/view/InsetsFrameProvider;

    .line 133
    .line 134
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    invoke-direct {v5, p0, v2, v7}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, v2}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-virtual {v5, v7}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-virtual {v5, v7}, Landroid/view/InsetsFrameProvider;->setMinimalInsetsSizeInDisplayCutoutSafe(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    new-instance v7, Landroid/view/InsetsFrameProvider;

    .line 162
    .line 163
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    invoke-direct {v7, p0, v3, v9}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v2}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {p0, v3}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {p0, v3}, Landroid/view/InsetsFrameProvider;->setMinimalInsetsSizeInDisplayCutoutSafe(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    filled-new-array {v0, v1, v4, v5, p0}, [Landroid/view/InsetsFrameProvider;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    iput-object p0, v8, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 195
    .line 196
    new-instance p0, Landroid/os/Binder;

    .line 197
    .line 198
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 199
    .line 200
    .line 201
    iput-object p0, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 202
    .line 203
    const p0, 0x7f130be1

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    iput-object p0, v8, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 211
    .line 212
    iget p0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 213
    .line 214
    const v0, 0x1001000

    .line 215
    .line 216
    .line 217
    or-int/2addr p0, v0

    .line 218
    iput p0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 219
    .line 220
    const/4 p0, 0x3

    .line 221
    iput p0, v8, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 222
    .line 223
    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 224
    .line 225
    new-instance p0, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v0, "SafeUINavigationBar"

    .line 228
    .line 229
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-virtual {v8, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v8, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 250
    .line 251
    .line 252
    return-object v8
.end method
