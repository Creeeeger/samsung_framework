.class public Landroidx/constraintlayout/helper/widget/MotionEffect;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public fadeMove:I

.field public motionEffectAlpha:F

.field public motionEffectEnd:I

.field public motionEffectStart:I

.field public motionEffectStrictMove:Z

.field public motionEffectTranslationX:I

.field public motionEffectTranslationY:I

.field public viewTransitionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    const p1, 0x3dcccccd    # 0.1f

    .line 2
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    const/16 p1, 0x31

    .line 3
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    const/16 p1, 0x32

    .line 4
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    .line 9
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3dcccccd    # 0.1f

    .line 11
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    const/16 v0, 0x31

    .line 12
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    const/16 v0, 0x32

    .line 13
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 15
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    .line 18
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    .line 19
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3dcccccd    # 0.1f

    .line 21
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    const/16 p3, 0x31

    .line 22
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    const/16 p3, 0x32

    .line 23
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    const/4 p3, 0x0

    .line 24
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 25
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    const/4 p3, 0x1

    .line 26
    iput-boolean p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    const/4 p3, -0x1

    .line 27
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    .line 28
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    if-eqz p2, :cond_b

    .line 2
    .line 3
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect:[I

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    const/4 v2, 0x1

    .line 16
    if-ge v1, p2, :cond_8

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x3

    .line 23
    const/16 v5, 0x63

    .line 24
    .line 25
    if-ne v3, v4, :cond_0

    .line 26
    .line 27
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 28
    .line 29
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 34
    .line 35
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    if-ne v3, v2, :cond_1

    .line 47
    .line 48
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 49
    .line 50
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 55
    .line 56
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/4 v2, 0x5

    .line 68
    if-ne v3, v2, :cond_2

    .line 69
    .line 70
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 71
    .line 72
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 v2, 0x6

    .line 80
    if-ne v3, v2, :cond_3

    .line 81
    .line 82
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    .line 83
    .line 84
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    if-nez v3, :cond_4

    .line 92
    .line 93
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    .line 94
    .line 95
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    const/4 v2, 0x2

    .line 103
    if-ne v3, v2, :cond_5

    .line 104
    .line 105
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    .line 106
    .line 107
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    const/4 v2, 0x4

    .line 115
    if-ne v3, v2, :cond_6

    .line 116
    .line 117
    iget-boolean v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    .line 118
    .line 119
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    iput-boolean v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    const/4 v2, 0x7

    .line 127
    if-ne v3, v2, :cond_7

    .line 128
    .line 129
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    .line 130
    .line 131
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    .line 136
    .line 137
    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_8
    iget p2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 141
    .line 142
    iget v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 143
    .line 144
    if-ne p2, v0, :cond_a

    .line 145
    .line 146
    if-lez p2, :cond_9

    .line 147
    .line 148
    sub-int/2addr p2, v2

    .line 149
    iput p2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_9
    add-int/2addr v0, v2

    .line 153
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 154
    .line 155
    :cond_a
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    .line 157
    .line 158
    :cond_b
    return-void
.end method

.method public final onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintHelper;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v3, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 22
    .line 23
    invoke-direct {v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v4, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 27
    .line 28
    invoke-direct {v4}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 29
    .line 30
    .line 31
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    .line 32
    .line 33
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-string v6, "alpha"

    .line 38
    .line 39
    invoke-virtual {v3, v5, v6}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectAlpha:F

    .line 43
    .line 44
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 52
    .line 53
    iput v5, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 54
    .line 55
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 56
    .line 57
    iput v5, v4, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 58
    .line 59
    new-instance v5, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 60
    .line 61
    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    .line 62
    .line 63
    .line 64
    iget v6, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStart:I

    .line 65
    .line 66
    iput v6, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    iput v6, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 70
    .line 71
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    const-string/jumbo v8, "percentX"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v7, v8}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    const-string/jumbo v9, "percentY"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v7, v9}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v7, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 92
    .line 93
    invoke-direct {v7}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    .line 94
    .line 95
    .line 96
    iget v10, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 97
    .line 98
    iput v10, v7, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 99
    .line 100
    iput v6, v7, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 101
    .line 102
    const/4 v10, 0x1

    .line 103
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    invoke-virtual {v7, v11, v8}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget v8, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 118
    .line 119
    const/4 v9, 0x0

    .line 120
    if-lez v8, :cond_1

    .line 121
    .line 122
    new-instance v8, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 123
    .line 124
    invoke-direct {v8}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 125
    .line 126
    .line 127
    new-instance v11, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 128
    .line 129
    invoke-direct {v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 130
    .line 131
    .line 132
    iget v12, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 133
    .line 134
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    const-string/jumbo v13, "translationX"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8, v12, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget v12, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 145
    .line 146
    iput v12, v8, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 147
    .line 148
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget v12, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 156
    .line 157
    sub-int/2addr v12, v10

    .line 158
    iput v12, v11, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_1
    move-object v8, v9

    .line 162
    move-object v11, v8

    .line 163
    :goto_0
    iget v12, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    .line 164
    .line 165
    if-lez v12, :cond_2

    .line 166
    .line 167
    new-instance v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 168
    .line 169
    invoke-direct {v9}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 170
    .line 171
    .line 172
    new-instance v12, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 173
    .line 174
    invoke-direct {v12}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 175
    .line 176
    .line 177
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    .line 178
    .line 179
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v13

    .line 183
    const-string/jumbo v14, "translationY"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v9, v13, v14}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 190
    .line 191
    iput v13, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 192
    .line 193
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectEnd:I

    .line 201
    .line 202
    sub-int/2addr v13, v10

    .line 203
    iput v13, v12, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 204
    .line 205
    move-object/from16 v19, v12

    .line 206
    .line 207
    move-object v12, v9

    .line 208
    move-object/from16 v9, v19

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_2
    move-object v12, v9

    .line 212
    :goto_1
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->fadeMove:I

    .line 213
    .line 214
    const/4 v15, -0x1

    .line 215
    const/16 v16, 0x0

    .line 216
    .line 217
    if-ne v13, v15, :cond_a

    .line 218
    .line 219
    const/4 v13, 0x4

    .line 220
    new-array v15, v13, [I

    .line 221
    .line 222
    move v13, v6

    .line 223
    :goto_2
    array-length v14, v2

    .line 224
    if-ge v13, v14, :cond_8

    .line 225
    .line 226
    aget-object v14, v2, v13

    .line 227
    .line 228
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    check-cast v14, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 233
    .line 234
    if-nez v14, :cond_3

    .line 235
    .line 236
    move-object/from16 v18, v9

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_3
    iget-object v6, v14, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 240
    .line 241
    iget v10, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 242
    .line 243
    iget-object v14, v14, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 244
    .line 245
    move-object/from16 v18, v9

    .line 246
    .line 247
    iget v9, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 248
    .line 249
    sub-float/2addr v10, v9

    .line 250
    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 251
    .line 252
    iget v9, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 253
    .line 254
    sub-float/2addr v6, v9

    .line 255
    cmpg-float v9, v6, v16

    .line 256
    .line 257
    if-gez v9, :cond_4

    .line 258
    .line 259
    const/4 v9, 0x1

    .line 260
    aget v14, v15, v9

    .line 261
    .line 262
    add-int/2addr v14, v9

    .line 263
    aput v14, v15, v9

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_4
    const/4 v9, 0x1

    .line 267
    :goto_3
    cmpl-float v6, v6, v16

    .line 268
    .line 269
    if-lez v6, :cond_5

    .line 270
    .line 271
    const/4 v6, 0x0

    .line 272
    aget v14, v15, v6

    .line 273
    .line 274
    add-int/2addr v14, v9

    .line 275
    aput v14, v15, v6

    .line 276
    .line 277
    :cond_5
    cmpl-float v6, v10, v16

    .line 278
    .line 279
    if-lez v6, :cond_6

    .line 280
    .line 281
    const/4 v6, 0x3

    .line 282
    aget v14, v15, v6

    .line 283
    .line 284
    add-int/2addr v14, v9

    .line 285
    aput v14, v15, v6

    .line 286
    .line 287
    :cond_6
    cmpg-float v6, v10, v16

    .line 288
    .line 289
    if-gez v6, :cond_7

    .line 290
    .line 291
    const/4 v6, 0x2

    .line 292
    aget v10, v15, v6

    .line 293
    .line 294
    add-int/2addr v10, v9

    .line 295
    aput v10, v15, v6

    .line 296
    .line 297
    :cond_7
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 298
    .line 299
    move-object/from16 v9, v18

    .line 300
    .line 301
    const/4 v6, 0x0

    .line 302
    const/4 v10, 0x1

    .line 303
    goto :goto_2

    .line 304
    :cond_8
    move-object/from16 v18, v9

    .line 305
    .line 306
    move v9, v6

    .line 307
    aget v6, v15, v9

    .line 308
    .line 309
    move v13, v9

    .line 310
    const/4 v10, 0x1

    .line 311
    const/4 v14, 0x4

    .line 312
    :goto_5
    if-ge v10, v14, :cond_b

    .line 313
    .line 314
    aget v9, v15, v10

    .line 315
    .line 316
    if-ge v6, v9, :cond_9

    .line 317
    .line 318
    move v6, v9

    .line 319
    move v13, v10

    .line 320
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 321
    .line 322
    const/4 v9, 0x0

    .line 323
    goto :goto_5

    .line 324
    :cond_a
    move-object/from16 v18, v9

    .line 325
    .line 326
    :cond_b
    const/4 v6, 0x0

    .line 327
    :goto_6
    array-length v9, v2

    .line 328
    if-ge v6, v9, :cond_1f

    .line 329
    .line 330
    aget-object v9, v2, v6

    .line 331
    .line 332
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v9

    .line 336
    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 337
    .line 338
    if-nez v9, :cond_d

    .line 339
    .line 340
    :cond_c
    move-object/from16 v10, p1

    .line 341
    .line 342
    move-object/from16 v17, v2

    .line 343
    .line 344
    move-object/from16 v14, v18

    .line 345
    .line 346
    goto/16 :goto_e

    .line 347
    .line 348
    :cond_d
    iget-object v10, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 349
    .line 350
    iget v14, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 351
    .line 352
    iget-object v15, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 353
    .line 354
    iget v1, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 355
    .line 356
    sub-float/2addr v14, v1

    .line 357
    iget v1, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 358
    .line 359
    iget v10, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 360
    .line 361
    sub-float/2addr v1, v10

    .line 362
    if-nez v13, :cond_10

    .line 363
    .line 364
    cmpl-float v1, v1, v16

    .line 365
    .line 366
    if-lez v1, :cond_f

    .line 367
    .line 368
    iget-boolean v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    .line 369
    .line 370
    if-eqz v1, :cond_e

    .line 371
    .line 372
    cmpl-float v1, v14, v16

    .line 373
    .line 374
    if-nez v1, :cond_f

    .line 375
    .line 376
    :cond_e
    const/4 v10, 0x1

    .line 377
    goto :goto_7

    .line 378
    :cond_f
    const/4 v10, 0x1

    .line 379
    goto :goto_8

    .line 380
    :cond_10
    const/4 v10, 0x1

    .line 381
    if-ne v13, v10, :cond_13

    .line 382
    .line 383
    cmpg-float v1, v1, v16

    .line 384
    .line 385
    if-gez v1, :cond_12

    .line 386
    .line 387
    iget-boolean v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    .line 388
    .line 389
    if-eqz v1, :cond_11

    .line 390
    .line 391
    cmpl-float v1, v14, v16

    .line 392
    .line 393
    if-nez v1, :cond_12

    .line 394
    .line 395
    :cond_11
    :goto_7
    const/4 v1, 0x0

    .line 396
    const/4 v10, 0x3

    .line 397
    const/4 v15, 0x2

    .line 398
    goto :goto_a

    .line 399
    :cond_12
    :goto_8
    const/4 v10, 0x3

    .line 400
    const/4 v15, 0x2

    .line 401
    goto :goto_9

    .line 402
    :cond_13
    const/4 v15, 0x2

    .line 403
    if-ne v13, v15, :cond_16

    .line 404
    .line 405
    cmpg-float v14, v14, v16

    .line 406
    .line 407
    if-gez v14, :cond_15

    .line 408
    .line 409
    iget-boolean v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    .line 410
    .line 411
    if-eqz v14, :cond_14

    .line 412
    .line 413
    cmpl-float v1, v1, v16

    .line 414
    .line 415
    if-nez v1, :cond_15

    .line 416
    .line 417
    :cond_14
    const/4 v1, 0x0

    .line 418
    const/4 v10, 0x3

    .line 419
    goto :goto_a

    .line 420
    :cond_15
    const/4 v10, 0x3

    .line 421
    goto :goto_9

    .line 422
    :cond_16
    const/4 v10, 0x3

    .line 423
    if-ne v13, v10, :cond_18

    .line 424
    .line 425
    cmpl-float v14, v14, v16

    .line 426
    .line 427
    if-lez v14, :cond_18

    .line 428
    .line 429
    iget-boolean v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectStrictMove:Z

    .line 430
    .line 431
    if-eqz v14, :cond_17

    .line 432
    .line 433
    cmpl-float v1, v1, v16

    .line 434
    .line 435
    if-nez v1, :cond_18

    .line 436
    .line 437
    :cond_17
    const/4 v1, 0x0

    .line 438
    goto :goto_a

    .line 439
    :cond_18
    :goto_9
    const/4 v1, 0x1

    .line 440
    :goto_a
    if-eqz v1, :cond_c

    .line 441
    .line 442
    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->viewTransitionId:I

    .line 443
    .line 444
    const/4 v14, -0x1

    .line 445
    if-ne v1, v14, :cond_1b

    .line 446
    .line 447
    invoke-virtual {v9, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v9, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v9, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v9, v7}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 457
    .line 458
    .line 459
    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationX:I

    .line 460
    .line 461
    if-lez v1, :cond_19

    .line 462
    .line 463
    invoke-virtual {v9, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 467
    .line 468
    .line 469
    :cond_19
    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->motionEffectTranslationY:I

    .line 470
    .line 471
    if-lez v1, :cond_1a

    .line 472
    .line 473
    invoke-virtual {v9, v12}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 474
    .line 475
    .line 476
    move-object/from16 v14, v18

    .line 477
    .line 478
    invoke-virtual {v9, v14}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 479
    .line 480
    .line 481
    :goto_b
    move-object/from16 v10, p1

    .line 482
    .line 483
    goto :goto_d

    .line 484
    :cond_1a
    move-object/from16 v14, v18

    .line 485
    .line 486
    goto :goto_b

    .line 487
    :cond_1b
    move-object/from16 v10, p1

    .line 488
    .line 489
    move-object/from16 v14, v18

    .line 490
    .line 491
    iget-object v15, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 492
    .line 493
    if-eqz v15, :cond_1d

    .line 494
    .line 495
    iget-object v15, v15, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 496
    .line 497
    iget-object v15, v15, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 500
    .line 501
    .line 502
    move-result-object v15

    .line 503
    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 504
    .line 505
    .line 506
    move-result v17

    .line 507
    if-eqz v17, :cond_1d

    .line 508
    .line 509
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v17

    .line 513
    move-object/from16 v0, v17

    .line 514
    .line 515
    check-cast v0, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 516
    .line 517
    move-object/from16 v17, v2

    .line 518
    .line 519
    iget v2, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    .line 520
    .line 521
    if-ne v2, v1, :cond_1c

    .line 522
    .line 523
    const/4 v2, -0x1

    .line 524
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    .line 529
    .line 530
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    .line 531
    .line 532
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    check-cast v0, Ljava/util/ArrayList;

    .line 537
    .line 538
    if-eqz v0, :cond_1e

    .line 539
    .line 540
    iget-object v1, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 541
    .line 542
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 543
    .line 544
    .line 545
    goto :goto_f

    .line 546
    :cond_1c
    move-object/from16 v0, p0

    .line 547
    .line 548
    move-object/from16 v2, v17

    .line 549
    .line 550
    goto :goto_c

    .line 551
    :cond_1d
    :goto_d
    move-object/from16 v17, v2

    .line 552
    .line 553
    :goto_e
    const/4 v2, -0x1

    .line 554
    :cond_1e
    :goto_f
    add-int/lit8 v6, v6, 0x1

    .line 555
    .line 556
    move-object/from16 v0, p0

    .line 557
    .line 558
    move-object/from16 v1, p2

    .line 559
    .line 560
    move-object/from16 v18, v14

    .line 561
    .line 562
    move-object/from16 v2, v17

    .line 563
    .line 564
    goto/16 :goto_6

    .line 565
    .line 566
    :cond_1f
    return-void
.end method
