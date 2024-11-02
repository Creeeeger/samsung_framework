.class public final Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $position:J

.field public final synthetic this$0:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->$position:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->isFalseSeek:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {v0, v2}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$setScrubbing(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$checkPlaybackPosition(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-wide v3, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->$position:J

    .line 28
    .line 29
    invoke-virtual {v0, v3, v4}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    .line 30
    .line 31
    .line 32
    :cond_1
    sget-object v0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "QPNE0023"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 43
    .line 44
    invoke-static {p0, v2}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$setScrubbing(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method
