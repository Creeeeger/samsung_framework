.class public final Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;
.super Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PushServiceCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    invoke-direct {p0}, Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;-><init>(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V

    return-void
.end method


# virtual methods
.method public final onRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
    .locals 2

    .line 1
    const-string v0, "KnoxPushServiceCallback"

    .line 2
    .line 3
    const-string v1, "onRegistrationFinished: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/kpm/KnoxPushService;->getInstance()Lcom/samsung/android/knox/kpm/KnoxPushService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/kpm/KnoxPushService;->removeFromTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->onRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onRegistrationStatus(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
    .locals 2

    .line 1
    const-string v0, "KnoxPushServiceCallback"

    .line 2
    .line 3
    const-string v1, "onRegistrationStatus: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/kpm/KnoxPushService;->getInstance()Lcom/samsung/android/knox/kpm/KnoxPushService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/kpm/KnoxPushService;->removeFromTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->onRegistrationStatus(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onUnRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
    .locals 2

    .line 1
    const-string v0, "KnoxPushServiceCallback"

    .line 2
    .line 3
    const-string v1, "onUnRegistrationFinished: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/knox/kpm/KnoxPushService;->getInstance()Lcom/samsung/android/knox/kpm/KnoxPushService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/kpm/KnoxPushService;->removeFromTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->onUnRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
