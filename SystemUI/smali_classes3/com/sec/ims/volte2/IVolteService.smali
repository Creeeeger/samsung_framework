.class public interface abstract Lcom/sec/ims/volte2/IVolteService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IVolteService$Stub;,
        Lcom/sec/ims/volte2/IVolteService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.volte2.IVolteService"


# virtual methods
.method public abstract changeAudioPath(II)V
.end method

.method public abstract createCallProfile(II)Lcom/sec/ims/volte2/data/CallProfile;
.end method

.method public abstract createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;
.end method

.method public abstract createSessionWithRegId(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;
.end method

.method public abstract deRegisterForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V
.end method

.method public abstract deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
.end method

.method public abstract deregisterForCallStateEventForSlot(ILcom/sec/ims/volte2/IImsCallEventListener;)V
.end method

.method public abstract enableCallWaitingRule(Z)V
.end method

.method public abstract getCallCount()[I
.end method

.method public abstract getImsCallInfos(I)[Lcom/sec/ims/volte2/data/ImsCallInfo;
.end method

.method public abstract getNetworkType(I)I
.end method

.method public abstract getParticipantIdForMerge(II)I
.end method

.method public abstract getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;
.end method

.method public abstract getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
.end method

.method public abstract getRttMode()I
.end method

.method public abstract getSession(I)Lcom/sec/ims/volte2/IImsCallSession;
.end method

.method public abstract getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;
.end method

.method public abstract getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract notifyProgressIncomingCall(ILjava/util/Map;)V
.end method

.method public abstract registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
.end method

.method public abstract registerForCallStateEventForSlot(ILcom/sec/ims/volte2/IImsCallEventListener;)V
.end method

.method public abstract registerForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V
.end method

.method public abstract registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
.end method

.method public abstract registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V
.end method

.method public abstract sendRttSessionModifyRequest(IZ)V
.end method

.method public abstract sendRttSessionModifyResponse(IZ)V
.end method

.method public abstract setAutomaticMode(IZ)V
.end method

.method public abstract setTtyMode(I)V
.end method

.method public abstract startLocalRingBackTone(III)I
.end method

.method public abstract stopLocalRingBackTone()I
.end method

.method public abstract unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
.end method

.method public abstract unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V
.end method

.method public abstract updateEccUrn(ILjava/lang/String;)Ljava/lang/String;
.end method
