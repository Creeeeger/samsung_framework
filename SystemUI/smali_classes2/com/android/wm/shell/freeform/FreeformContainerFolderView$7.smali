.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$7;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$7;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$7;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringY:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->isSpringAnimating()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "FreeformContainer"

    .line 13
    .line 14
    const-string v0, "[FolderView] onSpringAtRest of springY, releaseDraggingState"

    .line 15
    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->-$$Nest$mrestoreAppIcon(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppIcon()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 2
    .line 3
    iget-wide v0, p1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 4
    .line 5
    double-to-float p1, v0

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$7;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setY(F)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
