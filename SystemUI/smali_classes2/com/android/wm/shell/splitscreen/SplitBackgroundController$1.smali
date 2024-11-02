.class public final Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;
.super Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFinishRecentsAnimation(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStartHomeAnimation(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStartRecentsAnimation(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onWallpaperVisibilityChanged(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    .line 5
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;ZZ)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
