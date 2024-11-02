.class public final Lcom/android/systemui/controls/ui/CustomControlViewHolder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public actionIcon:Lcom/android/systemui/controls/ui/view/ActionIconView;

.field public animationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public batteryLayout:Landroid/widget/LinearLayout;

.field public final context:Landroid/content/Context;

.field public controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

.field public controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

.field public customBehavior:Lcom/android/systemui/controls/ui/CustomBehavior;

.field public customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

.field public final icon:Landroid/widget/ImageView;

.field public final layout:Landroid/view/ViewGroup;

.field public layoutType:I

.field public overlayCustomIcon:Landroid/widget/ImageView;

.field public final status:Landroid/widget/TextView;

.field public statusIcon:Landroid/widget/ImageView;

.field public final subtitle:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->icon:Landroid/widget/ImageView;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->status:Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->title:Landroid/widget/TextView;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->subtitle:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic getAnimationView$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getOverlayCustomIcon$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getStatusIcon$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static isCustomBehavior(ILandroid/service/controls/templates/ControlTemplate;I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    .line 6
    .line 7
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    instance-of v1, p1, Landroid/service/controls/templates/ThumbnailTemplate;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_2
    const/16 v1, 0x32

    .line 20
    .line 21
    if-ne p2, v1, :cond_3

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    instance-of v1, p1, Landroid/service/controls/templates/ToggleTemplate;

    .line 25
    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_4
    instance-of v1, p1, Landroid/service/controls/templates/StatelessTemplate;

    .line 30
    .line 31
    if-eqz v1, :cond_5

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_5
    instance-of v1, p1, Landroid/service/controls/templates/ToggleRangeTemplate;

    .line 35
    .line 36
    if-eqz v1, :cond_6

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_6
    instance-of v0, p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    .line 40
    .line 41
    if-eqz v0, :cond_7

    .line 42
    .line 43
    check-cast p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->isCustomBehavior(ILandroid/service/controls/templates/ControlTemplate;I)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    goto :goto_1

    .line 54
    :cond_7
    :goto_0
    const/4 v0, 0x0

    .line 55
    :goto_1
    return v0
.end method


# virtual methods
.method public final initClipLayerAndBaseLayer()Lkotlin/Pair;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f080716

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    const v0, 0x7f0a026a

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    .line 40
    .line 41
    const v1, 0x7f0a011e

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    .line 49
    .line 50
    new-instance v1, Lkotlin/Pair;

    .line 51
    .line 52
    invoke-direct {v1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-object v1
.end method

.method public final initialize(Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ui/util/ControlsUtil;ILcom/android/systemui/controls/util/ControlsRuneWrapper;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 6
    .line 7
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    iget-object p4, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    if-ne p3, p2, :cond_0

    .line 15
    .line 16
    const p1, 0x7f0a0146

    .line 17
    .line 18
    .line 19
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/widget/ImageView;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    .line 26
    .line 27
    const p1, 0x7f0a0147

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/widget/LinearLayout;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->batteryLayout:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    new-instance p1, Lcom/android/systemui/controls/ui/view/ActionIconView;

    .line 44
    .line 45
    const v0, 0x7f0a08db

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/view/ViewStub;

    .line 53
    .line 54
    invoke-direct {p1, v0}, Lcom/android/systemui/controls/ui/view/ActionIconView;-><init>(Landroid/view/ViewStub;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ActionIconView;

    .line 58
    .line 59
    :cond_1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_STATUS:Z

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    const p1, 0x7f0a0adc

    .line 64
    .line 65
    .line 66
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroid/view/ViewStub;

    .line 71
    .line 72
    const v0, 0x7f0d00ab

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Landroid/widget/ImageView;

    .line 83
    .line 84
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    .line 85
    .line 86
    :cond_2
    :goto_0
    iput p3, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layoutType:I

    .line 87
    .line 88
    :cond_3
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_OVERLAY_CUSTOM_ICON:Z

    .line 89
    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    const p3, 0x7f0a07a9

    .line 93
    .line 94
    .line 95
    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    check-cast p3, Landroid/widget/ImageView;

    .line 100
    .line 101
    iput-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    .line 102
    .line 103
    :cond_4
    sget-boolean p3, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    .line 104
    .line 105
    if-eqz p3, :cond_d

    .line 106
    .line 107
    iget-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 108
    .line 109
    const/4 v0, 0x0

    .line 110
    if-eqz p3, :cond_5

    .line 111
    .line 112
    iget-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->context:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {p3}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    if-ne p3, p2, :cond_5

    .line 119
    .line 120
    move p3, p2

    .line 121
    goto :goto_1

    .line 122
    :cond_5
    move p3, v0

    .line 123
    :goto_1
    if-eqz p3, :cond_d

    .line 124
    .line 125
    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    const p4, 0x7f0701fc

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 133
    .line 134
    .line 135
    move-result p4

    .line 136
    const v1, 0x7f070201

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    iget v2, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->layoutType:I

    .line 144
    .line 145
    iget-object v3, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->subtitle:Landroid/widget/TextView;

    .line 146
    .line 147
    if-eqz v2, :cond_8

    .line 148
    .line 149
    if-eq v2, p2, :cond_6

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    const v2, 0x7f0701f2

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    const v4, 0x7f0701f0

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 163
    .line 164
    .line 165
    move-result p3

    .line 166
    iget-object v4, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    .line 167
    .line 168
    if-eqz v4, :cond_7

    .line 169
    .line 170
    sget-object v5, Lcom/android/systemui/controls/ui/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;

    .line 171
    .line 172
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-static {v4, v2, v2}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    .line 176
    .line 177
    .line 178
    :cond_7
    invoke-virtual {v3, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_8
    const v2, 0x7f0701ea

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    const v4, 0x7f07021d

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 193
    .line 194
    .line 195
    move-result p3

    .line 196
    sget-boolean v4, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

    .line 197
    .line 198
    if-eqz v4, :cond_9

    .line 199
    .line 200
    iget-object v4, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ActionIconView;

    .line 201
    .line 202
    if-eqz v4, :cond_9

    .line 203
    .line 204
    sget-object v5, Lcom/android/systemui/controls/ui/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;

    .line 205
    .line 206
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    iget-object v5, v4, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIcon:Landroid/widget/ImageView;

    .line 210
    .line 211
    invoke-static {v5, v2, v2}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    .line 212
    .line 213
    .line 214
    sget-boolean v5, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON_PROGRESS:Z

    .line 215
    .line 216
    if-eqz v5, :cond_9

    .line 217
    .line 218
    iget-object v4, v4, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIconProgress:Landroid/widget/ProgressBar;

    .line 219
    .line 220
    if-eqz v4, :cond_9

    .line 221
    .line 222
    invoke-static {v4, v2, v2}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    .line 223
    .line 224
    .line 225
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    .line 226
    .line 227
    if-eqz v2, :cond_a

    .line 228
    .line 229
    sget-object v4, Lcom/android/systemui/controls/ui/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;

    .line 230
    .line 231
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-static {v2, p3, p3}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    .line 235
    .line 236
    .line 237
    :cond_a
    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 238
    .line 239
    .line 240
    :goto_2
    sget-object p3, Lcom/android/systemui/controls/ui/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;

    .line 241
    .line 242
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    iget-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->icon:Landroid/widget/ImageView;

    .line 246
    .line 247
    invoke-static {p3, p4, p4}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    .line 248
    .line 249
    .line 250
    iget-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 251
    .line 252
    if-eqz p3, :cond_b

    .line 253
    .line 254
    if-ne p1, p2, :cond_b

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_b
    move p2, v0

    .line 258
    :goto_3
    if-eqz p2, :cond_c

    .line 259
    .line 260
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    .line 261
    .line 262
    if-eqz p1, :cond_c

    .line 263
    .line 264
    invoke-static {p1, p4, p4}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    .line 265
    .line 266
    .line 267
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->status:Landroid/widget/TextView;

    .line 268
    .line 269
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 270
    .line 271
    .line 272
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->title:Landroid/widget/TextView;

    .line 273
    .line 274
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 275
    .line 276
    .line 277
    :cond_d
    return-void
.end method
