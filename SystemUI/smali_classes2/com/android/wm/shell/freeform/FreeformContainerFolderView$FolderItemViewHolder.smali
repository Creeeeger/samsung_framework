.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final mButtonHoverListener:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$$ExternalSyntheticLambda0;

.field public final mDismissPreview:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$2;

.field public final mIconView:Landroid/widget/ImageView;

.field public mIsVisiblePreview:Z

.field public mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

.field public final mShowPreview:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$1;

.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mIsVisiblePreview:Z

    .line 8
    .line 9
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$1;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mShowPreview:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$1;

    .line 15
    .line 16
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$2;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$2;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mDismissPreview:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$2;

    .line 22
    .line 23
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mButtonHoverListener:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    const v1, 0x7f0a041c

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Landroid/widget/ImageView;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    .line 42
    .line 43
    .line 44
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZED_PREVIEW:Z

    .line 45
    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const-string v1, ")"

    .line 14
    .line 15
    const-string v2, "[FolderView] onTouch("

    .line 16
    .line 17
    const-string v3, "FreeformContainer"

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz p2, :cond_7

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    if-eq p2, v4, :cond_5

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    if-eq p2, v1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-object v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 39
    .line 40
    iget v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVisibleIconMaxCount:I

    .line 41
    .line 42
    if-ge v1, v7, :cond_1

    .line 43
    .line 44
    iget v1, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionX:F

    .line 45
    .line 46
    sub-float/2addr p1, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    :goto_0
    iget v1, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionY:F

    .line 50
    .line 51
    sub-float/2addr v0, v1

    .line 52
    iget-object v1, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-virtual {v6, v1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getDraggingAppIconBounds(Landroid/graphics/Rect;)V

    .line 55
    .line 56
    .line 57
    float-to-double v6, p1

    .line 58
    float-to-double v0, v0

    .line 59
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    double-to-float p1, v0

    .line 64
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 65
    .line 66
    iget v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mThresholdToMove:I

    .line 67
    .line 68
    int-to-float v1, v1

    .line 69
    cmpl-float p1, p1, v1

    .line 70
    .line 71
    if-ltz p1, :cond_2

    .line 72
    .line 73
    iget-object p1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isDismissButtonShowing()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_2

    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->isSpringAnimating()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_2

    .line 88
    .line 89
    move p1, v4

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move p1, v5

    .line 92
    :goto_1
    if-eqz p1, :cond_8

    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 95
    .line 96
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->createOrUpdateDismissButton()V

    .line 101
    .line 102
    .line 103
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->show(Landroid/graphics/Rect;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppIcon()V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 116
    .line 117
    iput-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetIconView:Landroid/widget/ImageView;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 120
    .line 121
    iput-object v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 122
    .line 123
    if-eqz v0, :cond_4

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLocationOnScreen()[I

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iput-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconReturnLocation:[I

    .line 130
    .line 131
    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 132
    .line 133
    aget v0, v0, v5

    .line 134
    .line 135
    int-to-float v0, v0

    .line 136
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 140
    .line 141
    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconReturnLocation:[I

    .line 142
    .line 143
    aget v1, v1, v4

    .line 144
    .line 145
    int-to-float v1, v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetIconView:Landroid/widget/ImageView;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-eqz v0, :cond_3

    .line 156
    .line 157
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetIconView:Landroid/widget/ImageView;

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    if-eqz v0, :cond_3

    .line 168
    .line 169
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetIconView:Landroid/widget/ImageView;

    .line 170
    .line 171
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 184
    .line 185
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 189
    .line 190
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_3
    const-string p1, "[FolderView] startDraggingAppIcon: failed to newDrawable()"

    .line 195
    .line 196
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_4
    const-string p1, "[FolderView] mTargetIconView is null"

    .line 201
    .line 202
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 208
    .line 209
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mEmptySlotIcon:Landroid/graphics/drawable/Drawable;

    .line 210
    .line 211
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    .line 213
    .line 214
    new-instance p0, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string p1, "): Ready to move"

    .line 227
    .line 228
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    return v5

    .line 239
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 262
    .line 263
    if-eqz p1, :cond_6

    .line 264
    .line 265
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 266
    .line 267
    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 268
    .line 269
    const/16 v0, 0x1e

    .line 270
    .line 271
    invoke-virtual {p2, v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 275
    .line 276
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 277
    .line 278
    invoke-virtual {p0, v4, v4, v4}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    .line 279
    .line 280
    .line 281
    return v5

    .line 282
    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 283
    .line 284
    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionX:F

    .line 285
    .line 286
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionY:F

    .line 287
    .line 288
    new-instance p0, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    :cond_8
    :goto_3
    return v4
.end method
