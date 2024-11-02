.class public abstract Lcom/android/wm/shell/controlpanel/activity/FloatingUI;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLayoutParam:Landroid/view/WindowManager$LayoutParams;

.field public mOverlayView:Landroid/view/View;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

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
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/WindowManager;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mWindowManager:Landroid/view/WindowManager;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public addView()V
    .locals 3

    .line 1
    const-string v0, "ControlPanelService"

    .line 2
    .line 3
    const-string v1, "addView "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FloatingUI$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI$1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FloatingUI;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mWindowManager:Landroid/view/WindowManager;

    .line 27
    .line 28
    invoke-interface {v2, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->fadeInAnimation()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public abstract connectUIObject()V
.end method

.method public abstract fadeInAnimation()V
.end method

.method public removeView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mWindowManager:Landroid/view/WindowManager;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 12
    .line 13
    return-void
.end method

.method public abstract setAppendLayoutParams()V
.end method

.method public final showView()V
    .locals 7

    .line 1
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/16 v3, 0x3ea

    .line 6
    .line 7
    const/16 v4, 0x228

    .line 8
    .line 9
    const/4 v5, -0x3

    .line 10
    move-object v0, v6

    .line 11
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 12
    .line 13
    .line 14
    iput-object v6, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->setAppendLayoutParams()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->connectUIObject()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->addView()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
