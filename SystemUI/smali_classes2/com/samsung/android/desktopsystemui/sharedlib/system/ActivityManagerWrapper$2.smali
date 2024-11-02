.class Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$2;
.super Landroid/view/IRecentsAnimationRunner$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;

.field final synthetic val$animationHandler:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$2;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/IRecentsAnimationRunner$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/ThumbnailData;->wrap([I[Landroid/window/TaskSnapshot;)Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;->onAnimationCanceled(Ljava/util/HashMap;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    new-instance v1, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    .line 2
    .line 3
    invoke-direct {v1, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;-><init>(Landroid/view/IRecentsAnimationController;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {p3}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;

    .line 15
    .line 16
    move-object v4, p4

    .line 17
    move-object v5, p5

    .line 18
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;->onAnimationStart(Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    new-instance v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    .line 9
    .line 10
    aget-object v3, p1, v1

    .line 11
    .line 12
    invoke-direct {v2, v3}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;-><init>(Landroid/view/RemoteAnimationTarget;)V

    .line 13
    .line 14
    .line 15
    aput-object v2, v0, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$2;->val$animationHandler:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;

    .line 21
    .line 22
    invoke-interface {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;->onTasksAppeared([Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
