.class public final Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public mCallingPackageName:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mDisallowHitRegion:Landroid/graphics/RectF;

.field public final mDropTargetProviders:Landroid/util/SparseArray;

.field public final mFreeformStarter:Lcom/android/wm/shell/draganddrop/FreeformStarter;

.field public mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

.field public final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field public mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

.field public final mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

.field public final mTargets:Ljava/util/ArrayList;

.field public mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Lcom/samsung/android/multiwindow/MultiWindowManager;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDisallowHitRegion:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mCallingPackageName:Ljava/lang/String;

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDropTargetProviders:Landroid/util/SparseArray;

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 11
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p4

    .line 12
    :goto_0
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    .line 13
    new-instance p2, Lcom/android/wm/shell/draganddrop/FreeformStarter;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/draganddrop/FreeformStarter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mFreeformStarter:Lcom/android/wm/shell/draganddrop/FreeformStarter;

    .line 14
    iput-object p5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 15
    new-instance p2, Lcom/android/wm/shell/draganddrop/AospSplitDropTargetProvider;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/draganddrop/AospSplitDropTargetProvider;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;Landroid/content/Context;)V

    const/4 p3, 0x1

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    new-instance p2, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;Landroid/content/Context;)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v2

    new-instance v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;

    invoke-direct {v4, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;-><init>(Landroid/content/Context;Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Lcom/samsung/android/multiwindow/MultiWindowManager;)V

    return-void
.end method


# virtual methods
.method public final getCenterFreeformBounds()Landroid/graphics/Rect;
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 9
    .line 10
    iget v2, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 11
    .line 12
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 21
    .line 22
    iget v2, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 23
    .line 24
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 25
    .line 26
    if-le v2, v1, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    :cond_0
    const v1, 0x7f0702e4

    .line 30
    .line 31
    .line 32
    const v2, 0x7f0702e7

    .line 33
    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_DND_MULTI_SPLIT_DROP_TARGET:Z

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->isInSubDisplay()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    :cond_1
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 91
    .line 92
    const/4 v5, 0x2

    .line 93
    invoke-static {v2, p0, v5, v4}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    sub-int/2addr v3, v1

    .line 98
    div-int/lit8 v3, v3, 0x2

    .line 99
    .line 100
    add-int/2addr p0, v2

    .line 101
    add-int/2addr v1, v3

    .line 102
    invoke-virtual {v0, v2, v3, p0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 103
    .line 104
    .line 105
    return-object v0
.end method

.method public handleDrop(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;Landroid/content/ClipData;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 13
    const/4 v1, 0x1

    .line 14
    iget p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    .line 15
    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    if-ne p1, v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    :goto_0
    move v0, v1

    .line 24
    :goto_1
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    xor-int/2addr v0, v1

    .line 31
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onDroppedToSplit(ILcom/android/internal/logging/InstanceId;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    const/4 v0, -0x1

    .line 38
    :goto_2
    move v4, v0

    .line 39
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 44
    .line 45
    iget-object v3, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragData:Landroid/content/Intent;

    .line 46
    .line 47
    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, -0x1

    .line 52
    move-object v1, p0

    .line 53
    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->startClipDescription(Landroid/content/ClipDescription;Landroid/content/Intent;ILcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/view/DragAndDropPermissions;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;I)V

    .line 54
    .line 55
    .line 56
    :cond_4
    :goto_3
    return-void
.end method

.method public final isInSubDisplay()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-ne p0, v0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
.end method

.method public final sendSALogging(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;IILjava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, "noti"

    .line 2
    .line 3
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p4, "From Noti_D&D"

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-string v0, "hun"

    .line 13
    .line 14
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_7

    .line 19
    .line 20
    const-string v0, "edgelighting"

    .line 21
    .line 22
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v0, "ctw"

    .line 30
    .line 31
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const-string p4, "From App content DragNSplit"

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const-string/jumbo v0, "taskbar"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    const-string p4, "From Taskbar_D&D"

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const-string v0, "appsEdge"

    .line 53
    .line 54
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    const-string p4, "From Apps edge_D&D"

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    const-string/jumbo v0, "taskEdge"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    if-eqz p4, :cond_5

    .line 71
    .line 72
    const-string p4, "From Task edge_D&D"

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    const-string p4, "com.sec.android.app.launcher"

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mCallingPackageName:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p4

    .line 83
    if-eqz p4, :cond_6

    .line 84
    .line 85
    if-eqz p5, :cond_6

    .line 86
    .line 87
    const-string p4, "From Recent_taskLP"

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    const/4 p4, 0x0

    .line 91
    goto :goto_1

    .line 92
    :cond_7
    :goto_0
    const-string p4, "From NotiPopUp_D&D"

    .line 93
    .line 94
    :goto_1
    if-eqz p4, :cond_b

    .line 95
    .line 96
    instance-of p5, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 97
    .line 98
    if-eqz p5, :cond_a

    .line 99
    .line 100
    const/4 p5, -0x1

    .line 101
    if-ne p2, p5, :cond_8

    .line 102
    .line 103
    if-eqz p3, :cond_a

    .line 104
    .line 105
    :cond_8
    const-string p2, "1000"

    .line 106
    .line 107
    invoke-static {p2, p4}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMultiSplitScreenVisible()Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-nez p0, :cond_9

    .line 117
    .line 118
    if-eqz p3, :cond_a

    .line 119
    .line 120
    :cond_9
    const-string p0, "1021"

    .line 121
    .line 122
    invoke-static {p0, p4}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_a
    instance-of p0, p1, Lcom/android/wm/shell/draganddrop/FreeformStarter;

    .line 126
    .line 127
    if-eqz p0, :cond_b

    .line 128
    .line 129
    const-string p0, "2004"

    .line 130
    .line 131
    invoke-static {p0, p4}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_b
    return-void
.end method

.method public final startClipDescription(Landroid/content/ClipDescription;Landroid/content/Intent;ILcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/view/DragAndDropPermissions;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move/from16 v15, p3

    .line 8
    .line 9
    move-object/from16 v14, p4

    .line 10
    .line 11
    move-object/from16 v10, p5

    .line 12
    .line 13
    move-object/from16 v1, p6

    .line 14
    .line 15
    const-string v2, "application/vnd.android.task"

    .line 16
    .line 17
    invoke-virtual {v8, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "application/vnd.android.shortcut"

    .line 22
    .line 23
    invoke-virtual {v8, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-string v4, "android.intent.extra.ACTIVITY_OPTIONS"

    .line 28
    .line 29
    invoke-virtual {v9, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    invoke-virtual {v9, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    :goto_0
    const-string v5, "android.intent.extra.USER"

    .line 46
    .line 47
    invoke-virtual {v9, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    move-object v6, v5

    .line 52
    check-cast v6, Landroid/os/UserHandle;

    .line 53
    .line 54
    const/4 v5, -0x1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget v7, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->splitDivision:I

    .line 58
    .line 59
    move/from16 v16, v7

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move/from16 v16, v5

    .line 63
    .line 64
    :goto_1
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iget v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->cellPosition:I

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    const/4 v1, 0x0

    .line 70
    :goto_2
    move/from16 v18, v1

    .line 71
    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    const-string v1, "android.activity.launchDisplayId"

    .line 75
    .line 76
    move/from16 v7, p7

    .line 77
    .line 78
    invoke-virtual {v4, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-static {v4}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const/4 v4, 0x1

    .line 86
    invoke-virtual {v1, v4}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 94
    .line 95
    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 96
    .line 97
    const-string v11, "DragAndDropPolicy"

    .line 98
    .line 99
    iget-object v12, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 100
    .line 101
    if-eqz v1, :cond_13

    .line 102
    .line 103
    iget-object v13, v1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    .line 104
    .line 105
    if-eqz v13, :cond_4

    .line 106
    .line 107
    move v13, v4

    .line 108
    goto :goto_3

    .line 109
    :cond_4
    const/4 v13, 0x0

    .line 110
    :goto_3
    if-eqz v13, :cond_13

    .line 111
    .line 112
    iget v1, v1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingUserId:I

    .line 113
    .line 114
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-nez v3, :cond_5

    .line 125
    .line 126
    if-eq v15, v5, :cond_5

    .line 127
    .line 128
    const-string v3, "dropResolverActivity.extra.wallpaper"

    .line 129
    .line 130
    invoke-virtual {v9, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    :cond_5
    const-string v3, "dragPermission"

    .line 134
    .line 135
    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    if-eq v2, v1, :cond_6

    .line 139
    .line 140
    invoke-virtual {v9, v1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 141
    .line 142
    .line 143
    const-string v3, "dropResolverActivity.extra.userid"

    .line 144
    .line 145
    invoke-virtual {v9, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    :cond_6
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 149
    .line 150
    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 151
    .line 152
    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    .line 153
    .line 154
    if-eqz v3, :cond_7

    .line 155
    .line 156
    invoke-interface {v3}, Lcom/android/wm/shell/draganddrop/AppResult;->getContentType()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v13

    .line 160
    goto :goto_4

    .line 161
    :cond_7
    const/4 v13, 0x0

    .line 162
    :goto_4
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 163
    .line 164
    iget-object v5, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 165
    .line 166
    iget-object v5, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingPackageName:Ljava/lang/String;

    .line 167
    .line 168
    iget-boolean v3, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->isDragDataDropResolver:Z

    .line 169
    .line 170
    if-eqz v3, :cond_8

    .line 171
    .line 172
    const-string v3, "dropResolverActivity.extra.contentType"

    .line 173
    .line 174
    invoke-virtual {v9, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    const-string v3, "dropResolverActivity.extra.callingPackage"

    .line 178
    .line 179
    invoke-virtual {v9, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    if-eqz v3, :cond_9

    .line 188
    .line 189
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    goto :goto_5

    .line 194
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v8, ","

    .line 207
    .line 208
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    const-string v8, "1042"

    .line 225
    .line 226
    invoke-static {v8, v6}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 230
    .line 231
    if-eqz v6, :cond_a

    .line 232
    .line 233
    const-string v6, "handleDrop: SALogging... contentType="

    .line 234
    .line 235
    const-string v8, ", callingPackage="

    .line 236
    .line 237
    const-string v12, ", calleePackage="

    .line 238
    .line 239
    invoke-static {v6, v13, v8, v5, v12}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-static {v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    :cond_a
    :goto_6
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 254
    .line 255
    iget-boolean v8, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->isDragDataDropResolver:Z

    .line 256
    .line 257
    if-eqz v10, :cond_b

    .line 258
    .line 259
    if-nez v8, :cond_b

    .line 260
    .line 261
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Landroid/view/DragAndDropPermissions;->takeTransient()Z

    .line 262
    .line 263
    .line 264
    :cond_b
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 265
    .line 266
    iget-boolean v5, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->isDragDataDropResolver:Z

    .line 267
    .line 268
    if-eqz v5, :cond_c

    .line 269
    .line 270
    move v11, v2

    .line 271
    goto :goto_7

    .line 272
    :cond_c
    move v11, v1

    .line 273
    :goto_7
    instance-of v1, v14, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 274
    .line 275
    if-eqz v1, :cond_f

    .line 276
    .line 277
    iget-object v1, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mVisibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    .line 278
    .line 279
    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->getFullscreenTasks()Ljava/util/List;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    check-cast v1, Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-nez v2, :cond_d

    .line 290
    .line 291
    const/4 v2, 0x0

    .line 292
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 297
    .line 298
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 299
    .line 300
    const/4 v2, 0x2

    .line 301
    if-eq v1, v2, :cond_e

    .line 302
    .line 303
    const/4 v2, 0x3

    .line 304
    if-ne v1, v2, :cond_d

    .line 305
    .line 306
    goto :goto_8

    .line 307
    :cond_d
    const/4 v4, 0x0

    .line 308
    :cond_e
    :goto_8
    if-eqz v4, :cond_f

    .line 309
    .line 310
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    .line 311
    .line 312
    const/4 v2, 0x0

    .line 313
    const/high16 v4, 0x2000000

    .line 314
    .line 315
    const/4 v5, 0x0

    .line 316
    new-instance v6, Landroid/os/UserHandle;

    .line 317
    .line 318
    invoke-direct {v6, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 319
    .line 320
    .line 321
    move-object/from16 v3, p2

    .line 322
    .line 323
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    const/4 v2, -0x1

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    new-instance v6, Landroid/os/UserHandle;

    .line 333
    .line 334
    invoke-direct {v6, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 335
    .line 336
    .line 337
    move-object/from16 v1, p0

    .line 338
    .line 339
    move/from16 v5, p3

    .line 340
    .line 341
    move/from16 v7, v16

    .line 342
    .line 343
    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->startSplitScreenWithAllApps(ILandroid/app/PendingIntent;Landroid/content/ComponentName;ILandroid/os/UserHandle;I)V

    .line 344
    .line 345
    .line 346
    goto :goto_9

    .line 347
    :cond_f
    move-object/from16 v1, p4

    .line 348
    .line 349
    move-object/from16 v2, p2

    .line 350
    .line 351
    move/from16 v3, p3

    .line 352
    .line 353
    move-object v4, v7

    .line 354
    move v5, v11

    .line 355
    move/from16 v6, v16

    .line 356
    .line 357
    move/from16 v7, v18

    .line 358
    .line 359
    invoke-interface/range {v1 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startDragAndSplit(Landroid/content/Intent;ILandroid/os/Bundle;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .line 361
    .line 362
    :goto_9
    if-eqz v10, :cond_10

    .line 363
    .line 364
    if-nez v8, :cond_10

    .line 365
    .line 366
    invoke-virtual/range {p5 .. p5}, Landroid/view/DragAndDropPermissions;->release()V

    .line 367
    .line 368
    .line 369
    :cond_10
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_DND_SA_LOGGING:Z

    .line 370
    .line 371
    if-eqz v1, :cond_11

    .line 372
    .line 373
    const-string v5, "ctw"

    .line 374
    .line 375
    const/4 v6, 0x0

    .line 376
    move-object/from16 v1, p0

    .line 377
    .line 378
    move-object/from16 v2, p4

    .line 379
    .line 380
    move/from16 v3, p3

    .line 381
    .line 382
    move/from16 v4, v18

    .line 383
    .line 384
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->sendSALogging(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;IILjava/lang/String;Z)V

    .line 385
    .line 386
    .line 387
    :cond_11
    return-void

    .line 388
    :catchall_0
    move-exception v0

    .line 389
    if-eqz v10, :cond_12

    .line 390
    .line 391
    if-nez v8, :cond_12

    .line 392
    .line 393
    invoke-virtual/range {p5 .. p5}, Landroid/view/DragAndDropPermissions;->release()V

    .line 394
    .line 395
    .line 396
    :cond_12
    throw v0

    .line 397
    :cond_13
    const-string v1, "android.pendingIntent.backgroundActivityAllowed"

    .line 398
    .line 399
    if-eqz v2, :cond_16

    .line 400
    .line 401
    const-string v2, "android.intent.extra.TASK_ID"

    .line 402
    .line 403
    invoke-virtual {v9, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 408
    .line 409
    .line 410
    move-result-object v10

    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipDescription;->isDragFromRecent()Z

    .line 412
    .line 413
    .line 414
    move-result v3

    .line 415
    if-eqz v3, :cond_14

    .line 416
    .line 417
    if-eqz v10, :cond_14

    .line 418
    .line 419
    instance-of v3, v14, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 420
    .line 421
    if-eqz v3, :cond_14

    .line 422
    .line 423
    if-eq v15, v5, :cond_14

    .line 424
    .line 425
    const/4 v3, 0x0

    .line 426
    move-object/from16 v1, p0

    .line 427
    .line 428
    move-object v4, v10

    .line 429
    move/from16 v5, p3

    .line 430
    .line 431
    move/from16 v7, v16

    .line 432
    .line 433
    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->startSplitScreenWithAllApps(ILandroid/app/PendingIntent;Landroid/content/ComponentName;ILandroid/os/UserHandle;I)V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_f

    .line 437
    .line 438
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipDescription;->isDragFromRecent()Z

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    if-eqz v3, :cond_15

    .line 443
    .line 444
    invoke-virtual {v7, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    .line 446
    .line 447
    :cond_15
    const/4 v10, 0x1

    .line 448
    move-object/from16 v1, p4

    .line 449
    .line 450
    move/from16 v3, p3

    .line 451
    .line 452
    move-object v4, v7

    .line 453
    move/from16 v5, v16

    .line 454
    .line 455
    move/from16 v6, v18

    .line 456
    .line 457
    move v7, v10

    .line 458
    invoke-interface/range {v1 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startTask(IILandroid/os/Bundle;IIZ)V

    .line 459
    .line 460
    .line 461
    goto/16 :goto_f

    .line 462
    .line 463
    :cond_16
    if-eqz v3, :cond_17

    .line 464
    .line 465
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    .line 466
    .line 467
    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v11

    .line 471
    const-string v1, "android.intent.extra.shortcut.ID"

    .line 472
    .line 473
    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v12

    .line 477
    move-object/from16 v10, p4

    .line 478
    .line 479
    move/from16 v13, p3

    .line 480
    .line 481
    move-object v3, v14

    .line 482
    move-object v14, v7

    .line 483
    move v2, v15

    .line 484
    move-object v15, v6

    .line 485
    move/from16 v17, v18

    .line 486
    .line 487
    invoke-interface/range {v10 .. v17}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;II)V

    .line 488
    .line 489
    .line 490
    goto/16 :goto_f

    .line 491
    .line 492
    :cond_17
    move-object v3, v14

    .line 493
    move v2, v15

    .line 494
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipDescription;->getDragSourceTaskId()I

    .line 495
    .line 496
    .line 497
    move-result v10

    .line 498
    if-eq v10, v5, :cond_1a

    .line 499
    .line 500
    if-eqz v12, :cond_18

    .line 501
    .line 502
    iget-object v13, v12, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 503
    .line 504
    goto :goto_a

    .line 505
    :cond_18
    const/4 v13, 0x0

    .line 506
    :goto_a
    if-nez v13, :cond_19

    .line 507
    .line 508
    goto :goto_b

    .line 509
    :cond_19
    iget-object v12, v13, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    .line 510
    .line 511
    monitor-enter v12

    .line 512
    :try_start_1
    iget-object v14, v13, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    .line 513
    .line 514
    invoke-virtual {v14, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v14

    .line 518
    check-cast v14, Landroid/window/TaskAppearedInfo;

    .line 519
    .line 520
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 521
    if-eqz v14, :cond_1a

    .line 522
    .line 523
    invoke-virtual {v14}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 524
    .line 525
    .line 526
    move-result-object v12

    .line 527
    invoke-virtual {v12}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 528
    .line 529
    .line 530
    move-result v12

    .line 531
    if-eqz v12, :cond_1a

    .line 532
    .line 533
    invoke-virtual {v14}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 534
    .line 535
    .line 536
    move-result-object v12

    .line 537
    invoke-virtual {v12}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 538
    .line 539
    .line 540
    move-result v12

    .line 541
    if-ne v12, v4, :cond_1a

    .line 542
    .line 543
    new-instance v12, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    const-string v15, "hideDragSourceTaskImmediately: leash="

    .line 546
    .line 547
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v14}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 551
    .line 552
    .line 553
    move-result-object v15

    .line 554
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v12

    .line 561
    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .line 563
    .line 564
    new-instance v11, Landroid/view/SurfaceControl$Transaction;

    .line 565
    .line 566
    invoke-direct {v11}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v14}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 570
    .line 571
    .line 572
    move-result-object v12

    .line 573
    const/4 v15, 0x0

    .line 574
    invoke-virtual {v11, v12, v15}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 578
    .line 579
    .line 580
    new-instance v11, Landroid/window/WindowContainerTransaction;

    .line 581
    .line 582
    invoke-direct {v11}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v14}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 586
    .line 587
    .line 588
    move-result-object v12

    .line 589
    iget-object v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 590
    .line 591
    const/4 v14, 0x0

    .line 592
    invoke-virtual {v11, v12, v14}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v13, v11}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 596
    .line 597
    .line 598
    goto :goto_b

    .line 599
    :catchall_1
    move-exception v0

    .line 600
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 601
    throw v0

    .line 602
    :cond_1a
    :goto_b
    instance-of v11, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 603
    .line 604
    if-eqz v11, :cond_1d

    .line 605
    .line 606
    if-ne v2, v5, :cond_1b

    .line 607
    .line 608
    goto :goto_c

    .line 609
    :cond_1b
    iget-object v5, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 610
    .line 611
    invoke-virtual {v5, v10}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->getNonFloatingTopTask(I)Ljava/util/List;

    .line 612
    .line 613
    .line 614
    move-result-object v5

    .line 615
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 616
    .line 617
    .line 618
    move-result v10

    .line 619
    if-eqz v10, :cond_1c

    .line 620
    .line 621
    goto :goto_c

    .line 622
    :cond_1c
    const/4 v10, 0x0

    .line 623
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v5

    .line 627
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 628
    .line 629
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 630
    .line 631
    const/4 v11, 0x2

    .line 632
    if-ne v5, v11, :cond_1e

    .line 633
    .line 634
    move v5, v10

    .line 635
    move v10, v4

    .line 636
    goto :goto_d

    .line 637
    :cond_1d
    :goto_c
    const/4 v10, 0x0

    .line 638
    :cond_1e
    move v5, v10

    .line 639
    :goto_d
    const-string v11, "android.intent.extra.PENDING_INTENT"

    .line 640
    .line 641
    if-eqz v10, :cond_1f

    .line 642
    .line 643
    invoke-virtual {v9, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 644
    .line 645
    .line 646
    move-result-object v1

    .line 647
    move-object v4, v1

    .line 648
    check-cast v4, Landroid/app/PendingIntent;

    .line 649
    .line 650
    const/4 v5, -0x1

    .line 651
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 656
    .line 657
    .line 658
    move-result-object v7

    .line 659
    move-object/from16 v1, p0

    .line 660
    .line 661
    move v2, v5

    .line 662
    move-object v3, v4

    .line 663
    move-object v4, v7

    .line 664
    move/from16 v5, p3

    .line 665
    .line 666
    move/from16 v7, v16

    .line 667
    .line 668
    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->startSplitScreenWithAllApps(ILandroid/app/PendingIntent;Landroid/content/ComponentName;ILandroid/os/UserHandle;I)V

    .line 669
    .line 670
    .line 671
    goto :goto_f

    .line 672
    :cond_1f
    invoke-virtual {v9, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 673
    .line 674
    .line 675
    move-result-object v2

    .line 676
    move-object v11, v2

    .line 677
    check-cast v11, Landroid/app/PendingIntent;

    .line 678
    .line 679
    invoke-virtual {v7, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 680
    .line 681
    .line 682
    const-string v1, "android.pendingIntent.backgroundActivityAllowedByPermission"

    .line 683
    .line 684
    invoke-virtual {v7, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 685
    .line 686
    .line 687
    if-eqz v6, :cond_20

    .line 688
    .line 689
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    .line 690
    .line 691
    .line 692
    move-result v1

    .line 693
    move v12, v1

    .line 694
    goto :goto_e

    .line 695
    :cond_20
    move v12, v5

    .line 696
    :goto_e
    const/4 v13, 0x0

    .line 697
    move-object/from16 v10, p4

    .line 698
    .line 699
    move/from16 v14, p3

    .line 700
    .line 701
    move-object v15, v7

    .line 702
    move/from16 v17, v18

    .line 703
    .line 704
    invoke-interface/range {v10 .. v17}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;II)V

    .line 705
    .line 706
    .line 707
    :goto_f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_DND_SA_LOGGING:Z

    .line 708
    .line 709
    if-eqz v1, :cond_21

    .line 710
    .line 711
    const-string v1, "com.samsung.android.intent.extra.DRAG_AND_DROP_REQUESTER"

    .line 712
    .line 713
    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v5

    .line 717
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipDescription;->isDragFromRecent()Z

    .line 718
    .line 719
    .line 720
    move-result v6

    .line 721
    move-object/from16 v1, p0

    .line 722
    .line 723
    move-object/from16 v2, p4

    .line 724
    .line 725
    move/from16 v3, p3

    .line 726
    .line 727
    move/from16 v4, v18

    .line 728
    .line 729
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->sendSALogging(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;IILjava/lang/String;Z)V

    .line 730
    .line 731
    .line 732
    :cond_21
    return-void
.end method

.method public final startSplitScreenWithAllApps(ILandroid/app/PendingIntent;Landroid/content/ComponentName;ILandroid/os/UserHandle;I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p4, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p5, :cond_1

    .line 7
    .line 8
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 9
    .line 10
    .line 11
    move-result p5

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move p5, v0

    .line 14
    :goto_0
    invoke-static {p3, p5, p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getEdgeAllAppsActivityIntent(Landroid/content/ComponentName;II)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    if-nez p4, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0, p2, p3, v0, p6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startPendingIntentAndIntent(Landroid/app/PendingIntent;Landroid/content/Intent;II)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual {p0, p1, p3, v0, p6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTaskAndIntent(ILandroid/content/Intent;II)V

    .line 30
    .line 31
    .line 32
    :goto_1
    return-void
.end method

.method public final supportMultiSplitDropTarget()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->isInSubDisplay()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isFlexPanelEnabled(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    move v2, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v2, v1

    .line 30
    :goto_0
    if-eqz v2, :cond_2

    .line 31
    .line 32
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->supportMultiSplitAppMinimumSize()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    move p0, v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move p0, v1

    .line 47
    :goto_1
    if-eqz p0, :cond_3

    .line 48
    .line 49
    :cond_2
    move v1, v0

    .line 50
    :cond_3
    return v1
.end method
