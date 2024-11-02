.class public final Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/media/SecSeekBarViewModel;->setController(Landroid/media/session/MediaController;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 8
    .line 9
    iput-object v1, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->cancel:Ljava/lang/Runnable;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->cancel:Ljava/lang/Runnable;

    .line 21
    .line 22
    return-void
.end method
