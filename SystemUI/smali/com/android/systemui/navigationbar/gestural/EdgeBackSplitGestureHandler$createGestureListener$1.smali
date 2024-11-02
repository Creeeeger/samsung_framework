.class public final Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;


# instance fields
.field public final synthetic $detector:Landroid/view/TwoFingerSwipeGestureDetector;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;Landroid/view/TwoFingerSwipeGestureDetector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->$detector:Landroid/view/TwoFingerSwipeGestureDetector;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->Companion:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->SAFE_DEBUG:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "EdgeBackSplitGestureHandler"

    .line 11
    .line 12
    const-string/jumbo v1, "onCanceled SplitGestureHandler"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->gestureDetected:Z

    .line 22
    .line 23
    return-void
.end method

.method public final onCommitted(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->Companion:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->SAFE_DEBUG:Z

    .line 7
    .line 8
    const-string v1, "EdgeBackSplitGestureHandler"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string/jumbo v0, "onCommitted SplitGestureHandler , getureFrom = "

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->gestureDetected:Z

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->startSplitByTwoTouchSwipeIfPossible(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string p0, "gesture committed but split controller is null."

    .line 34
    .line 35
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final onDetected()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->Companion:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->SAFE_DEBUG:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "EdgeBackSplitGestureHandler"

    .line 11
    .line 12
    const-string/jumbo v1, "onDetected SplitGestureHandler"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->inputMonitor:Landroid/view/InputMonitor;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {v0}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->gestureDetected:Z

    .line 33
    .line 34
    return-void
.end method

.method public final onDetecting()V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->Companion:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->SAFE_DEBUG:Z

    .line 7
    .line 8
    const-string v1, "EdgeBackSplitGestureHandler"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string/jumbo v0, "onDetecting in SplitGestureHandler"

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    .line 19
    .line 20
    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->displayController:Lcom/android/wm/shell/common/DisplayController;

    .line 21
    .line 22
    if-eqz v2, :cond_5

    .line 23
    .line 24
    iget v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->displayId:I

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->$detector:Landroid/view/TwoFingerSwipeGestureDetector;

    .line 35
    .line 36
    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->tmpBounds:Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    .line 39
    .line 40
    .line 41
    iget v2, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 42
    .line 43
    iget v3, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 44
    .line 45
    const/4 v4, 0x2

    .line 46
    const/4 v5, 0x1

    .line 47
    if-le v2, v3, :cond_1

    .line 48
    .line 49
    move v2, v4

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v2, v5

    .line 52
    :goto_0
    const/4 v3, 0x5

    .line 53
    if-eq v2, v4, :cond_4

    .line 54
    .line 55
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FULL_TO_SPLIT_BY_GESTURE:Z

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->context:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    iget v2, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 75
    .line 76
    if-ne v2, v3, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move v5, v4

    .line 80
    :goto_1
    if-nez v5, :cond_3

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move v3, v4

    .line 84
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->tmpBounds:Landroid/graphics/Rect;

    .line 89
    .line 90
    invoke-virtual {p0, v1, v0, v3}, Landroid/view/TwoFingerSwipeGestureDetector;->init(Landroid/graphics/Rect;FI)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_5
    const-string p0, "gesture detecting but display frame is null"

    .line 95
    .line 96
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :goto_3
    return-void
.end method

.method public final onEnd()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->Companion:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->SAFE_DEBUG:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "EdgeBackSplitGestureHandler"

    .line 11
    .line 12
    const-string/jumbo v1, "onCanceled SplitGestureHandler"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$createGestureListener$1;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->gestureDetected:Z

    .line 22
    .line 23
    return-void
.end method
