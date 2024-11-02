.class public final Lcom/android/wm/shell/common/DismissButtonView$1;
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
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView$1;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

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
    .locals 2

    .line 1
    sget p1, Lcom/android/wm/shell/common/DismissButtonView;->$r8$clinit:I

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v0, "onAnimationEnd, mVisible="

    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView$1;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    .line 13
    .line 14
    const-string v1, "DismissButtonView"

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView$1;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    .line 20
    .line 21
    iget-boolean v0, p1, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/common/DismissButtonView;->mDismissArea:Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonView$1;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
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
