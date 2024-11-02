.class public final Lcom/android/wm/shell/common/DismissButtonView$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/DismissButtonView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/DismissButtonView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView$2;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    sget p1, Lcom/android/wm/shell/common/DismissButtonView;->$r8$clinit:I

    .line 2
    .line 3
    const-string p1, "DismissButtonView"

    .line 4
    .line 5
    const-string v0, "hide-Run callback"

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView$2;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonView$2;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonView;->mHideAnimationEnd:Ljava/lang/Runnable;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 23
    .line 24
    .line 25
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
    return-void
.end method
