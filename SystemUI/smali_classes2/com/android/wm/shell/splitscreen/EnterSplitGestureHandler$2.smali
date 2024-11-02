.class public final Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

.field public final synthetic val$detector:Landroid/view/TwoFingerSwipeGestureDetector;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;Landroid/view/TwoFingerSwipeGestureDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->val$detector:Landroid/view/TwoFingerSwipeGestureDetector;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCommitted(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mSplitScreenController:Ljava/util/Optional;

    .line 4
    .line 5
    new-instance v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2$$ExternalSyntheticLambda0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2$$ExternalSyntheticLambda1;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Ljava/util/Optional;->ifPresentOrElse(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onDetected()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "gesture detected but input monitor is null."

    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final onDetecting()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 4
    .line 5
    iget v0, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayId:I

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_8

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mTmpBounds:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->val$detector:Landroid/view/TwoFingerSwipeGestureDetector;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mTmpBounds:Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 31
    .line 32
    iget v5, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 33
    .line 34
    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 35
    .line 36
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    if-le v5, v0, :cond_0

    .line 39
    .line 40
    move v0, v6

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v0, v7

    .line 43
    :goto_0
    iget v5, v4, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayDeviceType:I

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v9, 0x5

    .line 47
    if-ne v5, v9, :cond_1

    .line 48
    .line 49
    move v5, v7

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v5, v8

    .line 52
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FULL_TO_SPLIT_BY_GESTURE:Z

    .line 56
    .line 57
    if-eqz v10, :cond_2

    .line 58
    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    :cond_2
    if-ne v0, v6, :cond_4

    .line 62
    .line 63
    :cond_3
    move v0, v7

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    move v0, v8

    .line 66
    :goto_2
    iget v4, v4, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mNavMode:I

    .line 67
    .line 68
    const/4 v5, 0x3

    .line 69
    if-eq v4, v5, :cond_5

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_5
    move v7, v8

    .line 73
    :goto_3
    if-eqz v0, :cond_6

    .line 74
    .line 75
    move v8, v9

    .line 76
    :cond_6
    if-eqz v7, :cond_7

    .line 77
    .line 78
    or-int/lit8 v8, v8, 0x8

    .line 79
    .line 80
    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 81
    .line 82
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsTalkbackEnabled:Z

    .line 83
    .line 84
    invoke-virtual {v1, v2, v3, v8, p0}, Landroid/view/TwoFingerSwipeGestureDetector;->init(Landroid/graphics/Rect;FIZ)V

    .line 85
    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_8
    sget-object p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    const-string v0, "gesture detecting but display frame is null"

    .line 91
    .line 92
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :goto_4
    return-void
.end method
