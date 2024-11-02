.class public final Lcom/android/systemui/qs/customize/SecQSCustomizerController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final ACTIVE_LEFT_PAGE_AREA:I

.field public final ACTIVE_RIGHT_PAGE_AREA:I

.field public final mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

.field public final mAnimator:Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

.field public final mClickListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda0;

.field public final mContext:Landroid/content/Context;

.field public mCurrentOrientation:I

.field public mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

.field public mCustomActionMoveItem:Lcom/android/systemui/qs/customize/CustomActionMoveItem;

.field public mDoneButton:Landroid/view/View;

.field public mDoneCallBack:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity$onCreate$5;

.field public final mDoneOnClickListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$1;

.field public final mDragListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;

.field public final mEditResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

.field public final mHandler:Lcom/android/systemui/qs/customize/SecQSCustomizerController$9;

.field public mIsDroppedOnView:Z

.field public mIsReadyToClick:Z

.field public mIsReadyToMove:Z

.field public final mIsTopEdit:Z

.field public final mLongClickListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;

.field public mLongClickedView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

.field public mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

.field public mPointX:F

.field public mPointY:F

.field public mResetButton:Landroid/view/View;

.field public mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mResetOnClickListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$2;

.field public final mTileAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

.field public final mTopMinMaxNum:I

.field public mWhereAmI:I


# direct methods
.method public static -$$Nest$manimatePage(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mIsReadyToMove:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;-><init>()V

    .line 9
    .line 10
    .line 11
    iput p2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->animationType:I

    .line 12
    .line 13
    iput-object p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/SecQSCustomizerController$9;

    .line 16
    .line 17
    const/16 p2, 0x66

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mIsReadyToMove:Z

    .line 37
    .line 38
    new-instance p2, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda2;

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v0, 0xc8

    .line 45
    .line 46
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerBase;Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;Z)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mIsReadyToMove:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mIsReadyToClick:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 11
    .line 12
    const/16 v1, 0x3e8

    .line 13
    .line 14
    iput v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->ACTIVE_LEFT_PAGE_AREA:I

    .line 15
    .line 16
    const/16 v1, 0x7d0

    .line 17
    .line 18
    iput v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->ACTIVE_RIGHT_PAGE_AREA:I

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mIsDroppedOnView:Z

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCurrentOrientation:I

    .line 24
    .line 25
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerController$1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$1;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDoneOnClickListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$1;

    .line 31
    .line 32
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerController$2;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$2;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetOnClickListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$2;

    .line 38
    .line 39
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerController$3;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$3;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;

    .line 50
    .line 51
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDragListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;

    .line 57
    .line 58
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerController$9;

    .line 59
    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$9;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Landroid/os/Looper;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/SecQSCustomizerController$9;

    .line 68
    .line 69
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mClickListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 77
    .line 78
    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 79
    .line 80
    iput-object p2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mEditResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 89
    .line 90
    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 91
    .line 92
    const v2, 0x7f0a08bf

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetButton:Landroid/view/View;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 102
    .line 103
    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 104
    .line 105
    const v2, 0x7f0a0360

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDoneButton:Landroid/view/View;

    .line 113
    .line 114
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 117
    .line 118
    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 119
    .line 120
    invoke-direct {v1, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerBase;)V

    .line 121
    .line 122
    .line 123
    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAnimator:Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;

    .line 124
    .line 125
    iget-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mActiveContents:Lkotlin/collections/builders/ListBuilder;

    .line 126
    .line 127
    invoke-virtual {v2}, Lkotlin/collections/builders/ListBuilder;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    :goto_0
    move-object v3, v2

    .line 132
    check-cast v3, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 133
    .line 134
    invoke-virtual {v3}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    const/4 v5, 0x0

    .line 139
    if-eqz v4, :cond_0

    .line 140
    .line 141
    invoke-virtual {v3}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_0
    iget-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mAvailableAreaContents:Lkotlin/collections/builders/ListBuilder;

    .line 152
    .line 153
    invoke-virtual {v2}, Lkotlin/collections/builders/ListBuilder;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    :goto_1
    move-object v3, v2

    .line 158
    check-cast v3, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 159
    .line 160
    invoke-virtual {v3}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_1

    .line 165
    .line 166
    invoke-virtual {v3}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Landroid/view/View;

    .line 171
    .line 172
    iget v4, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->startY:I

    .line 173
    .line 174
    int-to-float v4, v4

    .line 175
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_1
    iget-object v1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mView:Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 183
    .line 184
    const v2, 0x7f0a0850

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    const v2, 0x3f733333    # 0.95f

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 198
    .line 199
    .line 200
    iput-boolean p3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mIsTopEdit:Z

    .line 201
    .line 202
    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mEditResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 203
    .line 204
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 205
    .line 206
    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 207
    .line 208
    const v2, 0x7f0a084c

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 216
    .line 217
    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 218
    .line 219
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAnimator:Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;

    .line 220
    .line 221
    iput-object v2, v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAnimator:Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;

    .line 222
    .line 223
    iput-boolean p3, v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsTopEdit:Z

    .line 224
    .line 225
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 226
    .line 227
    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 228
    .line 229
    const v3, 0x7f0a084d

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 237
    .line 238
    iput-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 239
    .line 240
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAnimator:Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;

    .line 241
    .line 242
    iput-object v3, v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAnimator:Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;

    .line 243
    .line 244
    iput-boolean p3, v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsTopEdit:Z

    .line 245
    .line 246
    const-class v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 247
    .line 248
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    check-cast v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 253
    .line 254
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 255
    .line 256
    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 257
    .line 258
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    invoke-static {v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQsTileMinNum(Landroid/content/Context;)I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mTopMinMaxNum:I

    .line 270
    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    const-string v4, "audio"

    .line 276
    .line 277
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    check-cast v3, Landroid/media/AudioManager;

    .line 282
    .line 283
    iput-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAudioManager:Landroid/media/AudioManager;

    .line 284
    .line 285
    if-eqz p3, :cond_2

    .line 286
    .line 287
    iget-object p2, p2, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->tileTopAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_2
    iget-object p2, p2, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->tileFullAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    .line 291
    .line 292
    :goto_2
    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    .line 293
    .line 294
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    iget p3, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mActiveCurrentPage:I

    .line 298
    .line 299
    iput p3, v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialPagenum:I

    .line 300
    .line 301
    iget p3, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAvailableCurrentPage:I

    .line 302
    .line 303
    iput p3, v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialPagenum:I

    .line 304
    .line 305
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 306
    .line 307
    check-cast p3, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 308
    .line 309
    invoke-virtual {p3}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->updateResources()V

    .line 310
    .line 311
    .line 312
    iget-object p3, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mActiveTiles:Ljava/util/ArrayList;

    .line 313
    .line 314
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;

    .line 315
    .line 316
    if-eqz p3, :cond_3

    .line 317
    .line 318
    invoke-virtual {v1, p3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addTiles(Ljava/util/ArrayList;)V

    .line 319
    .line 320
    .line 321
    iget-object p3, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mActiveTiles:Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object p3

    .line 327
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-eqz v3, :cond_3

    .line 332
    .line 333
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 338
    .line 339
    iput-object v2, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mEditResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 343
    .line 344
    iget-boolean v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mIsTopEdit:Z

    .line 345
    .line 346
    const/4 v4, 0x0

    .line 347
    if-eqz v3, :cond_4

    .line 348
    .line 349
    iget-object p3, p3, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->tileTopAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    .line 350
    .line 351
    if-eqz p3, :cond_5

    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_4
    iget-object p3, p3, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->tileFullAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    .line 355
    .line 356
    if-eqz p3, :cond_5

    .line 357
    .line 358
    :goto_4
    iget-boolean p3, p3, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mIsLoadedAllTiles:Z

    .line 359
    .line 360
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 361
    .line 362
    .line 363
    move-result-object p3

    .line 364
    goto :goto_5

    .line 365
    :cond_5
    move-object p3, v4

    .line 366
    :goto_5
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 367
    .line 368
    .line 369
    move-result p3

    .line 370
    if-eqz p3, :cond_6

    .line 371
    .line 372
    iget-object p3, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAvailableTiles:Ljava/util/ArrayList;

    .line 373
    .line 374
    if-eqz p3, :cond_7

    .line 375
    .line 376
    iput-object v4, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mOnTileChangedCallback:Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda6;

    .line 377
    .line 378
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 379
    .line 380
    invoke-virtual {v3, p3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addTiles(Ljava/util/ArrayList;)V

    .line 381
    .line 382
    .line 383
    iget-object p3, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAvailableTiles:Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 386
    .line 387
    .line 388
    move-result-object p3

    .line 389
    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-eqz v3, :cond_7

    .line 394
    .line 395
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 400
    .line 401
    iput-object v2, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 402
    .line 403
    goto :goto_6

    .line 404
    :cond_6
    new-instance p3, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda6;

    .line 405
    .line 406
    invoke-direct {p3, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    .line 407
    .line 408
    .line 409
    iput-object p3, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mOnTileChangedCallback:Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda6;

    .line 410
    .line 411
    :cond_7
    iget-object p2, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAllTiles:Ljava/util/List;

    .line 412
    .line 413
    if-nez p2, :cond_8

    .line 414
    .line 415
    goto :goto_7

    .line 416
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    :goto_7
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 421
    .line 422
    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 423
    .line 424
    iget p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveRows:I

    .line 425
    .line 426
    iget p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveColumns:I

    .line 427
    .line 428
    mul-int/2addr p2, p0

    .line 429
    div-int/2addr v0, p2

    .line 430
    add-int/2addr v0, p1

    .line 431
    if-gtz v0, :cond_9

    .line 432
    .line 433
    const/4 v0, 0x3

    .line 434
    :cond_9
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 435
    .line 436
    .line 437
    return-void
.end method


# virtual methods
.method public final animateArea(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->animationType:I

    .line 7
    .line 8
    iput p3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->touchedPos:I

    .line 9
    .line 10
    iput-object p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->removeAreaAnimationMessage()V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x67

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/SecQSCustomizerController$9;

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-wide/16 p2, 0x64

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final animateCurrentPage(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->touchedPos:I

    .line 7
    .line 8
    iput-object p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 9
    .line 10
    const/16 p1, 0xca

    .line 11
    .line 12
    iput p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->animationType:I

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/SecQSCustomizerController$9;

    .line 15
    .line 16
    const/16 p1, 0x66

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final animationDrop(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xc9

    .line 7
    .line 8
    iput v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->animationType:I

    .line 9
    .line 10
    iput-object p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->removeAreaAnimationMessage()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/SecQSCustomizerController$9;

    .line 16
    .line 17
    const/16 v1, 0x65

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mIsReadyToMove:Z

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-wide/16 v1, 0xc8

    .line 40
    .line 41
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final animationDropOtherPage(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xd2

    .line 7
    .line 8
    iput v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->animationType:I

    .line 9
    .line 10
    iput-object p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->removeAreaAnimationMessage()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/SecQSCustomizerController$9;

    .line 16
    .line 17
    const/16 p1, 0x65

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final animationStart(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const/16 p2, 0xd3

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 p2, 0xc8

    .line 16
    .line 17
    :goto_0
    iput p2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->animationType:I

    .line 18
    .line 19
    iput-object p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/SecQSCustomizerController$9;

    .line 22
    .line 23
    const/16 v1, 0x64

    .line 24
    .line 25
    invoke-virtual {p2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    .line 40
    .line 41
    iget-object p2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const v1, 0x7f130d04

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-object p1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const p1, 0x7f130d03

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->isShown()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->startClosingAnim()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCustomActionMoveItem:Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->actionFinish()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->save()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 25
    .line 26
    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->isShown:Z

    .line 29
    .line 30
    const-string v1, "QPP101"

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string v0, "SecQSCustomizerBase"

    .line 35
    .line 36
    const-string v2, "close customizer"

    .line 37
    .line 38
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->isShown:Z

    .line 43
    .line 44
    invoke-static {v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-static {v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public final createCustomActionMoveItem(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)Lcom/android/systemui/qs/customize/CustomActionMoveItem;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p1

    .line 3
    move-object/from16 v4, p2

    .line 4
    .line 5
    move-object/from16 v5, p3

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTilesInfo()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTilesInfo()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    return-object v0

    .line 29
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v3, 0x2

    .line 34
    const/16 v6, 0x1770

    .line 35
    .line 36
    const/4 v7, 0x1

    .line 37
    const/4 v8, 0x0

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iput v6, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 41
    .line 42
    iget-boolean v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mIsTopEdit:Z

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getMinimumTileNum()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget v9, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mTopMinMaxNum:I

    .line 51
    .line 52
    if-lt v1, v9, :cond_1

    .line 53
    .line 54
    move v10, v8

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v10, v7

    .line 57
    :goto_0
    new-instance v11, Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    .line 58
    .line 59
    iget-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    iget v9, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 62
    .line 63
    if-ne v9, v6, :cond_2

    .line 64
    .line 65
    move v6, v7

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move v6, v8

    .line 68
    :goto_1
    new-instance v9, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;

    .line 69
    .line 70
    invoke-direct {v9, p0, v4, v8}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;I)V

    .line 71
    .line 72
    .line 73
    new-instance v8, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda1;

    .line 74
    .line 75
    invoke-direct {v8, p0, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;I)V

    .line 76
    .line 77
    .line 78
    new-instance v12, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;

    .line 79
    .line 80
    invoke-direct {v12, p0, v4, v7}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;I)V

    .line 81
    .line 82
    .line 83
    new-instance v13, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda4;

    .line 84
    .line 85
    invoke-direct {v13, p0, v5, v10}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Z)V

    .line 86
    .line 87
    .line 88
    move-object v0, v11

    .line 89
    move-object v2, p1

    .line 90
    move-object/from16 v3, p2

    .line 91
    .line 92
    move-object/from16 v4, p3

    .line 93
    .line 94
    move v5, v6

    .line 95
    move-object v6, v9

    .line 96
    move-object v7, v8

    .line 97
    move-object v8, v12

    .line 98
    move-object v9, v13

    .line 99
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;ZLjava/util/function/BiConsumer;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Z)V

    .line 100
    .line 101
    .line 102
    return-object v11

    .line 103
    :cond_3
    const/16 v1, 0x1388

    .line 104
    .line 105
    iput v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 106
    .line 107
    new-instance v11, Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    .line 108
    .line 109
    iget-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    iget v9, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 112
    .line 113
    if-ne v9, v6, :cond_4

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    move v7, v8

    .line 117
    :goto_2
    new-instance v6, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;

    .line 118
    .line 119
    invoke-direct {v6, p0, v5, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;I)V

    .line 120
    .line 121
    .line 122
    new-instance v8, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda1;

    .line 123
    .line 124
    const/4 v3, 0x3

    .line 125
    invoke-direct {v8, p0, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;I)V

    .line 126
    .line 127
    .line 128
    new-instance v9, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;

    .line 129
    .line 130
    invoke-direct {v9, p0, v5, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;I)V

    .line 131
    .line 132
    .line 133
    new-instance v10, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;

    .line 134
    .line 135
    const/4 v3, 0x4

    .line 136
    invoke-direct {v10, p0, v4, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;I)V

    .line 137
    .line 138
    .line 139
    const/4 v12, 0x1

    .line 140
    move-object v0, v11

    .line 141
    move-object v2, p1

    .line 142
    move-object/from16 v3, p3

    .line 143
    .line 144
    move-object/from16 v4, p2

    .line 145
    .line 146
    move v5, v7

    .line 147
    move-object v7, v8

    .line 148
    move-object v8, v9

    .line 149
    move-object v9, v10

    .line 150
    move v10, v12

    .line 151
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;ZLjava/util/function/BiConsumer;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Z)V

    .line 152
    .line 153
    .line 154
    return-object v11
.end method

.method public final moveToArea(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;)V
    .locals 14

    .line 1
    iget-object v0, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 2
    .line 3
    iget v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->animationType:I

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, ", "

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const v5, 0x7f130d15

    .line 15
    .line 16
    .line 17
    invoke-static {v4, v5, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v5, ""

    .line 22
    .line 23
    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    .line 24
    .line 25
    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 26
    .line 27
    const-string v8, " "

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    iget-object v10, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 31
    .line 32
    const/16 v11, 0x3e8

    .line 33
    .line 34
    if-ne v1, v11, :cond_1

    .line 35
    .line 36
    new-instance v12, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const v13, 0x7f130d1a

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v13

    .line 48
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v8, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 55
    .line 56
    iget-object v8, v8, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 57
    .line 58
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-boolean v8, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->isNewCustomTile:Z

    .line 62
    .line 63
    if-eqz v8, :cond_0

    .line 64
    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const v3, 0x7f130399

    .line 71
    .line 72
    .line 73
    invoke-static {v4, v3, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    :cond_0
    invoke-static {v12, v5, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    .line 82
    .line 83
    iput-boolean v9, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    .line 84
    .line 85
    invoke-virtual {v10, v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 86
    .line 87
    .line 88
    iget p1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->touchedPos:I

    .line 89
    .line 90
    invoke-virtual {v7, v0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V

    .line 91
    .line 92
    .line 93
    iget-object p1, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v6, p1, v9}, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->updateRemovedTileList(Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mIsTopEdit:Z

    .line 101
    .line 102
    const/4 v12, 0x1

    .line 103
    if-eqz v3, :cond_4

    .line 104
    .line 105
    invoke-virtual {v10}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getMinimumTileNum()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    iget v13, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mTopMinMaxNum:I

    .line 110
    .line 111
    if-lt v3, v13, :cond_4

    .line 112
    .line 113
    iget-object v3, v10, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 114
    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    move v3, v12

    .line 118
    goto :goto_0

    .line 119
    :cond_2
    move v3, v9

    .line 120
    :goto_0
    if-nez v3, :cond_4

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 123
    .line 124
    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 125
    .line 126
    iput v13, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mMinNum:I

    .line 127
    .line 128
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mContext:Landroid/content/Context;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mMinNum:I

    .line 135
    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const v2, 0x7f11001c

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mToast:Landroid/widget/Toast;

    .line 152
    .line 153
    if-nez v0, :cond_3

    .line 154
    .line 155
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mContext:Landroid/content/Context;

    .line 156
    .line 157
    invoke-static {v0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mToast:Landroid/widget/Toast;

    .line 162
    .line 163
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mToast:Landroid/widget/Toast;

    .line 164
    .line 165
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mToast:Landroid/widget/Toast;

    .line 169
    .line 170
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const v5, 0x7f130d19

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget-object v4, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 193
    .line 194
    iget-object v4, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 195
    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    .line 207
    .line 208
    iput-boolean v12, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    .line 209
    .line 210
    iget p1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->touchedPos:I

    .line 211
    .line 212
    invoke-virtual {v10, v0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7, v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 216
    .line 217
    .line 218
    iget-object p1, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v6, p1, v12}, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->updateRemovedTileList(Ljava/lang/String;Z)V

    .line 221
    .line 222
    .line 223
    :goto_1
    iget p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 224
    .line 225
    const/16 v0, 0x1388

    .line 226
    .line 227
    if-ne p1, v0, :cond_5

    .line 228
    .line 229
    move-object p1, v10

    .line 230
    goto :goto_2

    .line 231
    :cond_5
    move-object p1, v7

    .line 232
    :goto_2
    const/4 v2, 0x0

    .line 233
    iput-object v2, p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 234
    .line 235
    if-ne v1, v11, :cond_6

    .line 236
    .line 237
    const/16 p1, 0x1770

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_6
    move p1, v0

    .line 241
    :goto_3
    iput p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 242
    .line 243
    if-ne p1, v0, :cond_7

    .line 244
    .line 245
    move-object v7, v10

    .line 246
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 247
    .line 248
    iput-object p0, v7, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 249
    .line 250
    return-void
.end method

.method public final onViewAttached()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetButton:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetOnClickListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$2;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDoneButton:Landroid/view/View;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDoneOnClickListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$1;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 26
    .line 27
    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCurrentOrientation:I

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->setupPager()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->setUpPageArea()V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAnimator:Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mActiveContents:Lkotlin/collections/builders/ListBuilder;

    .line 38
    .line 39
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    move-object v1, v0

    .line 44
    check-cast v1, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 45
    .line 46
    invoke-virtual {v1}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/high16 v3, 0x3f800000    # 1.0f

    .line 51
    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-virtual {v1}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-wide/16 v2, 0x64

    .line 69
    .line 70
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mAvailableAreaContents:Lkotlin/collections/builders/ListBuilder;

    .line 79
    .line 80
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_1
    move-object v1, v0

    .line 85
    check-cast v1, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 86
    .line 87
    invoke-virtual {v1}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const-wide/16 v4, 0xc8

    .line 92
    .line 93
    if-eqz v2, :cond_1

    .line 94
    .line 95
    invoke-virtual {v1}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Landroid/view/View;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mView:Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 123
    .line 124
    const v0, 0x7f0a0850

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public final onViewDetached()V
    .locals 0

    .line 1
    return-void
.end method

.method public final removeAreaAnimationMessage()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/SecQSCustomizerController$9;

    .line 2
    .line 3
    const/16 v0, 0x67

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final save()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mTileQueryHelper:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    .line 4
    .line 5
    iget-boolean v1, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mFinished:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "mCurrentSpecs =  "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "SecQSCustomizerTileAdapter"

    .line 28
    .line 29
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getSpec()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 39
    .line 40
    check-cast v4, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const-string v5, "QUICK_PANEL_BUTTON"

    .line 47
    .line 48
    const-string v6, "isChanged"

    .line 49
    .line 50
    const-string v7, "QPPE1022"

    .line 51
    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    const-string/jumbo p0, "save none : same list"

    .line 55
    .line 56
    .line 57
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 61
    .line 62
    const-string v0, "false"

    .line 63
    .line 64
    invoke-static {p0, v7, v6, v0, v5}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :cond_1
    sget-object v4, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 70
    .line 71
    const-string/jumbo v8, "true"

    .line 72
    .line 73
    .line 74
    invoke-static {v4, v7, v6, v8, v5}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 78
    .line 79
    iget-boolean v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mIsTopEdit:Z

    .line 80
    .line 81
    iget-object v6, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    const/4 v7, 0x1

    .line 84
    if-eqz v5, :cond_2

    .line 85
    .line 86
    const-string v5, "QQsHasEditedQuickTileList"

    .line 87
    .line 88
    invoke-static {v6, v5, v7}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    iget-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mQQSHost:Lcom/android/systemui/qs/SecQQSTileHost;

    .line 92
    .line 93
    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/SecQQSTileHost;->changeTiles(Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const-string v5, "QsHasEditedQuickTileList"

    .line 98
    .line 99
    invoke-static {v6, v5, v7}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 100
    .line 101
    .line 102
    iget-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 103
    .line 104
    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/qs/QSTileHost;->changeTilesByUser(Ljava/util/List;Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTilesInfo()Ljava/util/ArrayList;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    iput-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mDefaultActiveTiles:Ljava/util/ArrayList;

    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTilesInfo()Ljava/util/ArrayList;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    iput-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mDefaultAvailableTiles:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v0, v1, p0, v7}, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->saveTiles(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Z)V

    .line 122
    .line 123
    .line 124
    move-object p0, v3

    .line 125
    check-cast p0, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    const-string v6, "custom("

    .line 136
    .line 137
    if-eqz v5, :cond_6

    .line 138
    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    check-cast v5, Ljava/lang/String;

    .line 144
    .line 145
    iget-object v8, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 146
    .line 147
    check-cast v8, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-nez v8, :cond_3

    .line 154
    .line 155
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-eqz v6, :cond_4

    .line 160
    .line 161
    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    if-nez v6, :cond_5

    .line 166
    .line 167
    invoke-static {v5}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    goto :goto_2

    .line 176
    :cond_4
    move-object v6, v5

    .line 177
    :cond_5
    :goto_2
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    add-int/2addr v5, v7

    .line 182
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    sget-object v8, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 187
    .line 188
    const-string v9, "QPPE1023"

    .line 189
    .line 190
    const-string v10, "buttonName"

    .line 191
    .line 192
    const-string/jumbo v12, "position"

    .line 193
    .line 194
    .line 195
    move-object v11, v6

    .line 196
    move-object v13, v5

    .line 197
    invoke-static/range {v8 .. v13}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string/jumbo v8, "save add : "

    .line 201
    .line 202
    .line 203
    const-string v9, " "

    .line 204
    .line 205
    invoke-static {v8, v6, v9, v5, v2}, Lcom/android/systemui/keyguard/CustomizationProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_6
    iget-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 210
    .line 211
    check-cast v1, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-eqz v5, :cond_a

    .line 222
    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    check-cast v5, Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    if-eqz v7, :cond_8

    .line 234
    .line 235
    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    if-nez v7, :cond_9

    .line 240
    .line 241
    invoke-static {v5}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    goto :goto_4

    .line 250
    :cond_8
    move-object v7, v5

    .line 251
    :cond_9
    :goto_4
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-nez v5, :cond_7

    .line 256
    .line 257
    sget-object v5, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 258
    .line 259
    const-string v8, "QPPE1024"

    .line 260
    .line 261
    const-string v9, "buttonName"

    .line 262
    .line 263
    invoke-static {v5, v8, v9, v7}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string/jumbo v8, "save remove : "

    .line 269
    .line 270
    .line 271
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_a
    iput-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 286
    .line 287
    :goto_5
    return-void
.end method

.method public final sendAnnouncementEvent()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "accessibility"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/16 v1, 0x4000

    .line 20
    .line 21
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const v4, 0x7f130d06

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public final setUpPageArea()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 4
    .line 5
    const v1, 0x7f0a009c

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/FrameLayout;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDragListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 17
    .line 18
    .line 19
    iget v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->ACTIVE_LEFT_PAGE_AREA:I

    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 32
    .line 33
    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 34
    .line 35
    const v2, 0x7f0a009d

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/FrameLayout;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 45
    .line 46
    .line 47
    iget p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->ACTIVE_RIGHT_PAGE_AREA:I

    .line 48
    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final setupPager()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/systemui/qs/customize/CustomActionManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/qs/customize/CustomActionManager;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    .line 7
    .line 8
    const v0, 0x7f0a0863

    .line 9
    .line 10
    .line 11
    const v1, 0x7f070bbe

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->updateFont(II)V

    .line 15
    .line 16
    .line 17
    const v2, 0x7f0a0861

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->updateFont(II)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 24
    .line 25
    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    .line 32
    .line 33
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerController$10;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$10;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 42
    .line 43
    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/TextView;

    .line 50
    .line 51
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerController$11;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$11;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 60
    .line 61
    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 62
    .line 63
    const v1, 0x7f0a0842

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/android/systemui/qs/SecPageIndicator;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 73
    .line 74
    iput-object v0, v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 75
    .line 76
    iget v2, v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicatorPosition:F

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 79
    .line 80
    .line 81
    iget-object v0, v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 82
    .line 83
    const/high16 v2, 0x3f800000    # 1.0f

    .line 84
    .line 85
    iput v2, v0, Lcom/android/systemui/qs/SecPageIndicator;->mQsExpansion:F

    .line 86
    .line 87
    new-instance v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$4;

    .line 88
    .line 89
    invoke-direct {v3, v1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$4;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)V

    .line 90
    .line 91
    .line 92
    iput-object v3, v0, Lcom/android/systemui/qs/SecPageIndicator;->mCallback:Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDragListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;

    .line 95
    .line 96
    iput-object v0, v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDragListener:Landroid/view/View$OnDragListener;

    .line 97
    .line 98
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mClickListener:Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    iput-object v3, v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mClickListener:Landroid/view/View$OnClickListener;

    .line 101
    .line 102
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    .line 103
    .line 104
    iput-object v4, v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    .line 105
    .line 106
    const v1, 0x7f0a0860

    .line 107
    .line 108
    .line 109
    const v4, 0x7f070ba8

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->updateFont(II)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 116
    .line 117
    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 118
    .line 119
    const v4, 0x7f0a0845

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lcom/android/systemui/qs/SecPageIndicator;

    .line 127
    .line 128
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 129
    .line 130
    iput-object v1, v4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 131
    .line 132
    iget v5, v4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicatorPosition:F

    .line 133
    .line 134
    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 138
    .line 139
    iput v2, v1, Lcom/android/systemui/qs/SecPageIndicator;->mQsExpansion:F

    .line 140
    .line 141
    new-instance v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$4;

    .line 142
    .line 143
    invoke-direct {v2, v4}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$4;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)V

    .line 144
    .line 145
    .line 146
    iput-object v2, v1, Lcom/android/systemui/qs/SecPageIndicator;->mCallback:Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;

    .line 147
    .line 148
    iput-object v0, v4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDragListener:Landroid/view/View$OnDragListener;

    .line 149
    .line 150
    iput-object v3, v4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mClickListener:Landroid/view/View$OnClickListener;

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const v1, 0x7f0604d8

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    const v2, 0x7f0604d9

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    iget-object v2, v4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 175
    .line 176
    if-eqz v2, :cond_0

    .line 177
    .line 178
    iput v0, v2, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    .line 179
    .line 180
    iput v1, v2, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    .line 181
    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    .line 183
    .line 184
    iput-object v0, v4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    .line 185
    .line 186
    sget-object v1, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_FROM_AVAILABLE_TO_ACTIVE:Lcom/android/systemui/qs/customize/CustomActionId;

    .line 187
    .line 188
    new-instance v2, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda1;

    .line 189
    .line 190
    const/4 v3, 0x0

    .line 191
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;I)V

    .line 192
    .line 193
    .line 194
    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomActionManager;->customActions:Ljava/util/HashMap;

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-nez v3, :cond_1

    .line 201
    .line 202
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    .line 206
    .line 207
    sget-object v1, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_FROM_ACTIVE_TO_AVAILABLE:Lcom/android/systemui/qs/customize/CustomActionId;

    .line 208
    .line 209
    new-instance v2, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda1;

    .line 210
    .line 211
    const/4 v3, 0x1

    .line 212
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;I)V

    .line 213
    .line 214
    .line 215
    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomActionManager;->customActions:Ljava/util/HashMap;

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-nez v4, :cond_2

    .line 222
    .line 223
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const v1, 0x7f130052

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 238
    .line 239
    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 240
    .line 241
    const v2, 0x7f0a084b

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    check-cast v1, Landroid/widget/LinearLayout;

    .line 249
    .line 250
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 255
    .line 256
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 257
    .line 258
    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 259
    .line 260
    const v2, 0x7f0a0360

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDoneButton:Landroid/view/View;

    .line 268
    .line 269
    const v2, 0x7f0a0206

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    check-cast v1, Landroid/widget/TextView;

    .line 277
    .line 278
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 279
    .line 280
    .line 281
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDoneButton:Landroid/view/View;

    .line 282
    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    const v5, 0x7f130db0

    .line 289
    .line 290
    .line 291
    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mContext:Landroid/content/Context;

    .line 292
    .line 293
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v5, ","

    .line 301
    .line 302
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 316
    .line 317
    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 318
    .line 319
    const v4, 0x7f0a08bf

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetButton:Landroid/view/View;

    .line 327
    .line 328
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    check-cast v1, Landroid/widget/TextView;

    .line 333
    .line 334
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 335
    .line 336
    .line 337
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetButton:Landroid/view/View;

    .line 338
    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    const v2, 0x7f130dec

    .line 345
    .line 346
    .line 347
    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 365
    .line 366
    .line 367
    return-void
.end method

.method public final startClosingAnim()V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAnimator:Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mActiveContents:Lkotlin/collections/builders/ListBuilder;

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mAvailableAreaContents:Lkotlin/collections/builders/ListBuilder;

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const-wide/16 v5, 0xc8

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x1

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Landroid/view/View;

    .line 48
    .line 49
    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 50
    .line 51
    new-array v10, v8, [F

    .line 52
    .line 53
    aput v7, v10, v1

    .line 54
    .line 55
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 60
    .line 61
    new-array v8, v8, [F

    .line 62
    .line 63
    iget v10, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->startY:I

    .line 64
    .line 65
    int-to-float v10, v10

    .line 66
    aput v10, v8, v1

    .line 67
    .line 68
    invoke-static {v9, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    filled-new-array {v7, v8}, [Landroid/animation/PropertyValuesHolder;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-static {v4, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mView:Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 88
    .line 89
    const v3, 0x7f0a0850

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 97
    .line 98
    new-array v4, v8, [F

    .line 99
    .line 100
    aput v7, v4, v1

    .line 101
    .line 102
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 107
    .line 108
    new-array v8, v8, [F

    .line 109
    .line 110
    aput v7, v8, v1

    .line 111
    .line 112
    invoke-static {v4, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    filled-new-array {v3, v1}, [Landroid/animation/PropertyValuesHolder;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    new-instance p0, Landroid/animation/AnimatorSet;

    .line 131
    .line 132
    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 136
    .line 137
    .line 138
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$startClosingAnim$2$1$1;

    .line 139
    .line 140
    invoke-direct {v1, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$startClosingAnim$2$1$1;-><init>(Ljava/lang/Runnable;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public final updateFont(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/widget/TextView;

    .line 10
    .line 11
    const p1, 0x3f4ccccd    # 0.8f

    .line 12
    .line 13
    .line 14
    const v0, 0x3fa66666    # 1.3f

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p2, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
