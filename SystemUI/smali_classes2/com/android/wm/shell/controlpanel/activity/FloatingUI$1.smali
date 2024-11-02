.class public final Lcom/android/wm/shell/controlpanel/activity/FloatingUI$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingUI;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FloatingUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingUI;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .line 1
    const-string v0, "ControlPanelService"

    .line 2
    .line 3
    const-string v1, "onPreDraw"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingUI;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingUI;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingUI;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0
.end method
