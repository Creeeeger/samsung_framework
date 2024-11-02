.class public interface abstract Lcom/sec/ims/volte2/IImsCallEventListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsCallEventListener$Stub;,
        Lcom/sec/ims/volte2/IImsCallEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.volte2.IImsCallEventListener"


# virtual methods
.method public abstract onAudioPathUpdated(Ljava/lang/String;)V
.end method

.method public abstract onCallEnded(Lcom/sec/ims/volte2/data/ImsCallInfo;I)V
.end method

.method public abstract onCallEstablished(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
.end method

.method public abstract onCallHeld(Lcom/sec/ims/volte2/data/ImsCallInfo;ZZ)V
.end method

.method public abstract onCallModified(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
.end method

.method public abstract onCallModifyRequested(Lcom/sec/ims/volte2/data/ImsCallInfo;I)V
.end method

.method public abstract onCallResumed(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
.end method

.method public abstract onCallRinging(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
.end method

.method public abstract onCallRingingBack(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
.end method

.method public abstract onCallStarted(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
.end method

.method public abstract onCallTrying(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
.end method

.method public abstract onConferenceParticipantAdded(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
.end method

.method public abstract onConferenceParticipantRemoved(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
.end method

.method public abstract onDedicatedBearerEvent(Lcom/sec/ims/volte2/data/ImsCallInfo;II)V
.end method

.method public abstract onIncomingCall(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
.end method

.method public abstract onIncomingPreAlerting(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
.end method

.method public abstract onRtpLossRateNoti(IFFI)V
.end method

.method public abstract onVideoAvailable(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
.end method

.method public abstract onVideoHeld(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
.end method

.method public abstract onVideoResumed(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
.end method
