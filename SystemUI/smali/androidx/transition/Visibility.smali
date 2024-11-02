.class public abstract Landroidx/transition/Visibility;
.super Landroidx/transition/Transition;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field public mMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "android:visibility:visibility"

    .line 2
    .line 3
    const-string v1, "android:visibility:parent"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    .line 5
    sget-object v0, Landroidx/transition/Styleable;->VISIBILITY_TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string/jumbo v0, "transitionVisibilityMode"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_1

    and-int/lit8 p1, p2, -0x4

    if-nez p1, :cond_0

    .line 8
    iput p2, p0, Landroidx/transition/Visibility;->mMode:I

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;
    .locals 8

    .line 1
    new-instance v0, Landroidx/transition/Visibility$VisibilityInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/transition/Visibility$VisibilityInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 8
    .line 9
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 10
    .line 11
    const-string v2, "android:visibility:parent"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, -0x1

    .line 15
    const-string v5, "android:visibility:visibility"

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object v6, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 20
    .line 21
    check-cast v6, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    check-cast v7, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    iput v7, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 40
    .line 41
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Landroid/view/ViewGroup;

    .line 46
    .line 47
    iput-object v6, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iput v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 51
    .line 52
    iput-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 53
    .line 54
    :goto_0
    if-eqz p1, :cond_1

    .line 55
    .line 56
    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 57
    .line 58
    check-cast v6, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_1

    .line 65
    .line 66
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iput v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 77
    .line 78
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Landroid/view/ViewGroup;

    .line 83
    .line 84
    iput-object v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    iput v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 88
    .line 89
    iput-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 90
    .line 91
    :goto_1
    const/4 v2, 0x1

    .line 92
    if-eqz p0, :cond_6

    .line 93
    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    iget p0, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 97
    .line 98
    iget p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 99
    .line 100
    if-ne p0, p1, :cond_2

    .line 101
    .line 102
    iget-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 103
    .line 104
    iget-object v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 105
    .line 106
    if-ne v3, v4, :cond_2

    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_2
    if-eq p0, p1, :cond_4

    .line 110
    .line 111
    if-nez p0, :cond_3

    .line 112
    .line 113
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 114
    .line 115
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    if-nez p1, :cond_8

    .line 119
    .line 120
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 121
    .line 122
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    iget-object p0, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 126
    .line 127
    if-nez p0, :cond_5

    .line 128
    .line 129
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 130
    .line 131
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    iget-object p0, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 135
    .line 136
    if-nez p0, :cond_8

    .line 137
    .line 138
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 139
    .line 140
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    if-nez p0, :cond_7

    .line 144
    .line 145
    iget p0, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 146
    .line 147
    if-nez p0, :cond_7

    .line 148
    .line 149
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 150
    .line 151
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_7
    if-nez p1, :cond_8

    .line 155
    .line 156
    iget p0, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 157
    .line 158
    if-nez p0, :cond_8

    .line 159
    .line 160
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 161
    .line 162
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 163
    .line 164
    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final captureValues(Landroidx/transition/TransitionValues;)V
    .locals 2

    .line 1
    iget-object p0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast p1, Ljava/util/HashMap;

    .line 14
    .line 15
    const-string v1, "android:visibility:visibility"

    .line 16
    .line 17
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "android:visibility:parent"

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 33
    .line 34
    .line 35
    const-string p0, "android:visibility:screenLocation"

    .line 36
    .line 37
    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-static/range {p2 .. p3}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 14
    .line 15
    if-eqz v5, :cond_1c

    .line 16
    .line 17
    iget-object v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    iget-object v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 22
    .line 23
    if-eqz v5, :cond_1c

    .line 24
    .line 25
    :cond_0
    iget-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    const/4 v8, 0x0

    .line 29
    if-eqz v5, :cond_4

    .line 30
    .line 31
    iget v4, v0, Landroidx/transition/Visibility;->mMode:I

    .line 32
    .line 33
    and-int/2addr v4, v7

    .line 34
    if-ne v4, v7, :cond_3

    .line 35
    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v4, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v0, v5, v8}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v0, v5, v8}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v7, v5}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    iget-boolean v5, v5, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 62
    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v0, v1, v4, v2, v3}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    const/4 v6, 0x0

    .line 72
    :goto_1
    return-object v6

    .line 73
    :cond_4
    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 74
    .line 75
    iget v5, v0, Landroidx/transition/Visibility;->mMode:I

    .line 76
    .line 77
    const/4 v9, 0x2

    .line 78
    and-int/2addr v5, v9

    .line 79
    if-eq v5, v9, :cond_5

    .line 80
    .line 81
    goto/16 :goto_c

    .line 82
    .line 83
    :cond_5
    if-nez v2, :cond_6

    .line 84
    .line 85
    goto/16 :goto_c

    .line 86
    .line 87
    :cond_6
    if-eqz v3, :cond_7

    .line 88
    .line 89
    iget-object v3, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_7
    const/4 v3, 0x0

    .line 93
    :goto_2
    iget-object v5, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 94
    .line 95
    const v10, 0x7f0a0907

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    check-cast v11, Landroid/view/View;

    .line 103
    .line 104
    if-eqz v11, :cond_8

    .line 105
    .line 106
    move/from16 v18, v4

    .line 107
    .line 108
    const/4 v3, 0x0

    .line 109
    goto/16 :goto_b

    .line 110
    .line 111
    :cond_8
    if-eqz v3, :cond_b

    .line 112
    .line 113
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    if-nez v11, :cond_9

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_9
    const/4 v11, 0x4

    .line 121
    if-ne v4, v11, :cond_a

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_a
    if-ne v5, v3, :cond_c

    .line 125
    .line 126
    :goto_3
    const/4 v11, 0x0

    .line 127
    goto :goto_5

    .line 128
    :cond_b
    :goto_4
    if-eqz v3, :cond_c

    .line 129
    .line 130
    move-object v11, v3

    .line 131
    const/4 v3, 0x0

    .line 132
    :goto_5
    move v12, v8

    .line 133
    goto :goto_6

    .line 134
    :cond_c
    move v12, v7

    .line 135
    const/4 v3, 0x0

    .line 136
    const/4 v11, 0x0

    .line 137
    :goto_6
    if-eqz v12, :cond_14

    .line 138
    .line 139
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 140
    .line 141
    .line 142
    move-result-object v12

    .line 143
    if-nez v12, :cond_d

    .line 144
    .line 145
    move/from16 v18, v4

    .line 146
    .line 147
    move-object v11, v5

    .line 148
    move v7, v8

    .line 149
    goto/16 :goto_b

    .line 150
    .line 151
    :cond_d
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    instance-of v12, v12, Landroid/view/View;

    .line 156
    .line 157
    if-eqz v12, :cond_14

    .line 158
    .line 159
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    check-cast v12, Landroid/view/View;

    .line 164
    .line 165
    invoke-virtual {v0, v12, v7}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    invoke-virtual {v0, v12, v7}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    invoke-static {v13, v14}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    .line 174
    .line 175
    .line 176
    move-result-object v13

    .line 177
    iget-boolean v13, v13, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 178
    .line 179
    if-nez v13, :cond_13

    .line 180
    .line 181
    new-instance v11, Landroid/graphics/Matrix;

    .line 182
    .line 183
    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v12}, Landroid/view/View;->getScrollX()I

    .line 187
    .line 188
    .line 189
    move-result v13

    .line 190
    neg-int v13, v13

    .line 191
    int-to-float v13, v13

    .line 192
    invoke-virtual {v12}, Landroid/view/View;->getScrollY()I

    .line 193
    .line 194
    .line 195
    move-result v12

    .line 196
    neg-int v12, v12

    .line 197
    int-to-float v12, v12

    .line 198
    invoke-virtual {v11, v13, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 199
    .line 200
    .line 201
    sget-object v12, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 202
    .line 203
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5, v11}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v11}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 213
    .line 214
    .line 215
    new-instance v12, Landroid/graphics/RectF;

    .line 216
    .line 217
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    int-to-float v13, v13

    .line 222
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 223
    .line 224
    .line 225
    move-result v14

    .line 226
    int-to-float v14, v14

    .line 227
    const/4 v15, 0x0

    .line 228
    invoke-direct {v12, v15, v15, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 232
    .line 233
    .line 234
    iget v13, v12, Landroid/graphics/RectF;->left:F

    .line 235
    .line 236
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 237
    .line 238
    .line 239
    move-result v13

    .line 240
    iget v14, v12, Landroid/graphics/RectF;->top:F

    .line 241
    .line 242
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    .line 243
    .line 244
    .line 245
    move-result v14

    .line 246
    iget v15, v12, Landroid/graphics/RectF;->right:F

    .line 247
    .line 248
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 249
    .line 250
    .line 251
    move-result v15

    .line 252
    iget v6, v12, Landroid/graphics/RectF;->bottom:F

    .line 253
    .line 254
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    new-instance v10, Landroid/widget/ImageView;

    .line 259
    .line 260
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    invoke-direct {v10, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 265
    .line 266
    .line 267
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 268
    .line 269
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    xor-int/2addr v9, v7

    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 278
    .line 279
    .line 280
    move-result v16

    .line 281
    if-eqz v9, :cond_f

    .line 282
    .line 283
    if-nez v16, :cond_e

    .line 284
    .line 285
    move-object/from16 v17, v3

    .line 286
    .line 287
    move/from16 v18, v4

    .line 288
    .line 289
    const/4 v0, 0x0

    .line 290
    goto/16 :goto_9

    .line 291
    .line 292
    :cond_e
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 293
    .line 294
    .line 295
    move-result-object v16

    .line 296
    move-object/from16 v7, v16

    .line 297
    .line 298
    check-cast v7, Landroid/view/ViewGroup;

    .line 299
    .line 300
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 301
    .line 302
    .line 303
    move-result v16

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 305
    .line 306
    .line 307
    move-result-object v8

    .line 308
    invoke-virtual {v8, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 309
    .line 310
    .line 311
    move/from16 v8, v16

    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_f
    const/4 v7, 0x0

    .line 315
    const/4 v8, 0x0

    .line 316
    :goto_7
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    .line 317
    .line 318
    .line 319
    move-result v16

    .line 320
    move-object/from16 v17, v3

    .line 321
    .line 322
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    .line 327
    .line 328
    .line 329
    move-result v16

    .line 330
    move/from16 v18, v4

    .line 331
    .line 332
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    if-lez v3, :cond_10

    .line 337
    .line 338
    if-lez v4, :cond_10

    .line 339
    .line 340
    mul-int v0, v3, v4

    .line 341
    .line 342
    int-to-float v0, v0

    .line 343
    const/high16 v16, 0x49800000    # 1048576.0f

    .line 344
    .line 345
    div-float v0, v16, v0

    .line 346
    .line 347
    const/high16 v2, 0x3f800000    # 1.0f

    .line 348
    .line 349
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    int-to-float v2, v3

    .line 354
    mul-float/2addr v2, v0

    .line 355
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    int-to-float v3, v4

    .line 360
    mul-float/2addr v3, v0

    .line 361
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    iget v4, v12, Landroid/graphics/RectF;->left:F

    .line 366
    .line 367
    neg-float v4, v4

    .line 368
    iget v12, v12, Landroid/graphics/RectF;->top:F

    .line 369
    .line 370
    neg-float v12, v12

    .line 371
    invoke-virtual {v11, v4, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 372
    .line 373
    .line 374
    invoke-virtual {v11, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 375
    .line 376
    .line 377
    new-instance v0, Landroid/graphics/Picture;

    .line 378
    .line 379
    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v5, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 393
    .line 394
    .line 395
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    goto :goto_8

    .line 400
    :cond_10
    const/4 v0, 0x0

    .line 401
    :goto_8
    if-eqz v9, :cond_11

    .line 402
    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-virtual {v2, v5}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v7, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 411
    .line 412
    .line 413
    :cond_11
    :goto_9
    if-eqz v0, :cond_12

    .line 414
    .line 415
    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 416
    .line 417
    .line 418
    :cond_12
    sub-int v0, v15, v13

    .line 419
    .line 420
    const/high16 v2, 0x40000000    # 2.0f

    .line 421
    .line 422
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    sub-int v3, v6, v14

    .line 427
    .line 428
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    invoke-virtual {v10, v0, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v10, v13, v14, v15, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 436
    .line 437
    .line 438
    move-object v11, v10

    .line 439
    goto :goto_a

    .line 440
    :cond_13
    move-object/from16 v17, v3

    .line 441
    .line 442
    move/from16 v18, v4

    .line 443
    .line 444
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    if-nez v2, :cond_15

    .line 453
    .line 454
    const/4 v2, -0x1

    .line 455
    if-eq v0, v2, :cond_15

    .line 456
    .line 457
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 458
    .line 459
    .line 460
    goto :goto_a

    .line 461
    :cond_14
    move-object/from16 v17, v3

    .line 462
    .line 463
    move/from16 v18, v4

    .line 464
    .line 465
    :cond_15
    :goto_a
    move-object/from16 v3, v17

    .line 466
    .line 467
    const/4 v7, 0x0

    .line 468
    :goto_b
    if-eqz v11, :cond_18

    .line 469
    .line 470
    move-object/from16 v0, p2

    .line 471
    .line 472
    if-nez v7, :cond_16

    .line 473
    .line 474
    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 475
    .line 476
    const-string v3, "android:visibility:screenLocation"

    .line 477
    .line 478
    check-cast v2, Ljava/util/HashMap;

    .line 479
    .line 480
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    check-cast v2, [I

    .line 485
    .line 486
    const/4 v3, 0x0

    .line 487
    aget v4, v2, v3

    .line 488
    .line 489
    const/4 v6, 0x1

    .line 490
    aget v2, v2, v6

    .line 491
    .line 492
    const/4 v8, 0x2

    .line 493
    new-array v8, v8, [I

    .line 494
    .line 495
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 496
    .line 497
    .line 498
    aget v3, v8, v3

    .line 499
    .line 500
    sub-int/2addr v4, v3

    .line 501
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    .line 502
    .line 503
    .line 504
    move-result v3

    .line 505
    sub-int/2addr v4, v3

    .line 506
    invoke-virtual {v11, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 507
    .line 508
    .line 509
    aget v3, v8, v6

    .line 510
    .line 511
    sub-int/2addr v2, v3

    .line 512
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    sub-int/2addr v2, v3

    .line 517
    invoke-virtual {v11, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 518
    .line 519
    .line 520
    new-instance v2, Landroidx/transition/ViewGroupOverlayApi18;

    .line 521
    .line 522
    invoke-direct {v2, v1}, Landroidx/transition/ViewGroupOverlayApi18;-><init>(Landroid/view/ViewGroup;)V

    .line 523
    .line 524
    .line 525
    iget-object v2, v2, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 526
    .line 527
    invoke-virtual {v2, v11}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 528
    .line 529
    .line 530
    :cond_16
    move-object/from16 v2, p0

    .line 531
    .line 532
    invoke-virtual {v2, v1, v11, v0}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    .line 533
    .line 534
    .line 535
    move-result-object v6

    .line 536
    if-nez v7, :cond_1b

    .line 537
    .line 538
    if-nez v6, :cond_17

    .line 539
    .line 540
    new-instance v0, Landroidx/transition/ViewGroupOverlayApi18;

    .line 541
    .line 542
    invoke-direct {v0, v1}, Landroidx/transition/ViewGroupOverlayApi18;-><init>(Landroid/view/ViewGroup;)V

    .line 543
    .line 544
    .line 545
    iget-object v0, v0, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 546
    .line 547
    invoke-virtual {v0, v11}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 548
    .line 549
    .line 550
    goto :goto_d

    .line 551
    :cond_17
    const v0, 0x7f0a0907

    .line 552
    .line 553
    .line 554
    invoke-virtual {v5, v0, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    new-instance v0, Landroidx/transition/Visibility$1;

    .line 558
    .line 559
    invoke-direct {v0, v2, v1, v11, v5}, Landroidx/transition/Visibility$1;-><init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v2, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 563
    .line 564
    .line 565
    goto :goto_d

    .line 566
    :cond_18
    move-object/from16 v2, p0

    .line 567
    .line 568
    move-object/from16 v0, p2

    .line 569
    .line 570
    if-eqz v3, :cond_1a

    .line 571
    .line 572
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 573
    .line 574
    .line 575
    move-result v4

    .line 576
    const/4 v5, 0x0

    .line 577
    invoke-static {v3, v5}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2, v1, v3, v0}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    .line 581
    .line 582
    .line 583
    move-result-object v6

    .line 584
    if-eqz v6, :cond_19

    .line 585
    .line 586
    new-instance v0, Landroidx/transition/Visibility$DisappearListener;

    .line 587
    .line 588
    move/from16 v1, v18

    .line 589
    .line 590
    const/4 v4, 0x1

    .line 591
    invoke-direct {v0, v3, v1, v4}, Landroidx/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v2, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 601
    .line 602
    .line 603
    goto :goto_d

    .line 604
    :cond_19
    invoke-static {v3, v4}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 605
    .line 606
    .line 607
    goto :goto_d

    .line 608
    :cond_1a
    :goto_c
    const/4 v6, 0x0

    .line 609
    :cond_1b
    :goto_d
    return-object v6

    .line 610
    :cond_1c
    const/4 v0, 0x0

    .line 611
    return-object v0
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    return p0

    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 12
    .line 13
    check-cast v0, Ljava/util/HashMap;

    .line 14
    .line 15
    const-string v1, "android:visibility:visibility"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 22
    .line 23
    check-cast v2, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    return p0

    .line 32
    :cond_1
    invoke-static {p1, p2}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-boolean p2, p1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 37
    .line 38
    if-eqz p2, :cond_3

    .line 39
    .line 40
    iget p2, p1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    iget p1, p1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    :cond_2
    const/4 p0, 0x1

    .line 49
    :cond_3
    return p0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
