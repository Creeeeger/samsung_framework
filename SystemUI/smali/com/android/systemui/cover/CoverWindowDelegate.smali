.class public final Lcom/android/systemui/cover/CoverWindowDelegate;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBackgroundDecorView:Landroid/widget/FrameLayout;

.field public final mContext:Landroid/content/Context;

.field public mCoverDisplay:Landroid/view/Display;

.field public mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

.field public mIsShowing:Z

.field public mWindowManager:Landroid/view/WindowManager;

.field public final mWindowRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance p1, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public final attach()Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "CoverWindowDelegate"

    .line 6
    .line 7
    const-string v1, "attach : it is showing"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    .line 29
    .line 30
    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    new-instance v1, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;-><init>(Lcom/android/systemui/cover/CoverWindowDelegate;Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    .line 43
    .line 44
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    .line 45
    .line 46
    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 47
    .line 48
    .line 49
    const/4 v5, -0x1

    .line 50
    iget-object v6, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    .line 51
    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    const/16 v7, 0xa46

    .line 55
    .line 56
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 57
    .line 58
    const-string v7, "VIRTUAL-COVER"

    .line 59
    .line 60
    invoke-virtual {v4, v7}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 64
    .line 65
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 66
    .line 67
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 68
    .line 69
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 70
    .line 71
    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 72
    .line 73
    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 74
    .line 75
    const/16 v7, 0x33

    .line 76
    .line 77
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/16 v7, 0x833

    .line 81
    .line 82
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 83
    .line 84
    const-string v7, "COVER"

    .line 85
    .line 86
    invoke-virtual {v4, v7}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 90
    .line 91
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 92
    .line 93
    const-wide/16 v7, 0x1770

    .line 94
    .line 95
    invoke-virtual {v4, v7, v8}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 96
    .line 97
    .line 98
    const-wide/16 v7, 0x0

    .line 99
    .line 100
    invoke-virtual {v4, v7, v8}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    .line 101
    .line 102
    .line 103
    :goto_0
    const v7, 0x20700

    .line 104
    .line 105
    .line 106
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 107
    .line 108
    const/16 v7, 0x10

    .line 109
    .line 110
    invoke-virtual {v4, v7}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 111
    .line 112
    .line 113
    const/4 v8, 0x5

    .line 114
    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 115
    .line 116
    const/4 v9, 0x2

    .line 117
    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 118
    .line 119
    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 120
    .line 121
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    not-int v11, v11

    .line 130
    and-int/2addr v10, v11

    .line 131
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    not-int v11, v11

    .line 136
    and-int/2addr v10, v11

    .line 137
    invoke-virtual {v4, v10}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v3, v1, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .line 142
    .line 143
    sget-boolean v1, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 144
    .line 145
    if-eqz v1, :cond_4

    .line 146
    .line 147
    if-eqz v6, :cond_4

    .line 148
    .line 149
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    .line 150
    .line 151
    if-eqz v1, :cond_3

    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    if-eqz v1, :cond_3

    .line 158
    .line 159
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    .line 160
    .line 161
    iget-object v3, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    .line 162
    .line 163
    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 164
    .line 165
    .line 166
    :cond_3
    new-instance v1, Landroid/widget/FrameLayout;

    .line 167
    .line 168
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 169
    .line 170
    .line 171
    iput-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    .line 172
    .line 173
    iget-object v2, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    .line 174
    .line 175
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 176
    .line 177
    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 178
    .line 179
    .line 180
    const/16 v4, 0xa47

    .line 181
    .line 182
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 183
    .line 184
    const-string v4, "VIRTUAL-COVER-BACKGROUND"

    .line 185
    .line 186
    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 190
    .line 191
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 192
    .line 193
    const/16 v4, 0x708

    .line 194
    .line 195
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 196
    .line 197
    invoke-virtual {v3, v7}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 198
    .line 199
    .line 200
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 201
    .line 202
    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 203
    .line 204
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 205
    .line 206
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    not-int v4, v4

    .line 215
    and-int/2addr v0, v4

    .line 216
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    not-int v4, v4

    .line 221
    and-int/2addr v0, v4

    .line 222
    invoke-virtual {v3, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    .line 227
    .line 228
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 229
    .line 230
    return-object p0
.end method

.method public final detach()V
    .locals 5

    .line 1
    const-string/jumbo v0, "removeViewImmediate\n"

    .line 2
    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    .line 5
    .line 6
    const-string v2, "CoverWindowDelegate"

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string p0, "detach : it is NOT showing"

    .line 11
    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-string p0, "detach : decorView is null"

    .line 21
    .line 22
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/4 v3, 0x0

    .line 27
    iput-boolean v3, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    .line 28
    .line 29
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    .line 30
    .line 31
    invoke-interface {v3, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v3

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 60
    .line 61
    sget-boolean v3, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    iget-object v3, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    .line 66
    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    .line 70
    .line 71
    invoke-interface {v4, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception v3

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    .line 101
    .line 102
    :cond_2
    return-void
.end method

.method public final minimize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    :cond_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 23
    .line 24
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 25
    .line 26
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 27
    .line 28
    or-int/lit8 v1, v1, 0x8

    .line 29
    .line 30
    const v2, -0x20001

    .line 31
    .line 32
    .line 33
    and-int/2addr v1, v2

    .line 34
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 35
    .line 36
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 37
    .line 38
    const v2, -0x40001

    .line 39
    .line 40
    .line 41
    and-int/2addr v1, v2

    .line 42
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 47
    .line 48
    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method
