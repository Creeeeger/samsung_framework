.class public Lcom/sec/ims/volte2/IImsCallEventListener$Default;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/sec/ims/volte2/IImsCallEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IImsCallEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public onAudioPathUpdated(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCallEnded(Lcom/sec/ims/volte2/data/ImsCallInfo;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCallEstablished(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCallHeld(Lcom/sec/ims/volte2/data/ImsCallInfo;ZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCallModified(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCallModifyRequested(Lcom/sec/ims/volte2/data/ImsCallInfo;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCallResumed(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCallRinging(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCallRingingBack(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCallStarted(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCallTrying(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onConferenceParticipantAdded(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onConferenceParticipantRemoved(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onDedicatedBearerEvent(Lcom/sec/ims/volte2/data/ImsCallInfo;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onIncomingCall(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onIncomingPreAlerting(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRtpLossRateNoti(IFFI)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoAvailable(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoHeld(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoResumed(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 0

    .line 1
    return-void
.end method
