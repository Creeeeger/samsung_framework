.class public final Lcom/android/systemui/media/CoverMusicWidgetController$onPlayerVisibilityListener$2$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/CoverMusicWidgetController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/CoverMusicWidgetController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController$onPlayerVisibilityListener$2$1;->this$0:Lcom/android/systemui/media/CoverMusicWidgetController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMediaVisibilityChanged(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/CoverMusicWidgetController$onPlayerVisibilityListener$2$1;->this$0:Lcom/android/systemui/media/CoverMusicWidgetController;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->playerVisible:Z

    .line 4
    .line 5
    const-string/jumbo v1, "onPlayerVisibilityChanged before: "

    .line 6
    .line 7
    .line 8
    const-string v2, " after: "

    .line 9
    .line 10
    const-string v3, "CoverMusicWidgetController"

    .line 11
    .line 12
    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->playerVisible:Z

    .line 16
    .line 17
    if-ne v0, p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->playerVisible:Z

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/CoverMusicWidgetController;->enableWidget(Z)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->mediaPauseTimerHandler:Landroid/os/Handler;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->widgetDisableRunnable:Lcom/android/systemui/media/CoverMusicWidgetController$widgetDisableRunnable$1;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
