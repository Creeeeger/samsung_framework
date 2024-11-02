.class public final synthetic Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FullToFreeformChanger;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mHideLayoutCallback:Ljava/util/function/Consumer;

    .line 12
    .line 13
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    check-cast p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FreeformToFreeformChanger;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mHideLayoutCallback:Ljava/util/function/Consumer;

    .line 22
    .line 23
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_2
    check-cast p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mHideLayoutCallback:Ljava/util/function/Consumer;

    .line 32
    .line 33
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :goto_0
    check-cast p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->updateSurfaceBoundsForNS(Landroid/view/SurfaceControl$Transaction;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 47
    .line 48
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageTypeAtPosition(I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(I)Landroid/graphics/Rect;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTargetLeash(I)Landroid/view/SurfaceControl;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object v9, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 67
    .line 68
    new-instance v4, Landroid/graphics/Rect;

    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mDropBounds:Landroid/graphics/Rect;

    .line 71
    .line 72
    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Landroid/graphics/Rect;

    .line 76
    .line 77
    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 78
    .line 79
    .line 80
    new-instance v10, Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 83
    .line 84
    .line 85
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 86
    .line 87
    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 88
    .line 89
    sub-int/2addr v0, v1

    .line 90
    int-to-float v5, v0

    .line 91
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 92
    .line 93
    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 94
    .line 95
    sub-int/2addr v0, v1

    .line 96
    int-to-float v6, v0

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    sub-int/2addr v0, v1

    .line 106
    int-to-float v7, v0

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    sub-int/2addr p1, v0

    .line 116
    int-to-float v8, p1

    .line 117
    const/4 p1, 0x2

    .line 118
    new-array p1, p1, [F

    .line 119
    .line 120
    fill-array-data p1, :array_0

    .line 121
    .line 122
    .line 123
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;

    .line 128
    .line 129
    move-object v2, v0

    .line 130
    invoke-direct/range {v2 .. v10}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FFFFLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$1;

    .line 137
    .line 138
    invoke-direct {v0, p0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$1;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
