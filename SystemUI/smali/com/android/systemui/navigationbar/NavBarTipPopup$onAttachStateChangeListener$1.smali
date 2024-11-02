.class public final Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->isTipPopupShowing:Z

    .line 9
    .line 10
    iget v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->navBarWidth:I

    .line 11
    .line 12
    div-int/lit8 v0, v0, 0x2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->context:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const v3, 0x7f070963

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const v4, 0x7f070964

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    .line 36
    .line 37
    new-instance v3, Lcom/samsung/android/widget/SemTipPopup;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    .line 40
    .line 41
    invoke-direct {v3, v4}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    iput-object v3, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget v4, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->currentMessage:I

    .line 51
    .line 52
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v3, v1}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 60
    .line 61
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 68
    .line 69
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemTipPopup;->setOutsideTouchEnabled(Z)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 76
    .line 77
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 84
    .line 85
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showTipPopup$1;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup$showTipPopup$1;-><init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->handler:Landroid/os/Handler;

    .line 97
    .line 98
    new-instance v0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showTipPopup$2;

    .line 99
    .line 100
    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup$showTipPopup$2;-><init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    :cond_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    .line 4
    .line 5
    if-ne p1, v1, :cond_1

    .line 6
    .line 7
    iget-object p1, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-object v1, p1, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->hide()V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->isTipPopupShowing:Z

    .line 44
    .line 45
    :cond_1
    return-void
.end method
