.class public final Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$H;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPanelPopupType:I

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mSeekPosition:J

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->removeView()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method
