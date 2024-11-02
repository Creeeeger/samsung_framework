.class public final Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mTipPopUpWindowLp:Landroid/view/WindowManager$LayoutParams;

.field public mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field public mView:Landroid/widget/FrameLayout;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string/jumbo v0, "window"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/WindowManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mWindowManager:Landroid/view/WindowManager;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const v1, 0x7f0d04e0

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/widget/FrameLayout;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 34
    .line 35
    const/4 v2, -0x1

    .line 36
    const/4 v3, -0x1

    .line 37
    const/16 v4, 0x7d8

    .line 38
    .line 39
    const v5, 0x1000118

    .line 40
    .line 41
    .line 42
    const/4 v6, -0x3

    .line 43
    move-object v1, p1

    .line 44
    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopUpWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 48
    .line 49
    const-string v1, "ToolBarTipPopup"

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "addView: mView="

    .line 57
    .line 58
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopUpWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 76
    .line 77
    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 81
    .line 82
    if-nez p1, :cond_0

    .line 83
    .line 84
    new-instance p1, Lcom/samsung/android/widget/SemTipPopup;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    .line 87
    .line 88
    invoke-direct {p1, v0}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 92
    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public final requestShowPopUp(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->showTipPopUp(IIZZ)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mView:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    new-instance v7, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$1;

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    const/4 v6, 0x1

    .line 31
    move-object v1, v7

    .line 32
    move-object v2, p0

    .line 33
    move v3, p1

    .line 34
    move v4, p2

    .line 35
    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$1;-><init>(Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;IIZZ)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public final showTipPopUp(IIZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 13
    .line 14
    const v1, 0x7f060936

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setBackgroundColorWithAlpha(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 27
    .line 28
    const v1, 0x7f060937

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setMessageTextColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 39
    .line 40
    invoke-virtual {v0, p3}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 44
    .line 45
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 49
    .line 50
    new-instance p2, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    invoke-direct {p2, p0}, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 59
    .line 60
    const p2, 0x7f131154

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p1, p2}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 71
    .line 72
    invoke-virtual {p1, p4}, Lcom/samsung/android/widget/SemTipPopup;->setOutsideTouchEnabled(Z)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 76
    .line 77
    invoke-virtual {p1, p3}, Lcom/samsung/android/widget/SemTipPopup;->setPopupWindowClippingEnabled(Z)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 87
    .line 88
    const/4 p1, 0x3

    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/ToolbarTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 94
    .line 95
    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_0
    return-void
.end method
