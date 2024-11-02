.class public interface abstract Lcom/sec/ims/IImsService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IImsService$Stub;,
        Lcom/sec/ims/IImsService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.IImsService"


# virtual methods
.method public abstract changeAudioPath(I)V
.end method

.method public abstract changeAudioPathForSlot(II)V
.end method

.method public abstract deregisterAdhocProfile(I)V
.end method

.method public abstract deregisterAdhocProfileByPhoneId(II)V
.end method

.method public abstract deregisterProfile(Ljava/util/List;Z)V
.end method

.method public abstract deregisterProfileByPhoneId(Ljava/util/List;ZI)V
.end method

.method public abstract dump()V
.end method

.method public abstract enableRcs(Z)V
.end method

.method public abstract enableRcsByPhoneId(ZI)V
.end method

.method public abstract enableService(Ljava/lang/String;Z)V
.end method

.method public abstract enableServiceByPhoneId(Ljava/lang/String;ZI)V
.end method

.method public abstract enableVoLte(Z)V
.end method

.method public abstract enableVoLteByPhoneId(ZI)V
.end method

.method public abstract finishDmConfig(II)V
.end method

.method public abstract forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;)V
.end method

.method public abstract forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V
.end method

.method public abstract getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCallCount(I)[I
.end method

.method public abstract getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
.end method

.method public abstract getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
.end method

.method public abstract getCurrentProfile()[Lcom/sec/ims/settings/ImsProfile;
.end method

.method public abstract getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;
.end method

.method public abstract getEpsFbCallCount(I)I
.end method

.method public abstract getGlobalSettingsValueToBoolean(Ljava/lang/String;IZ)Z
.end method

.method public abstract getGlobalSettingsValueToInteger(Ljava/lang/String;II)I
.end method

.method public abstract getGlobalSettingsValueToString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;
.end method

.method public abstract getMasterStringValue(I)Ljava/lang/String;
.end method

.method public abstract getMasterValue(I)I
.end method

.method public abstract getNetworkType(I)I
.end method

.method public abstract getNrSaCallCount(I)I
.end method

.method public abstract getPhoneCount()I
.end method

.method public abstract getRcsProfileType(I)Ljava/lang/String;
.end method

.method public abstract getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;
.end method

.method public abstract getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
.end method

.method public abstract getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;
.end method

.method public abstract getRttMode(I)I
.end method

.method public abstract getVideocallType()I
.end method

.method public abstract hasCrossSimImsService(I)Z
.end method

.method public abstract hasVoLteSim()Z
.end method

.method public abstract hasVoLteSimByPhoneId(I)Z
.end method

.method public abstract isCmcEmergencyCallSupported(I)Z
.end method

.method public abstract isCmcEmergencyNumber(Ljava/lang/String;I)Z
.end method

.method public abstract isCmcPotentialEmergencyNumber(Ljava/lang/String;I)Z
.end method

.method public abstract isCrossSimCallingRegistered(I)Z
.end method

.method public abstract isCrossSimCallingSupported()Z
.end method

.method public abstract isCrossSimCallingSupportedByPhoneId(I)Z
.end method

.method public abstract isCrossSimPermanentBlocked(I)Z
.end method

.method public abstract isForbidden()Z
.end method

.method public abstract isForbiddenByPhoneId(I)Z
.end method

.method public abstract isImsEnabled()Z
.end method

.method public abstract isImsEnabledByPhoneId(I)Z
.end method

.method public abstract isQSSSuccessAuthAndLogin(I)Z
.end method

.method public abstract isRcsEnabled()Z
.end method

.method public abstract isRegistered()Z
.end method

.method public abstract isRttCall(I)Z
.end method

.method public abstract isServiceAvailable(Ljava/lang/String;II)Z
.end method

.method public abstract isServiceEnabled(Ljava/lang/String;)Z
.end method

.method public abstract isServiceEnabledByPhoneId(Ljava/lang/String;I)Z
.end method

.method public abstract isSupportVoWiFiDisable5GSA(I)Z
.end method

.method public abstract isVoLteEnabled()Z
.end method

.method public abstract isVoLteEnabledByPhoneId(I)Z
.end method

.method public abstract isVolteEnabledFromNetwork(I)Z
.end method

.method public abstract isVolteSupportECT()Z
.end method

.method public abstract isVolteSupportEctByPhoneId(I)Z
.end method

.method public abstract registerAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)I
.end method

.method public abstract registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I
.end method

.method public abstract registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)Ljava/lang/String;
.end method

.method public abstract registerCallback(Lcom/sec/ims/ImsEventListener;Ljava/lang/String;)V
.end method

.method public abstract registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;
.end method

.method public abstract registerCmsRegistrationListenerByPhoneId(Lcom/sec/ims/ICentralMsgStoreService;I)Ljava/lang/String;
.end method

.method public abstract registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
.end method

.method public abstract registerDialogEventListenerByToken(ILcom/sec/ims/IDialogEventListener;)Ljava/lang/String;
.end method

.method public abstract registerDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V
.end method

.method public abstract registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;
.end method

.method public abstract registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)Ljava/lang/String;
.end method

.method public abstract registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)Ljava/lang/String;
.end method

.method public abstract registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)Ljava/lang/String;
.end method

.method public abstract registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)Ljava/lang/String;
.end method

.method public abstract registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
.end method

.method public abstract registerImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;
.end method

.method public abstract registerProfile(Ljava/util/List;)V
.end method

.method public abstract registerProfileByPhoneId(Ljava/util/List;I)V
.end method

.method public abstract registerRttEventListener(ILcom/sec/ims/IRttEventListener;)Ljava/lang/String;
.end method

.method public abstract registerSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)Ljava/lang/String;
.end method

.method public abstract sendDeregister(II)V
.end method

.method public abstract sendIidToken(Ljava/lang/String;I)V
.end method

.method public abstract sendMsisdnNumber(Ljava/lang/String;I)V
.end method

.method public abstract sendRttMessage(Ljava/lang/String;)V
.end method

.method public abstract sendRttSessionModifyRequest(IZ)V
.end method

.method public abstract sendRttSessionModifyResponse(IZ)V
.end method

.method public abstract sendTryRegister()V
.end method

.method public abstract sendTryRegisterByPhoneId(I)V
.end method

.method public abstract sendTryRegisterCms(I)V
.end method

.method public abstract sendVerificationCode(Ljava/lang/String;I)V
.end method

.method public abstract setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setActiveMsisdn(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setAutomaticMode(IZ)V
.end method

.method public abstract setCrossSimPermanentBlocked(IZ)V
.end method

.method public abstract setEmergencyPdnInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract setIsimLoaded()V
.end method

.method public abstract setNrInterworkingMode(II)V
.end method

.method public abstract setProvisionedStringValue(ILjava/lang/String;)V
.end method

.method public abstract setProvisionedValue(II)V
.end method

.method public abstract setRttMode(II)V
.end method

.method public abstract setSimRefreshed()V
.end method

.method public abstract setVideocallType(I)Z
.end method

.method public abstract startDmConfig(I)I
.end method

.method public abstract startLocalRingBackTone(III)I
.end method

.method public abstract stopLocalRingBackTone()I
.end method

.method public abstract suspendRegister(ZI)V
.end method

.method public abstract transferCall(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract triggerAutoConfigurationForApp(I)V
.end method

.method public abstract unRegisterEpdgListener(Ljava/lang/String;)V
.end method

.method public abstract unregisterAutoConfigurationListener(Ljava/lang/String;I)V
.end method

.method public abstract unregisterCallback(Lcom/sec/ims/ImsEventListener;)V
.end method

.method public abstract unregisterCmcRegistrationListenerForSlot(Ljava/lang/String;I)V
.end method

.method public abstract unregisterCmsRegistrationListenerByPhoneId(Ljava/lang/String;I)V
.end method

.method public abstract unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
.end method

.method public abstract unregisterDialogEventListenerByToken(ILjava/lang/String;)V
.end method

.method public abstract unregisterDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V
.end method

.method public abstract unregisterImSessionListener(Ljava/lang/String;)V
.end method

.method public abstract unregisterImSessionListenerByPhoneId(Ljava/lang/String;I)V
.end method

.method public abstract unregisterImsOngoingFtListener(Ljava/lang/String;)V
.end method

.method public abstract unregisterImsOngoingFtListenerByPhoneId(Ljava/lang/String;I)V
.end method

.method public abstract unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
.end method

.method public abstract unregisterImsRegistrationListenerForSlot(Ljava/lang/String;I)V
.end method

.method public abstract unregisterRttEventListener(ILjava/lang/String;)V
.end method

.method public abstract unregisterSimMobilityStatusListenerByPhoneId(Ljava/lang/String;I)V
.end method

.method public abstract updateConfigValues(Landroid/content/ContentValues;II)Z
.end method

.method public abstract updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I
.end method
