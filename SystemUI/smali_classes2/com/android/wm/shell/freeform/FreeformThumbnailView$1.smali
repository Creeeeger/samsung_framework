.class public final Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

.field public final synthetic val$showAnimation:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformThumbnailView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;->val$showAnimation:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;->val$showAnimation:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    .line 6
    .line 7
    const/16 p1, 0x8

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;->val$showAnimation:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
