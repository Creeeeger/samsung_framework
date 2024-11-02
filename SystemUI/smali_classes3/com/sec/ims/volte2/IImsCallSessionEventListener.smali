.class public interface abstract Lcom/sec/ims/volte2/IImsCallSessionEventListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;,
        Lcom/sec/ims/volte2/IImsCallSessionEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.volte2.IImsCallSessionEventListener"


# virtual methods
.method public abstract notifyReadyToHandleImsCallbacks()V
.end method

.method public abstract onCallQualityChanged()V
.end method

.method public abstract onCalling()V
.end method

.method public abstract onConfParticipantHeld(IZ)V
.end method

.method public abstract onConfParticipantResumed(IZ)V
.end method

.method public abstract onConferenceEstablished()V
.end method

.method public abstract onEPdgUnavailable(I)V
.end method

.method public abstract onEarlyMediaStarted(I)V
.end method

.method public abstract onEnded(I)V
.end method

.method public abstract onEpdgStateChanged()V
.end method

.method public abstract onError(ILjava/lang/String;I)V
.end method

.method public abstract onEstablished(I)V
.end method

.method public abstract onFailure(I)V
.end method

.method public abstract onForwarded()V
.end method

.method public abstract onHeld(ZZ)V
.end method

.method public abstract onImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onParticipantAdded(I)V
.end method

.method public abstract onParticipantRemoved(I)V
.end method

.method public abstract onParticipantUpdated(I[Ljava/lang/String;[I[I)V
.end method

.method public abstract onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V
.end method

.method public abstract onResumed(Z)V
.end method

.method public abstract onRetryingVoLteOrCsCall(I)V
.end method

.method public abstract onRingingBack()V
.end method

.method public abstract onSessionChanged(I)V
.end method

.method public abstract onSessionProgress(I)V
.end method

.method public abstract onSessionUpdateRequested(I[B)V
.end method

.method public abstract onStopAlertTone()V
.end method

.method public abstract onSwitched(I)V
.end method

.method public abstract onTrying()V
.end method

.method public abstract onTtyTextRequest(I[B)V
.end method

.method public abstract onUssdReceived(II[B)V
.end method

.method public abstract onUssdResponse(I)V
.end method
