.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 9
    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView;->setAlpha(F)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 18
    .line 19
    const-string v0, "fullscreen_mode_request_folder"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsCollapseAnimating:Z

    .line 28
    .line 29
    return-void
.end method
