.class public final Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 2
    .line 3
    iget-object p3, p3, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    .line 5
    new-instance v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;ILandroid/graphics/Region;)V

    .line 8
    .line 9
    .line 10
    check-cast p3, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 11
    .line 12
    invoke-virtual {p3, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
