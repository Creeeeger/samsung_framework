.class public final Lcom/android/systemui/privacy/television/TvPrivacyChipsController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;


# static fields
.field public static final CHIPS:Ljava/util/List;


# instance fields
.field public final mAccessibilityRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda3;

.field public final mBounds:[Landroid/graphics/Rect;

.field public mChips:Ljava/util/List;

.field public mChipsContainer:Landroid/view/ViewGroup;

.field public final mCollapseRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;

.field public final mCollapseTransition:Landroid/transition/TransitionSet;

.field public final mContext:Landroid/content/Context;

.field public final mIWindowManager:Landroid/view/IWindowManager;

.field public mIsRtl:Z

.field public final mItemsBeforeLastAnnouncement:Ljava/util/List;

.field public final mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field public mPrivacyItems:Ljava/util/List;

.field public final mTransition:Landroid/transition/TransitionSet;

.field public final mUiThreadHandler:Landroid/os/Handler;

.field public final mUpdatePrivacyItemsRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda2;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MEDIA_PROJECTION:Lcom/android/systemui/privacy/PrivacyType;

    .line 4
    .line 5
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7f0604b7

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;-><init>(Ljava/util/List;IZ)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 17
    .line 18
    sget-object v2, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    .line 19
    .line 20
    sget-object v3, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    .line 21
    .line 22
    filled-new-array {v2, v3}, [Lcom/android/systemui/privacy/PrivacyType;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const v3, 0x7f0604b8

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;-><init>(Ljava/util/List;IZ)V

    .line 35
    .line 36
    .line 37
    filled-new-array {v0, v1}, [Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->CHIPS:Ljava/util/List;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/privacy/PrivacyItemController;Landroid/view/IWindowManager;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mUiThreadHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mCollapseRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    new-instance v0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda2;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mUpdatePrivacyItemsRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda2;

    .line 28
    .line 29
    new-instance v0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda3;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mAccessibilityRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda3;

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    new-array v0, v0, [Landroid/graphics/Rect;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mBounds:[Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 46
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mItemsBeforeLastAnnouncement:Ljava/util/List;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    iput-object p2, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 57
    .line 58
    iput-object p3, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mIWindowManager:Landroid/view/IWindowManager;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    const/4 v0, 0x0

    .line 73
    const/4 v1, 0x1

    .line 74
    if-ne p3, v1, :cond_0

    .line 75
    .line 76
    move p3, v1

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    move p3, v0

    .line 79
    :goto_0
    iput-boolean p3, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mIsRtl:Z

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->updateStaticPrivacyIndicatorBounds()V

    .line 82
    .line 83
    .line 84
    const p3, 0x7f0c0036

    .line 85
    .line 86
    .line 87
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    const v2, 0x7f0c0037

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance v2, Landroid/transition/TransitionSet;

    .line 99
    .line 100
    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v3, Landroid/transition/Fade;

    .line 104
    .line 105
    invoke-direct {v3, v1}, Landroid/transition/Fade;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v3, Landroid/transition/Fade;

    .line 113
    .line 114
    const/4 v4, 0x2

    .line 115
    invoke-direct {v3, v4}, Landroid/transition/Fade;-><init>(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 123
    .line 124
    .line 125
    const-class v3, Landroid/widget/ImageView;

    .line 126
    .line 127
    invoke-virtual {v2, v3, v1}, Landroid/transition/TransitionSet;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 128
    .line 129
    .line 130
    new-instance v3, Landroid/transition/ChangeBounds;

    .line 131
    .line 132
    invoke-direct {v3}, Landroid/transition/ChangeBounds;-><init>()V

    .line 133
    .line 134
    .line 135
    const-class v4, Landroid/widget/ImageView;

    .line 136
    .line 137
    invoke-virtual {v3, v4, v1}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, p1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 141
    .line 142
    .line 143
    new-instance v4, Landroid/transition/ChangeBounds;

    .line 144
    .line 145
    invoke-direct {v4}, Landroid/transition/ChangeBounds;-><init>()V

    .line 146
    .line 147
    .line 148
    const-class v5, Landroid/widget/ImageView;

    .line 149
    .line 150
    invoke-virtual {v4, v5, v1}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, p3}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 154
    .line 155
    .line 156
    new-instance v1, Landroid/transition/AutoTransition;

    .line 157
    .line 158
    invoke-direct {v1}, Landroid/transition/AutoTransition;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 162
    .line 163
    .line 164
    const-class v5, Landroid/widget/ImageView;

    .line 165
    .line 166
    invoke-virtual {v1, v5}, Landroid/transition/TransitionSet;->addTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, p3}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 170
    .line 171
    .line 172
    new-instance p3, Landroid/transition/AutoTransition;

    .line 173
    .line 174
    invoke-direct {p3}, Landroid/transition/AutoTransition;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 178
    .line 179
    .line 180
    const-class v5, Landroid/widget/ImageView;

    .line 181
    .line 182
    invoke-virtual {p3, v5}, Landroid/transition/TransitionSet;->addTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3, p1}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 186
    .line 187
    .line 188
    new-instance p1, Landroid/transition/TransitionSet;

    .line 189
    .line 190
    invoke-direct {p1}, Landroid/transition/TransitionSet;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1, p3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    const p3, 0x7f0b00d1

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    int-to-long v5, v3

    .line 217
    invoke-virtual {p1, v5, v6}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mTransition:Landroid/transition/TransitionSet;

    .line 222
    .line 223
    new-instance v3, Landroid/transition/TransitionSet;

    .line 224
    .line 225
    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v2, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v2, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    int-to-long p2, p2

    .line 249
    invoke-virtual {v0, p2, p3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    iput-object p2, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mCollapseTransition:Landroid/transition/TransitionSet;

    .line 254
    .line 255
    new-instance p3, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$1;

    .line 256
    .line 257
    invoke-direct {p3, p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$1;-><init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, p3}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2, p3}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 264
    .line 265
    .line 266
    return-void
.end method

.method public static listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/systemui/privacy/PrivacyItem;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    .line 18
    .line 19
    if-ne v0, p1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
.end method


# virtual methods
.method public final createAndShowIndicator()V
    .locals 10

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 2
    .line 3
    const v1, 0x7f140248

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-direct {v0, v2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChips:Ljava/util/List;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const v3, 0x7f0d04ed

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/view/ViewGroup;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const v3, 0x7f070b2c

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    .line 47
    const/4 v4, -0x2

    .line 48
    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 55
    .line 56
    .line 57
    sget-object v1, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->CHIPS:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_0

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 74
    .line 75
    new-instance v5, Lcom/android/systemui/privacy/television/PrivacyItemsChip;

    .line 76
    .line 77
    invoke-direct {v5, v0, v4}, Lcom/android/systemui/privacy/television/PrivacyItemsChip;-><init>(Landroid/content/Context;Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 81
    .line 82
    invoke-virtual {v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    iget-object v4, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChips:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    const-class v0, Landroid/view/WindowManager;

    .line 92
    .line 93
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/view/WindowManager;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 100
    .line 101
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    .line 102
    .line 103
    const/4 v4, -0x2

    .line 104
    const/4 v5, -0x2

    .line 105
    const/16 v6, 0x7d6

    .line 106
    .line 107
    const/16 v7, 0x8

    .line 108
    .line 109
    const/4 v8, -0x3

    .line 110
    move-object v3, v9

    .line 111
    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 112
    .line 113
    .line 114
    iget-boolean v3, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mIsRtl:Z

    .line 115
    .line 116
    if-eqz v3, :cond_1

    .line 117
    .line 118
    const/4 v3, 0x3

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    const/4 v3, 0x5

    .line 121
    :goto_1
    or-int/lit8 v3, v3, 0x30

    .line 122
    .line 123
    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 124
    .line 125
    const-string v3, "MicrophoneCaptureIndicator"

    .line 126
    .line 127
    invoke-virtual {v9, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iput-object v2, v9, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 135
    .line 136
    invoke-interface {v0, v1, v9}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    new-instance v2, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$2;

    .line 146
    .line 147
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$2;-><init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;Landroid/view/ViewGroup;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final makeAccessibilityAnnouncement()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mItemsBeforeLastAnnouncement:Ljava/util/List;

    .line 7
    .line 8
    sget-object v1, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 15
    .line 16
    invoke-static {v3, v1}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sget-object v3, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    .line 21
    .line 22
    invoke-static {v0, v3}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    iget-object v5, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {v5, v3}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    sget-object v5, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MEDIA_PROJECTION:Lcom/android/systemui/privacy/PrivacyType;

    .line 33
    .line 34
    invoke-static {v0, v5}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    iget-object v7, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 39
    .line 40
    invoke-static {v7, v5}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->listContainsPrivacyType(Ljava/util/List;Lcom/android/systemui/privacy/PrivacyType;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget-object v7, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    const v1, 0x7f130b1f

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    if-eqz v2, :cond_2

    .line 59
    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    if-nez v3, :cond_2

    .line 65
    .line 66
    const v1, 0x7f130b20

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const/4 v8, 0x0

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    if-nez v1, :cond_3

    .line 74
    .line 75
    const v1, 0x7f1302fe

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    if-nez v2, :cond_4

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    const v1, 0x7f1302fd

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    move v1, v8

    .line 88
    :goto_0
    if-eqz v1, :cond_5

    .line 89
    .line 90
    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 91
    .line 92
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    move v1, v8

    .line 100
    :cond_5
    if-eqz v4, :cond_6

    .line 101
    .line 102
    if-nez v3, :cond_6

    .line 103
    .line 104
    const v1, 0x7f130b22

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_6
    if-nez v4, :cond_7

    .line 109
    .line 110
    if-eqz v3, :cond_7

    .line 111
    .line 112
    const v1, 0x7f130b21

    .line 113
    .line 114
    .line 115
    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 116
    .line 117
    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 118
    .line 119
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    :cond_8
    if-nez v6, :cond_9

    .line 127
    .line 128
    if-eqz v5, :cond_9

    .line 129
    .line 130
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 131
    .line 132
    const v2, 0x7f130e81

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_9
    if-eqz v6, :cond_a

    .line 144
    .line 145
    if-nez v5, :cond_a

    .line 146
    .line 147
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 148
    .line 149
    const v2, 0x7f130e87

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    :cond_a
    :goto_2
    check-cast v0, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 162
    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 165
    .line 166
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mIsRtl:Z

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mIsRtl:Z

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->removeIndicatorView()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->createAndShowIndicator()V

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->updateStaticPrivacyIndicatorBounds()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onPrivacyItemsChanged(Ljava/util/List;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mUiThreadHandler:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mUpdatePrivacyItemsRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda2;

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    const-wide/16 v0, 0xc8

    .line 48
    .line 49
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public final removeIndicatorView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mUiThreadHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mCollapseRunnable:Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-class v1, Landroid/view/WindowManager;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/WindowManager;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChips:Ljava/util/List;

    .line 31
    .line 32
    return-void
.end method

.method public final start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateChips()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->createAndShowIndicator()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    new-instance v0, Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mPrivacyItems:Ljava/util/List;

    .line 23
    .line 24
    new-instance v2, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-direct {v2, v3, v0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;-><init>(ILjava/util/Set;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mTransition:Landroid/transition/TransitionSet;

    .line 36
    .line 37
    invoke-static {v1, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChips:Ljava/util/List;

    .line 41
    .line 42
    new-instance v1, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-direct {v1, v2, v0}, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;-><init>(ILjava/util/Set;)V

    .line 46
    .line 47
    .line 48
    check-cast p0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final updateStaticPrivacyIndicatorBounds()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f070b30

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const v3, 0x7f070b29

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const v4, 0x7f070b2c

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    mul-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    const-class v4, Landroid/view/WindowManager;

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Landroid/view/WindowManager;

    .line 37
    .line 38
    invoke-interface {v4}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    new-instance v5, Landroid/graphics/Rect;

    .line 47
    .line 48
    iget-boolean v6, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mIsRtl:Z

    .line 49
    .line 50
    if-eqz v6, :cond_0

    .line 51
    .line 52
    iget v7, v4, Landroid/graphics/Rect;->left:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 56
    .line 57
    sub-int/2addr v7, v2

    .line 58
    :goto_0
    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 59
    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 63
    .line 64
    add-int/2addr v4, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 67
    .line 68
    :goto_1
    add-int/2addr v1, v8

    .line 69
    add-int/2addr v1, v3

    .line 70
    invoke-direct {v5, v7, v8, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mBounds:[Landroid/graphics/Rect;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    aput-object v5, v1, v2

    .line 77
    .line 78
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mIWindowManager:Landroid/view/IWindowManager;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-interface {p0, v0, v1}, Landroid/view/IWindowManager;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catch_0
    const-string p0, "TvPrivacyChipsController"

    .line 89
    .line 90
    const-string v0, "could not update privacy indicator bounds"

    .line 91
    .line 92
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :goto_2
    return-void
.end method
