.class public final Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;


# instance fields
.field public final mKeepClearAreaGravityEnabled:Z

.field public mKeepClearAreasPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "persist.wm.debug.enable_pip_keep_clear_algorithm_gravity"

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->mKeepClearAreaGravityEnabled:Z

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const v0, 0x7f070af7

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->mKeepClearAreasPadding:I

    .line 26
    .line 27
    return-void
.end method

.method public static tryOffset(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 22
    .line 23
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0
.end method


# virtual methods
.method public final adjust(Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)Landroid/graphics/Rect;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBoundsIgnoringKeepClearAreas()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    iget-boolean v2, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mIsImeShowing:Z

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 33
    .line 34
    iget v3, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mImeHeight:I

    .line 35
    .line 36
    sub-int/2addr v2, v3

    .line 37
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 47
    .line 48
    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    .line 49
    .line 50
    if-gt p0, p1, :cond_2

    .line 51
    .line 52
    iget p2, v0, Landroid/graphics/Rect;->top:I

    .line 53
    .line 54
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 55
    .line 56
    if-ge p2, v1, :cond_3

    .line 57
    .line 58
    :cond_2
    sub-int/2addr p1, p0

    .line 59
    invoke-virtual {v0, v3, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 60
    .line 61
    .line 62
    :cond_3
    return-object v0

    .line 63
    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const/4 v5, 0x1

    .line 73
    xor-int/2addr v4, v5

    .line 74
    iget-boolean v6, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mHasUserMovedPip:Z

    .line 75
    .line 76
    if-nez v6, :cond_5

    .line 77
    .line 78
    iget-boolean v6, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mHasUserResizedPip:Z

    .line 79
    .line 80
    if-nez v6, :cond_5

    .line 81
    .line 82
    move v4, v5

    .line 83
    :cond_5
    iget-boolean v6, p0, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->mKeepClearAreaGravityEnabled:Z

    .line 84
    .line 85
    if-nez v6, :cond_6

    .line 86
    .line 87
    if-eqz v4, :cond_9

    .line 88
    .line 89
    :cond_6
    invoke-virtual {p2, v0, v5}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iget-object p2, p2, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 94
    .line 95
    invoke-virtual {p2, v3, v0, v4}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    const/high16 v0, 0x3f000000    # 0.5f

    .line 100
    .line 101
    cmpl-float v0, p2, v0

    .line 102
    .line 103
    const/4 v3, 0x5

    .line 104
    if-ltz v0, :cond_7

    .line 105
    .line 106
    const/high16 v0, 0x40200000    # 2.5f

    .line 107
    .line 108
    cmpg-float p2, p2, v0

    .line 109
    .line 110
    if-gez p2, :cond_7

    .line 111
    .line 112
    move p2, v3

    .line 113
    goto :goto_1

    .line 114
    :cond_7
    const/4 p2, 0x3

    .line 115
    :goto_1
    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 116
    .line 117
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 118
    .line 119
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    sub-int/2addr v4, v5

    .line 124
    invoke-virtual {v2, v0, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 125
    .line 126
    .line 127
    if-ne p2, v3, :cond_8

    .line 128
    .line 129
    iget p2, v1, Landroid/graphics/Rect;->right:I

    .line 130
    .line 131
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    sub-int/2addr p2, v0

    .line 136
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 137
    .line 138
    invoke-virtual {v2, p2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_8
    iget p2, v1, Landroid/graphics/Rect;->left:I

    .line 143
    .line 144
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 145
    .line 146
    invoke-virtual {v2, p2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 147
    .line 148
    .line 149
    :cond_9
    :goto_2
    iget-object p2, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mRestrictedKeepClearAreas:Ljava/util/Set;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getUnrestrictedKeepClearAreas()Ljava/util/Set;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p0, v2, p2, p1, v1}, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->findUnoccludedPosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    return-object p0
.end method

.method public final findUnoccludedPosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    check-cast p2, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v0, p3

    .line 10
    check-cast v0, Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    check-cast p3, Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    :cond_2
    new-instance p2, Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-direct {p2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-eqz p3, :cond_7

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    check-cast p3, Landroid/graphics/Rect;

    .line 64
    .line 65
    new-instance v0, Landroid/graphics/Rect;

    .line 66
    .line 67
    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 68
    .line 69
    .line 70
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->mKeepClearAreasPadding:I

    .line 71
    .line 72
    neg-int v1, v1

    .line 73
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 74
    .line 75
    .line 76
    invoke-static {p3, p2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    if-eqz p3, :cond_3

    .line 81
    .line 82
    iget p3, v0, Landroid/graphics/Rect;->top:I

    .line 83
    .line 84
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 85
    .line 86
    sub-int/2addr p3, v1

    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-static {v1, p3, p2, v0, p4}, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->tryOffset(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-eqz p3, :cond_4

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    iget p3, v0, Landroid/graphics/Rect;->left:I

    .line 96
    .line 97
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 98
    .line 99
    sub-int/2addr p3, v2

    .line 100
    invoke-static {p3, v1, p2, v0, p4}, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->tryOffset(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    if-eqz p3, :cond_5

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    iget p3, v0, Landroid/graphics/Rect;->bottom:I

    .line 108
    .line 109
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 110
    .line 111
    sub-int/2addr p3, v2

    .line 112
    invoke-static {v1, p3, p2, v0, p4}, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->tryOffset(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 113
    .line 114
    .line 115
    move-result p3

    .line 116
    if-eqz p3, :cond_6

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    iget p3, v0, Landroid/graphics/Rect;->right:I

    .line 120
    .line 121
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 122
    .line 123
    sub-int/2addr p3, v2

    .line 124
    invoke-static {p3, v1, p2, v0, p4}, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;->tryOffset(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_7
    return-object p2
.end method
