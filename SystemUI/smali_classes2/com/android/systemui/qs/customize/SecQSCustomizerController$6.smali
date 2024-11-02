.class public final Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mIsDragging:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p0, "SecQSCustomizerController"

    .line 13
    .line 14
    const-string p1, "onLongClick mView.isDragging() skip : dulicated long click"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 25
    .line 26
    move-object v3, p1

    .line 27
    check-cast v3, Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 28
    .line 29
    iput-object v3, v2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 36
    .line 37
    iput-object v3, v2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 40
    .line 41
    iget-object v3, v2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 42
    .line 43
    iget v4, v3, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mPointX:F

    .line 44
    .line 45
    iput v4, v2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mPointX:F

    .line 46
    .line 47
    iget v3, v3, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mPointY:F

    .line 48
    .line 49
    iput v3, v2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mPointY:F

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroid/view/View;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const v4, 0x7f0a084c

    .line 68
    .line 69
    .line 70
    const/16 v5, 0x1388

    .line 71
    .line 72
    if-ne v2, v4, :cond_1

    .line 73
    .line 74
    move v2, v5

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/16 v2, 0x1770

    .line 77
    .line 78
    :goto_0
    iput v2, v3, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 79
    .line 80
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 81
    .line 82
    iget v3, v2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 83
    .line 84
    if-ne v3, v5, :cond_2

    .line 85
    .line 86
    iget-object v3, v2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    iget-object v3, v2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 90
    .line 91
    :goto_1
    iget-object v2, v2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getCurrentItem()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    iget-object v3, v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 104
    .line 105
    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->showRemoveIcon(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 109
    .line 110
    iget-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 111
    .line 112
    iget v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 113
    .line 114
    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 115
    .line 116
    iput v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 117
    .line 118
    if-ne v3, v5, :cond_3

    .line 119
    .line 120
    iget-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    iget-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 124
    .line 125
    :goto_2
    iput-object v2, v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAudioManager:Landroid/media/AudioManager;

    .line 128
    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    const/16 v2, 0x6a

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 134
    .line 135
    .line 136
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 139
    .line 140
    const/16 v2, 0x6c

    .line 141
    .line 142
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 150
    .line 151
    iget-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 152
    .line 153
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 154
    .line 155
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animationStart(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Ljava/lang/Boolean;)V

    .line 156
    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 159
    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    int-to-float v0, v0

    .line 168
    const/high16 v2, 0x3e000000    # 0.125f

    .line 169
    .line 170
    mul-float/2addr v0, v2

    .line 171
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    neg-float v0, v0

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    int-to-float v2, v2

    .line 181
    const/high16 v3, 0x3e800000    # 0.25f

    .line 182
    .line 183
    mul-float/2addr v2, v3

    .line 184
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    neg-float v2, v2

    .line 189
    const/4 v3, 0x2

    .line 190
    new-array v3, v3, [F

    .line 191
    .line 192
    fill-array-data v3, :array_0

    .line 193
    .line 194
    .line 195
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    const-wide/16 v4, 0x50

    .line 200
    .line 201
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 202
    .line 203
    .line 204
    new-instance v4, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda7;

    .line 205
    .line 206
    invoke-direct {v4, p1, v0, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda7;-><init>(Landroid/view/View;FF)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 210
    .line 211
    .line 212
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$7;

    .line 213
    .line 214
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$7;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Landroid/view/View;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 221
    .line 222
    .line 223
    return v1

    .line 224
    nop

    .line 225
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
