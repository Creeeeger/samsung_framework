.class public interface abstract Lcom/sec/ims/volte2/IImsCallSession;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsCallSession$Stub;,
        Lcom/sec/ims/volte2/IImsCallSession$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.volte2.IImsCallSession"


# virtual methods
.method public abstract accept(Lcom/sec/ims/volte2/data/CallProfile;)V
.end method

.method public abstract acceptECTRequest()I
.end method

.method public abstract cancelTransfer()V
.end method

.method public abstract extendToConference([Ljava/lang/String;)V
.end method

.method public abstract getCallId()I
.end method

.method public abstract getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;
.end method

.method public abstract getCallStateOrdinal()I
.end method

.method public abstract getCmcType()I
.end method

.method public abstract getEndReason()I
.end method

.method public abstract getIncomingInviteRawSip()Ljava/lang/String;
.end method

.method public abstract getMediaCallProvider()Lcom/sec/ims/volte2/IImsMediaCallProvider;
.end method

.method public abstract getModifyRequestedProfile()Lcom/sec/ims/volte2/data/CallProfile;
.end method

.method public abstract getPhoneId()I
.end method

.method public abstract getPrevCallStateOrdinal()I
.end method

.method public abstract getRegistration()Lcom/sec/ims/ImsRegistration;
.end method

.method public abstract getRelayChTerminated()Z
.end method

.method public abstract getSessionId()I
.end method

.method public abstract getUsingCamera()Z
.end method

.method public abstract getVideoCrbtSupportType()I
.end method

.method public abstract hold(Lcom/sec/ims/volte2/data/MediaProfile;)V
.end method

.method public abstract holdVideo()V
.end method

.method public abstract info(ILjava/lang/String;)V
.end method

.method public abstract inviteGroupParticipant(Ljava/lang/String;)V
.end method

.method public abstract inviteParticipants(I)V
.end method

.method public abstract isQuantumEncryptionServiceAvailable()Z
.end method

.method public abstract merge(II)V
.end method

.method public abstract pulling(Ljava/lang/String;Lcom/sec/ims/Dialog;)I
.end method

.method public abstract recording(ILjava/lang/String;)V
.end method

.method public abstract registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V
.end method

.method public abstract reinvite()V
.end method

.method public abstract reject(I)V
.end method

.method public abstract rejectECTRequest()I
.end method

.method public abstract removeCallStateMachineMessage(I)V
.end method

.method public abstract removeGroupParticipant(Ljava/lang/String;)V
.end method

.method public abstract removeParticipants(I)V
.end method

.method public abstract requestCallDataUsage()V
.end method

.method public abstract resume()V
.end method

.method public abstract resumeVideo()V
.end method

.method public abstract sendDtmf(IILandroid/os/Message;)V
.end method

.method public abstract sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendText(Ljava/lang/String;I)V
.end method

.method public abstract setEpdgState(Z)V
.end method

.method public abstract setEpdgStateNoNotify(Z)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setRelayChTerminated(Z)V
.end method

.method public abstract start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I
.end method

.method public abstract startCameraForProvider(I)V
.end method

.method public abstract startConference([Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)V
.end method

.method public abstract startDtmf(I)V
.end method

.method public abstract startECT(ILjava/lang/String;)I
.end method

.method public abstract stopCameraForProvider(Z)V
.end method

.method public abstract stopDtmf()V
.end method

.method public abstract terminate(I)V
.end method

.method public abstract transfer(Ljava/lang/String;)V
.end method

.method public abstract unregisterSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V
.end method

.method public abstract update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V
.end method

.method public abstract updateQuantumPeerProfileStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateQuantumQMKeyStatus(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
.end method
