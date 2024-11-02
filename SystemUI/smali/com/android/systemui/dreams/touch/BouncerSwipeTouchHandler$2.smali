.class public final Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCapture:Ljava/lang/Boolean;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    cmpl-float p3, p4, p3

    .line 18
    .line 19
    if-lez p3, :cond_0

    .line 20
    .line 21
    move p3, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p3, v2

    .line 24
    :goto_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    iput-object p3, v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCapture:Ljava/lang/Boolean;

    .line 29
    .line 30
    iget-object p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 31
    .line 32
    iget-object p4, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCentralSurfaces:Ljava/util/Optional;

    .line 33
    .line 34
    new-instance v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda2;

    .line 35
    .line 36
    invoke-direct {v0, v3}, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda2;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p4, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    check-cast p4, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p4

    .line 55
    iput-boolean p4, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mBouncerInitiallyShowing:Z

    .line 56
    .line 57
    iget-object p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 58
    .line 59
    iget-object p3, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCapture:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_1

    .line 66
    .line 67
    iget-object p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 68
    .line 69
    iput-object v0, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mExpanded:Ljava/lang/Boolean;

    .line 70
    .line 71
    iget-object p3, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCurrentScrimController:Lcom/android/systemui/dreams/touch/scrim/ScrimController;

    .line 72
    .line 73
    invoke-interface {p3}, Lcom/android/systemui/dreams/touch/scrim/ScrimController;->show()V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 77
    .line 78
    iget-object p3, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCapture:Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    if-nez p3, :cond_2

    .line 85
    .line 86
    return v2

    .line 87
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 88
    .line 89
    iget-boolean p3, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mBouncerInitiallyShowing:Z

    .line 90
    .line 91
    if-nez p3, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 98
    .line 99
    .line 100
    move-result p4

    .line 101
    cmpg-float p3, p3, p4

    .line 102
    .line 103
    if-gez p3, :cond_3

    .line 104
    .line 105
    return v3

    .line 106
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 107
    .line 108
    iget-boolean p3, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mBouncerInitiallyShowing:Z

    .line 109
    .line 110
    if-eqz p3, :cond_4

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 113
    .line 114
    .line 115
    move-result p3

    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 117
    .line 118
    .line 119
    move-result p4

    .line 120
    cmpl-float p3, p3, p4

    .line 121
    .line 122
    if-lez p3, :cond_4

    .line 123
    .line 124
    return v3

    .line 125
    :cond_4
    iget-object p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 126
    .line 127
    iget-object p3, p3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCentralSurfaces:Ljava/util/Optional;

    .line 128
    .line 129
    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    if-nez p3, :cond_5

    .line 134
    .line 135
    return v3

    .line 136
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 141
    .line 142
    .line 143
    move-result p4

    .line 144
    sub-float/2addr p3, p4

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    sub-float/2addr p1, p2

    .line 154
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    iget-object p2, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 159
    .line 160
    iget-object p2, p2, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mTouchSession:Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;

    .line 161
    .line 162
    check-cast p2, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;

    .line 163
    .line 164
    iget-object p2, p2, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;->mBounds:Landroid/graphics/Rect;

    .line 165
    .line 166
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    int-to-float p2, p2

    .line 171
    div-float/2addr p1, p2

    .line 172
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 173
    .line 174
    iget-boolean p2, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mBouncerInitiallyShowing:Z

    .line 175
    .line 176
    if-eqz p2, :cond_6

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_6
    const/high16 p2, 0x3f800000    # 1.0f

    .line 180
    .line 181
    sub-float p1, p2, p1

    .line 182
    .line 183
    :goto_1
    iput p1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCurrentExpansion:F

    .line 184
    .line 185
    new-instance p2, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 186
    .line 187
    iget-object p4, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mExpanded:Ljava/lang/Boolean;

    .line 188
    .line 189
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 190
    .line 191
    .line 192
    move-result p4

    .line 193
    invoke-direct {p2, p1, p4, v3, p3}, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;-><init>(FZZF)V

    .line 194
    .line 195
    .line 196
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mCurrentScrimController:Lcom/android/systemui/dreams/touch/scrim/ScrimController;

    .line 197
    .line 198
    invoke-interface {p0, p2}, Lcom/android/systemui/dreams/touch/scrim/ScrimController;->expand(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    .line 199
    .line 200
    .line 201
    return v3
.end method
