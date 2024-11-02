.class final Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/nexus/video/VideoPlayer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/samsung/android/media/SemMediaPlayer;

.field final synthetic this$0:Lcom/samsung/android/nexus/video/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/nexus/video/VideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->$this_apply:Lcom/samsung/android/media/SemMediaPlayer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/nexus/video/VideoPlayer;->access$getTAG$cp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Prepare is done."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 11
    .line 12
    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->INITIALIZED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setMPlayerState(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->$this_apply:Lcom/samsung/android/media/SemMediaPlayer;

    .line 18
    .line 19
    const v1, 0x88bc

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->$this_apply:Lcom/samsung/android/media/SemMediaPlayer;

    .line 27
    .line 28
    const v1, 0x9088

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getPreparedListener()Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;->onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->$this_apply:Lcom/samsung/android/media/SemMediaPlayer;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPlayer;->isLooping()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {p2, p1}, Lcom/samsung/android/media/SemMediaPlayer;->setLooping(Z)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    sget-object p2, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->STARTED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 61
    .line 62
    if-ne p1, p2, :cond_1

    .line 63
    .line 64
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->play()V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method
