package com.sec.internal.ims.core.handler.secims;

import android.text.TextUtils;
import android.util.Log;
import com.google.flatbuffers.FlatBufferBuilder;
import com.sec.ims.options.Capabilities;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.config.RcsConfig;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ExtraHeader;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ReqMsg;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestDnsQuery;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestNetworkSuspended;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestRegistration;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestSendDmState;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestSetPreferredImpu;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestSetTextMode;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUACreation;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUACreation_.CmcConfig;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUACreation_.MediaConfig;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUADeletion;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateAkaResp;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.CallConfig;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RegiConfig;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.ScreenConfig;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.ServiceVersionConfig;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateFeatureTag;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateSignDigestRequest;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateSrvccVersion;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateVceConfig;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateXqEnable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class RegistrationRequestBuilder {
    private static final String LOG_TAG = StackRequestBuilderUtil.class.getSimpleName();

    private RegistrationRequestBuilder() {
        throw new IllegalStateException("Utility class");
    }

    static StackRequest makeConfigSrvcc(int i, int i2) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestUpdateSrvccVersion.startRequestUpdateSrvccVersion(flatBufferBuilder);
        RequestUpdateSrvccVersion.addPhoneId(flatBufferBuilder, i);
        RequestUpdateSrvccVersion.addVersion(flatBufferBuilder, i2);
        int endRequestUpdateSrvccVersion = RequestUpdateSrvccVersion.endRequestUpdateSrvccVersion(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 113);
        Request.addReqType(flatBufferBuilder, (byte) 10);
        Request.addReq(flatBufferBuilder, endRequestUpdateSrvccVersion);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeSendDmState(int i, boolean z) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestSendDmState.startRequestSendDmState(flatBufferBuilder);
        RequestSendDmState.addPhoneId(flatBufferBuilder, i);
        RequestSendDmState.addIsOn(flatBufferBuilder, z);
        int endRequestSendDmState = RequestSendDmState.endRequestSendDmState(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 116);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_send_dm_state);
        Request.addReq(flatBufferBuilder, endRequestSendDmState);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    private static int addUaCreationReq(FlatBufferBuilder flatBufferBuilder, UaProfile uaProfile) {
        int i;
        int i2;
        int i3;
        int i4;
        int translateMno;
        int addMediaParameters = addMediaParameters(flatBufferBuilder, uaProfile);
        int addCmcParameters = addCmcParameters(flatBufferBuilder, uaProfile);
        int createString = flatBufferBuilder.createString(uaProfile.iface);
        int createString2 = flatBufferBuilder.createString(uaProfile.pdn);
        int createString3 = flatBufferBuilder.createString(uaProfile.impi);
        int createString4 = flatBufferBuilder.createString(uaProfile.impu);
        int createString5 = flatBufferBuilder.createString(uaProfile.domain);
        int createString6 = flatBufferBuilder.createString(uaProfile.transtype);
        int createString7 = flatBufferBuilder.createString("");
        int createString8 = flatBufferBuilder.createString("");
        int createString9 = flatBufferBuilder.createString(uaProfile.registeralgo);
        int createString10 = flatBufferBuilder.createString(uaProfile.impu);
        int createString11 = flatBufferBuilder.createString(uaProfile.getRemoteuritype().toString());
        int createString12 = flatBufferBuilder.createString(uaProfile.userAgent);
        int createString13 = flatBufferBuilder.createString(uaProfile.instanceId);
        int createString14 = flatBufferBuilder.createString(uaProfile.getCurPani());
        int createString15 = flatBufferBuilder.createString(uaProfile.msrpTransType);
        int createString16 = flatBufferBuilder.createString(uaProfile.getPrivacyHeaderRestricted());
        int createString17 = flatBufferBuilder.createString(uaProfile.getLastPaniHeader());
        int createString18 = flatBufferBuilder.createString(uaProfile.getOipFromPreferred());
        int createString19 = flatBufferBuilder.createString(uaProfile.getSelectTransportAfterTcpReset());
        int createString20 = flatBufferBuilder.createString(uaProfile.mvno);
        int createString21 = !TextUtils.isEmpty(uaProfile.imsiBasedImpu) ? flatBufferBuilder.createString(uaProfile.imsiBasedImpu) : -1;
        int createString22 = !TextUtils.isEmpty(uaProfile.hostname) ? flatBufferBuilder.createString(uaProfile.hostname) : -1;
        String str = uaProfile.sessionRefresher;
        int createString23 = str != null ? flatBufferBuilder.createString(str) : -1;
        if (uaProfile.isipsec) {
            i = flatBufferBuilder.createString(uaProfile.authalg);
            i2 = flatBufferBuilder.createString(uaProfile.encralg);
        } else {
            i = -1;
            i2 = -1;
        }
        String str2 = uaProfile.password;
        int createString24 = str2 != null ? flatBufferBuilder.createString(str2) : -1;
        String str3 = uaProfile.displayName;
        int createString25 = str3 != null ? flatBufferBuilder.createString(str3) : -1;
        String str4 = uaProfile.uuid;
        int createString26 = str4 != null ? flatBufferBuilder.createString(str4) : -1;
        String str5 = uaProfile.contactDisplayName;
        int createString27 = str5 != null ? flatBufferBuilder.createString(str5) : -1;
        String str6 = uaProfile.realm;
        int createString28 = str6 != null ? flatBufferBuilder.createString(str6) : -1;
        String str7 = uaProfile.imMsgTech;
        int createString29 = str7 != null ? flatBufferBuilder.createString(str7) : -1;
        Set<String> set = uaProfile.serviceList;
        int i5 = createString21;
        int createServiceListVector = set != null ? RequestUACreation.createServiceListVector(flatBufferBuilder, StackRequestBuilderUtil.getStringOffsetArray(flatBufferBuilder, set, set.size())) : -1;
        if (uaProfile.getOwnCapabilities() != null) {
            List<Integer> translateFeatureTag = StackRequestBuilderUtil.translateFeatureTag(uaProfile.getOwnCapabilities().getFeature());
            i3 = createServiceListVector;
            int[] iArr = new int[translateFeatureTag.size()];
            Iterator<Integer> it = translateFeatureTag.iterator();
            int i6 = 0;
            while (it.hasNext()) {
                iArr[i6] = it.next().intValue();
                i6++;
            }
            i4 = RequestUACreation.createFeatureTagListVector(flatBufferBuilder, iArr);
        } else {
            i3 = createServiceListVector;
            i4 = -1;
        }
        List<String> list = uaProfile.acb;
        int i7 = i4;
        int createAcbVector = RequestUACreation.createAcbVector(flatBufferBuilder, StackRequestBuilderUtil.getStringOffsetArray(flatBufferBuilder, list, list.size()));
        List<String> list2 = uaProfile.uacSipList;
        int createUacSipListVector = RequestUACreation.createUacSipListVector(flatBufferBuilder, StackRequestBuilderUtil.getStringOffsetArray(flatBufferBuilder, list2, list2.size()));
        RequestUACreation.startRequestUACreation(flatBufferBuilder);
        RequestUACreation.addProfileId(flatBufferBuilder, uaProfile.getProfileId());
        RequestUACreation.addInterfaceNw(flatBufferBuilder, createString);
        RequestUACreation.addNetId(flatBufferBuilder, uaProfile.getNetId());
        RequestUACreation.addPdn(flatBufferBuilder, createString2);
        RequestUACreation.addImpi(flatBufferBuilder, createString3);
        RequestUACreation.addImpu(flatBufferBuilder, createString4);
        RequestUACreation.addDomain(flatBufferBuilder, createString5);
        RequestUACreation.addIsSipOutbound(flatBufferBuilder, uaProfile.issipoutbound);
        RequestUACreation.addQParam(flatBufferBuilder, uaProfile.qparam);
        RequestUACreation.addControlDscp(flatBufferBuilder, uaProfile.getControlDscp());
        RequestUACreation.addTransType(flatBufferBuilder, createString6);
        RequestUACreation.addIsEmergencySupport(flatBufferBuilder, uaProfile.isEmergencyProfile);
        RequestUACreation.addIsIpsec(flatBufferBuilder, uaProfile.isipsec);
        RequestUACreation.addEncrAlg(flatBufferBuilder, createString7);
        RequestUACreation.addAuthAlg(flatBufferBuilder, createString8);
        RequestUACreation.addRegisterAlgo(flatBufferBuilder, createString9);
        RequestUACreation.addPrefId(flatBufferBuilder, createString10);
        RequestUACreation.addRemoteUriType(flatBufferBuilder, createString11);
        RequestUACreation.addIsPrecondEnabled(flatBufferBuilder, uaProfile.isPrecondEnabled);
        RequestUACreation.addIsPrecondInitialSendrecv(flatBufferBuilder, uaProfile.isPrecondInitialSendrecv);
        RequestUACreation.addWifiPreConditionEnabled(flatBufferBuilder, uaProfile.mIsWifiPreConditionEnabled);
        RequestUACreation.addIsSipCompactHeader(flatBufferBuilder, uaProfile.mUseCompactHeader);
        RequestUACreation.addSessionExpires(flatBufferBuilder, uaProfile.sessionExpires);
        RequestUACreation.addMinse(flatBufferBuilder, uaProfile.minSe);
        RequestUACreation.addUserAgent(flatBufferBuilder, createString12);
        RequestUACreation.addInstanceId(flatBufferBuilder, createString13);
        RequestUACreation.addIsSoftphoneEnabled(flatBufferBuilder, uaProfile.isSoftphoneEnabled);
        RequestUACreation.addIsCdmalessEnabled(flatBufferBuilder, uaProfile.isCdmalessEnabled);
        RequestUACreation.addRingbackTimer(flatBufferBuilder, uaProfile.ringbackTimer);
        RequestUACreation.addRingingTimer(flatBufferBuilder, uaProfile.ringingTimer);
        RequestUACreation.addTimer1(flatBufferBuilder, uaProfile.getTimer1());
        RequestUACreation.addTimer2(flatBufferBuilder, uaProfile.getTimer2());
        RequestUACreation.addTimer4(flatBufferBuilder, uaProfile.getTimer4());
        RequestUACreation.addTimerA(flatBufferBuilder, uaProfile.getTimerA());
        RequestUACreation.addTimerD(flatBufferBuilder, uaProfile.getTimerD());
        RequestUACreation.addTimerB(flatBufferBuilder, uaProfile.getTimerB());
        RequestUACreation.addTimerC(flatBufferBuilder, uaProfile.getTimerC());
        RequestUACreation.addTimerE(flatBufferBuilder, uaProfile.getTimerE());
        RequestUACreation.addTimerF(flatBufferBuilder, uaProfile.getTimerF());
        RequestUACreation.addTimerG(flatBufferBuilder, uaProfile.getTimerG());
        RequestUACreation.addTimerH(flatBufferBuilder, uaProfile.getTimerH());
        RequestUACreation.addTimerI(flatBufferBuilder, uaProfile.getTimerI());
        RequestUACreation.addTimerJ(flatBufferBuilder, uaProfile.getTimerJ());
        RequestUACreation.addTimerK(flatBufferBuilder, uaProfile.getTimerK());
        RequestUACreation.addTimerTs(flatBufferBuilder, uaProfile.getTimerTS());
        RequestUACreation.addMssSize(flatBufferBuilder, uaProfile.getMssSize());
        RequestUACreation.addSipMobility(flatBufferBuilder, uaProfile.getSipMobility());
        RequestUACreation.addIsEnableGruu(flatBufferBuilder, uaProfile.getIsEnableGruu());
        RequestUACreation.addIsEnableVcid(flatBufferBuilder, uaProfile.getIsEnableVcid());
        RequestUACreation.addIsEnableSessionId(flatBufferBuilder, uaProfile.getIsEnableSessionId());
        RequestUACreation.addAudioEngineType(flatBufferBuilder, uaProfile.getAudioEngineType());
        RequestUACreation.addTextMode(flatBufferBuilder, uaProfile.getTextMode());
        RequestUACreation.addCurPani(flatBufferBuilder, createString14);
        RequestUACreation.addIsVceConfigEnabled(flatBufferBuilder, uaProfile.isVceConfigEnabled);
        RequestUACreation.addIsGcfConfigEnabled(flatBufferBuilder, uaProfile.isGcfConfigEnabled);
        RequestUACreation.addIsNsdsServiceEnabled(flatBufferBuilder, uaProfile.isNsdsServiceEnabled);
        RequestUACreation.addIsMsrpBearerUsed(flatBufferBuilder, uaProfile.isMsrpBearerUsed);
        RequestUACreation.addSubscriberTimer(flatBufferBuilder, uaProfile.subscriberTimer);
        RequestUACreation.addIsSubscribeReg(flatBufferBuilder, uaProfile.isSubscribeReg);
        RequestUACreation.addUseKeepAlive(flatBufferBuilder, uaProfile.useKeepAlive);
        RequestUACreation.addSelfPort(flatBufferBuilder, uaProfile.selfPort);
        RequestUACreation.addScmVersion(flatBufferBuilder, uaProfile.scmVersion);
        RequestUACreation.addActiveDataPhoneId(flatBufferBuilder, uaProfile.activeDataPhoneId);
        RequestUACreation.addMsrpTransType(flatBufferBuilder, createString15);
        RequestUACreation.addIsFullCodecOfferRequired(flatBufferBuilder, uaProfile.isFullCodecOfferRequired);
        RequestUACreation.addIsRcsTelephonyFeatureTagRequired(flatBufferBuilder, uaProfile.isRcsTelephonyFeatureTagRequired);
        RequestUACreation.addIsXqEnabled(flatBufferBuilder, uaProfile.isXqEnabled);
        RequestUACreation.addRcsProfile(flatBufferBuilder, uaProfile.getRcsProfile());
        RequestUACreation.addNeedTransportInContact(flatBufferBuilder, uaProfile.getIsTransportNeeded());
        RequestUACreation.addRat(flatBufferBuilder, uaProfile.getRat());
        RequestUACreation.addDbrTimer(flatBufferBuilder, uaProfile.getDbrTimer());
        RequestUACreation.addIsTcpGracefulShutdownEnabled(flatBufferBuilder, uaProfile.getIsTcpGracefulShutdownEnabled());
        RequestUACreation.addTcpRstUacErrorcode(flatBufferBuilder, uaProfile.getTcpRstUacErrorcode());
        RequestUACreation.addTcpRstUasErrorcode(flatBufferBuilder, uaProfile.getTcpRstUasErrorcode());
        RequestUACreation.addPrivacyHeaderRestricted(flatBufferBuilder, createString16);
        RequestUACreation.addUsePemHeader(flatBufferBuilder, uaProfile.getUsePemHeader());
        RequestUACreation.addPhoneId(flatBufferBuilder, uaProfile.getPhoneId());
        RequestUACreation.addSupportEct(flatBufferBuilder, uaProfile.getSupportEct());
        RequestUACreation.addEarlyMediaRtpTimeoutTimer(flatBufferBuilder, uaProfile.getEarlyMediaRtpTimeoutTimer());
        RequestUACreation.addAddHistinfo(flatBufferBuilder, uaProfile.getAddHistinfo());
        RequestUACreation.addSupportedGeolocationPhase(flatBufferBuilder, uaProfile.getSupportedGeolocationPhase());
        RequestUACreation.addNeedPidfSipMsg(flatBufferBuilder, uaProfile.getNeedPidfSipMsg());
        RequestUACreation.addNeedPidfRat(flatBufferBuilder, uaProfile.getNeedPidfRat());
        RequestUACreation.addUseProvisionalResponse100rel(flatBufferBuilder, uaProfile.getUseProvisionalResponse100rel());
        RequestUACreation.addUse183OnProgressIncoming(flatBufferBuilder, uaProfile.getUse183OnProgressIncoming());
        RequestUACreation.addUseQ850causeOn480(flatBufferBuilder, uaProfile.getUseQ850causeOn480());
        RequestUACreation.addSupport183ForIr92v9Precondition(flatBufferBuilder, uaProfile.getSupport183ForIr92v9Precondition());
        RequestUACreation.addSupportImsNotAvailable(flatBufferBuilder, uaProfile.getSupportImsNotAvailable());
        RequestUACreation.addSupportLtePreferred(flatBufferBuilder, uaProfile.getSupportLtePreferred());
        RequestUACreation.addUseSubcontactWhenResub(flatBufferBuilder, uaProfile.getUseSubcontactWhenResub());
        RequestUACreation.addSupportUpgradePrecondition(flatBufferBuilder, uaProfile.getSupportUpgradePrecondition());
        RequestUACreation.addSupportReplaceMerge(flatBufferBuilder, uaProfile.getSupportReplaceMerge());
        RequestUACreation.addIsServerHeaderEnabled(flatBufferBuilder, uaProfile.isServerHeaderEnabled());
        RequestUACreation.addSupportAccessType(flatBufferBuilder, uaProfile.supportAccessType);
        RequestUACreation.addLastPaniHeader(flatBufferBuilder, createString17);
        RequestUACreation.addOipFromPreferred(flatBufferBuilder, createString18);
        RequestUACreation.addSelectTransportAfterTcpReset(flatBufferBuilder, createString19);
        RequestUACreation.addSrvccVersion(flatBufferBuilder, uaProfile.getSrvccVersion());
        RequestUACreation.addSupportSubscribeDialogEvent(flatBufferBuilder, uaProfile.supportSubscribeDialogEvent);
        RequestUACreation.addIsSimMobility(flatBufferBuilder, uaProfile.isSimMobility);
        RequestUACreation.addVideoCrbtSupportType(flatBufferBuilder, uaProfile.getVideoCrbtSupportType());
        RequestUACreation.addRetryInviteOnTcpReset(flatBufferBuilder, uaProfile.getRetryInviteOnTcpReset());
        RequestUACreation.addEnableVerstat(flatBufferBuilder, uaProfile.getEnableVerstat());
        RequestUACreation.addRegRetryBaseTime(flatBufferBuilder, uaProfile.getRegRetryBaseTime());
        RequestUACreation.addRegRetryMaxTime(flatBufferBuilder, uaProfile.getRegRetryMaxTime());
        RequestUACreation.addSupportDualRcs(flatBufferBuilder, uaProfile.getSupportDualRcs());
        RequestUACreation.addIsPttSupported(flatBufferBuilder, uaProfile.getIsPttSupported());
        RequestUACreation.addTryReregisterFromKeepalive(flatBufferBuilder, uaProfile.getTryReregisterFromKeepalive());
        RequestUACreation.addSslType(flatBufferBuilder, uaProfile.getSslType());
        RequestUACreation.addHashAlgoType(flatBufferBuilder, uaProfile.getHashAlgoTypeType());
        RequestUACreation.addSupport199ProvisionalResponse(flatBufferBuilder, uaProfile.getSupport199ProvisionalResponse());
        RequestUACreation.addSend18xReliably(flatBufferBuilder, uaProfile.getSend18xReliably());
        RequestUACreation.addSupportNetworkInitUssi(flatBufferBuilder, uaProfile.getSupportNetworkInitUssi());
        RequestUACreation.addSendByeForUssi(flatBufferBuilder, uaProfile.getSendByeForUssi());
        RequestUACreation.addSupportRfc6337ForDelayedOffer(flatBufferBuilder, uaProfile.getSupportRfc6337ForDelayedOffer());
        RequestUACreation.addUse200offerWhenRemoteNotSupport100rel(flatBufferBuilder, uaProfile.getUse200offerWhenRemoteNotSupport100rel());
        RequestUACreation.addVowifi5gsaMode(flatBufferBuilder, uaProfile.getVowifi5gsaMode());
        RequestUACreation.addExcludePaniVowifiInitialRegi(flatBufferBuilder, uaProfile.getExcludePaniVowifiInitialRegi());
        RequestUACreation.addSingleRegiEnabled(flatBufferBuilder, uaProfile.getSingleRegiEnabled());
        RequestUACreation.addNeedCheckAllowedMethodForRefresh(flatBufferBuilder, uaProfile.getNeedCheckAllowedMethodForRefresh());
        RequestUACreation.addAddMmtelCallcomposerTag(flatBufferBuilder, uaProfile.getIsAddMmtelCallComposerTag());
        RequestUACreation.addKeepAliveFactor(flatBufferBuilder, uaProfile.getKeepAliveFactor());
        RequestUACreation.addEncrNullRoaming(flatBufferBuilder, uaProfile.getEncrNullRoaming());
        RequestUACreation.addSupportUac(flatBufferBuilder, uaProfile.getSupportUac());
        RequestUACreation.addNeedVolteRetryInNr(flatBufferBuilder, uaProfile.getNeedVolteRetryInNr());
        RequestUACreation.addImpuPreference(flatBufferBuilder, uaProfile.getImpuPreference());
        RequestUACreation.addIsUpdateSaOnStartSupported(flatBufferBuilder, uaProfile.isUpdateSaOnStartSupported());
        RequestUACreation.addIsUpdateSaOnAirplaneModeSupported(flatBufferBuilder, uaProfile.isUpdateSaOnAirplaneModeSupported());
        RequestUACreation.addSupportDatachannelWithFeatureCaps(flatBufferBuilder, uaProfile.getSupportDatachannelWithFeatureCaps());
        RequestUACreation.addSupportB2cCallcomposerWithoutFeaturetag(flatBufferBuilder, uaProfile.getSupportB2cCallcomposerWithoutFeaturetag());
        RequestUACreation.addIsRcsAsJibe(flatBufferBuilder, uaProfile.isRcsAsJibe());
        if (i5 != -1) {
            RequestUACreation.addImsibasedimpu(flatBufferBuilder, i5);
        }
        int i8 = createString22;
        if (i8 != -1) {
            RequestUACreation.addHostname(flatBufferBuilder, i8);
        }
        int i9 = createString23;
        if (i9 != -1) {
            RequestUACreation.addSessionRefresher(flatBufferBuilder, i9);
        }
        boolean z = uaProfile.isipsec;
        if (z) {
            RequestUACreation.addIsIpsec(flatBufferBuilder, z);
            int i10 = i;
            if (i10 != -1) {
                RequestUACreation.addAuthAlg(flatBufferBuilder, i10);
            }
            int i11 = i2;
            if (i11 != -1) {
                RequestUACreation.addEncrAlg(flatBufferBuilder, i11);
            }
        }
        int i12 = createString24;
        if (i12 != -1) {
            RequestUACreation.addPassword(flatBufferBuilder, i12);
        }
        Mno mno = uaProfile.mno;
        if (mno != null && (translateMno = StackRequestBuilderUtil.translateMno(mno)) != 0) {
            Log.i(LOG_TAG, "translateMno: " + translateMno);
            RequestUACreation.addMno(flatBufferBuilder, translateMno);
        }
        RequestUACreation.addMvno(flatBufferBuilder, createString20);
        int i13 = createString25;
        if (i13 != -1) {
            RequestUACreation.addDisplayName(flatBufferBuilder, i13);
        }
        int i14 = createString26;
        if (i14 != -1) {
            RequestUACreation.addUuid(flatBufferBuilder, i14);
        }
        int i15 = createString27;
        if (i15 != -1) {
            RequestUACreation.addContactDisplayName(flatBufferBuilder, i15);
        }
        int i16 = createString28;
        if (i16 != -1) {
            RequestUACreation.addRealm(flatBufferBuilder, i16);
        }
        int i17 = createString29;
        if (i17 != -1) {
            RequestUACreation.addImMsgTech(flatBufferBuilder, i17);
        }
        int i18 = i3;
        if (i18 != -1) {
            RequestUACreation.addServiceList(flatBufferBuilder, i18);
        }
        if (i7 != -1) {
            RequestUACreation.addFeatureTagList(flatBufferBuilder, i7);
        }
        RequestUACreation.addConfigDualIms(flatBufferBuilder, StackRequestBuilderUtil.translateConfigDualIms());
        RequestUACreation.addMediaConfig(flatBufferBuilder, addMediaParameters);
        RequestUACreation.addCmcConfig(flatBufferBuilder, addCmcParameters);
        if (createAcbVector != -1) {
            RequestUACreation.addAcb(flatBufferBuilder, createAcbVector);
        }
        if (createUacSipListVector != -1) {
            RequestUACreation.addUacSipList(flatBufferBuilder, createUacSipListVector);
        }
        RequestUACreation.addIgnoreDisplayName(flatBufferBuilder, uaProfile.isDisplayNameIgnored());
        RequestUACreation.addSignDigestResponseEnabled(flatBufferBuilder, uaProfile.signDigestResponseEnabled);
        return RequestUACreation.endRequestUACreation(flatBufferBuilder);
    }

    private static int addMediaParameters(FlatBufferBuilder flatBufferBuilder, UaProfile uaProfile) {
        CallProfile callProfile = uaProfile.getCallProfile();
        int createString = flatBufferBuilder.createString(callProfile.audioCodec);
        int createString2 = flatBufferBuilder.createString(callProfile.amrMode);
        int createString3 = flatBufferBuilder.createString(callProfile.amrWbMode);
        int createString4 = flatBufferBuilder.createString(Integer.toString(callProfile.audioAs));
        int createString5 = flatBufferBuilder.createString(Integer.toString(callProfile.audioRs));
        int createString6 = flatBufferBuilder.createString(Integer.toString(callProfile.audioRr));
        int createString7 = flatBufferBuilder.createString(callProfile.videoCodec);
        int createString8 = flatBufferBuilder.createString(callProfile.displayFormat);
        int createString9 = flatBufferBuilder.createString(callProfile.packetizationMode);
        int createString10 = flatBufferBuilder.createString(callProfile.evsDiscontinuousTransmission);
        int createString11 = flatBufferBuilder.createString(callProfile.evsDtxRecv);
        int createString12 = flatBufferBuilder.createString(callProfile.evsHeaderFull);
        int createString13 = flatBufferBuilder.createString(callProfile.evsModeSwitch);
        int createString14 = flatBufferBuilder.createString(callProfile.evsChannelSend);
        int createString15 = flatBufferBuilder.createString(callProfile.evsChannelRecv);
        int createString16 = flatBufferBuilder.createString(callProfile.evsChannelAwareReceive);
        int createString17 = flatBufferBuilder.createString(callProfile.evsCodecModeRequest);
        int createString18 = flatBufferBuilder.createString(callProfile.evsBitRateSend);
        int createString19 = flatBufferBuilder.createString(callProfile.evsBitRateReceive);
        int createString20 = flatBufferBuilder.createString(callProfile.evsBandwidthSend);
        int createString21 = flatBufferBuilder.createString(callProfile.evsBandwidthReceive);
        int createString22 = flatBufferBuilder.createString(callProfile.evsDefaultBandwidth);
        int createString23 = flatBufferBuilder.createString(callProfile.evsDefaultBitrate);
        int createString24 = flatBufferBuilder.createString(callProfile.displayFormatHevc);
        int createString25 = flatBufferBuilder.createString(callProfile.evsBitRateSendExt);
        int createString26 = flatBufferBuilder.createString(callProfile.evsBitRateReceiveExt);
        int createString27 = flatBufferBuilder.createString(callProfile.evsBandwidthSendExt);
        int createString28 = flatBufferBuilder.createString(callProfile.evsBandwidthReceiveExt);
        int createString29 = flatBufferBuilder.createString(callProfile.evsLimitedCodec);
        MediaConfig.startMediaConfig(flatBufferBuilder);
        MediaConfig.addAudioCodec(flatBufferBuilder, createString);
        MediaConfig.addAudioPort(flatBufferBuilder, callProfile.audioPort);
        MediaConfig.addAudioDscp(flatBufferBuilder, callProfile.audioDscp);
        MediaConfig.addAmrPayload(flatBufferBuilder, callProfile.amrOaPayloadType);
        MediaConfig.addAmrbePayload(flatBufferBuilder, callProfile.amrPayloadType);
        MediaConfig.addAmrWbPayload(flatBufferBuilder, callProfile.amrWbOaPayloadType);
        MediaConfig.addAmrbeWbPayload(flatBufferBuilder, callProfile.amrWbPayloadType);
        MediaConfig.addAmrOpenPayload(flatBufferBuilder, callProfile.amrOpenPayloadType);
        MediaConfig.addDtmfPayload(flatBufferBuilder, callProfile.dtmfPayloadType);
        MediaConfig.addDtmfWbPayload(flatBufferBuilder, callProfile.dtmfWbPayloadType);
        MediaConfig.addAmrMaxRed(flatBufferBuilder, callProfile.amrOaMaxRed);
        MediaConfig.addAmrbeMaxRed(flatBufferBuilder, callProfile.amrBeMaxRed);
        MediaConfig.addAmrWbMaxRed(flatBufferBuilder, callProfile.amrOaWbMaxRed);
        MediaConfig.addAmrbeWbMaxRed(flatBufferBuilder, callProfile.amrBeWbMaxRed);
        MediaConfig.addEvsMaxRed(flatBufferBuilder, callProfile.evsMaxRed);
        MediaConfig.addAmrMode(flatBufferBuilder, createString2);
        MediaConfig.addAmrWbMode(flatBufferBuilder, createString3);
        MediaConfig.addAudioAs(flatBufferBuilder, createString4);
        MediaConfig.addAudioRs(flatBufferBuilder, createString5);
        MediaConfig.addAudioRr(flatBufferBuilder, createString6);
        MediaConfig.addPTime(flatBufferBuilder, callProfile.pTime);
        MediaConfig.addMaxTime(flatBufferBuilder, callProfile.maxPTime);
        MediaConfig.addVideoCodec(flatBufferBuilder, createString7);
        MediaConfig.addVideoPort(flatBufferBuilder, callProfile.videoPort);
        MediaConfig.addFrameRate(flatBufferBuilder, callProfile.frameRate);
        MediaConfig.addDisplayFormat(flatBufferBuilder, createString8);
        MediaConfig.addDisplayFormatHevc(flatBufferBuilder, createString24);
        MediaConfig.addPacketizationMode(flatBufferBuilder, createString9);
        MediaConfig.addH265QvgaPayload(flatBufferBuilder, callProfile.h265QvgaPayloadType);
        MediaConfig.addH265QvgalPayload(flatBufferBuilder, callProfile.h265QvgaLPayloadType);
        MediaConfig.addH265VgaPayload(flatBufferBuilder, callProfile.h265VgaPayloadType);
        MediaConfig.addH265VgalPayload(flatBufferBuilder, callProfile.h265VgaLPayloadType);
        MediaConfig.addH265Hd720pPayload(flatBufferBuilder, callProfile.h265Hd720pPayloadType);
        MediaConfig.addH265Hd720plPayload(flatBufferBuilder, callProfile.h265Hd720pLPayloadType);
        MediaConfig.addH264720pPayload(flatBufferBuilder, callProfile.h264720pPayloadType);
        MediaConfig.addH264720plPayload(flatBufferBuilder, callProfile.h264720pLPayloadType);
        MediaConfig.addH264VgaPayload(flatBufferBuilder, callProfile.h264VgaPayloadType);
        MediaConfig.addH264VgalPayload(flatBufferBuilder, callProfile.h264VgaLPayloadType);
        MediaConfig.addH264QvgaPayload(flatBufferBuilder, callProfile.h264QvgaPayloadType);
        MediaConfig.addH264QvgalPayload(flatBufferBuilder, callProfile.h264QvgaLPayloadType);
        MediaConfig.addH264CifPayload(flatBufferBuilder, callProfile.h264CifPayloadType);
        MediaConfig.addH264CiflPayload(flatBufferBuilder, callProfile.h264CifLPayloadType);
        MediaConfig.addVideoAs(flatBufferBuilder, callProfile.videoAs);
        MediaConfig.addVideoRs(flatBufferBuilder, callProfile.videoRs);
        MediaConfig.addVideoRr(flatBufferBuilder, callProfile.videoRr);
        MediaConfig.addTextAs(flatBufferBuilder, callProfile.textAs);
        MediaConfig.addTextRs(flatBufferBuilder, callProfile.textRs);
        MediaConfig.addTextRr(flatBufferBuilder, callProfile.textRr);
        MediaConfig.addTextPort(flatBufferBuilder, callProfile.textPort);
        MediaConfig.addAudioAvpf(flatBufferBuilder, callProfile.audioAvpf);
        MediaConfig.addAudioSrtp(flatBufferBuilder, callProfile.audioSrtp);
        MediaConfig.addVideoAvpf(flatBufferBuilder, callProfile.videoAvpf);
        MediaConfig.addVideoSrtp(flatBufferBuilder, callProfile.videoSrtp);
        MediaConfig.addTextAvpf(flatBufferBuilder, callProfile.textAvpf);
        MediaConfig.addTextSrtp(flatBufferBuilder, callProfile.textSrtp);
        MediaConfig.addVideoCapabilities(flatBufferBuilder, callProfile.videoCapabilities);
        MediaConfig.addEnableScr(flatBufferBuilder, callProfile.enableScr);
        MediaConfig.addRtpTimeout(flatBufferBuilder, callProfile.rtpTimeout);
        MediaConfig.addRtcpTimeout(flatBufferBuilder, callProfile.rtcpTimeout);
        MediaConfig.addH263QcifPayload(flatBufferBuilder, callProfile.h263QcifPayloadType);
        MediaConfig.addUseSpsForH264Hd(flatBufferBuilder, callProfile.useSpsForH264Hd);
        MediaConfig.addAudioRtcpXr(flatBufferBuilder, callProfile.audioRtcpXr);
        MediaConfig.addVideoRtcpXr(flatBufferBuilder, callProfile.videoRtcpXr);
        MediaConfig.addDtmfMode(flatBufferBuilder, callProfile.dtmfMode);
        MediaConfig.addEnableEvsCodec(flatBufferBuilder, callProfile.enableEvsCodec);
        MediaConfig.addEvsDiscontinuousTransmission(flatBufferBuilder, createString10);
        MediaConfig.addEvsDtxRecv(flatBufferBuilder, createString11);
        MediaConfig.addEvsHeaderFull(flatBufferBuilder, createString12);
        MediaConfig.addEvsModeSwitch(flatBufferBuilder, createString13);
        MediaConfig.addEvsChannelSend(flatBufferBuilder, createString14);
        MediaConfig.addEvsChannelRecv(flatBufferBuilder, createString15);
        MediaConfig.addEvsChannelAwareReceive(flatBufferBuilder, createString16);
        MediaConfig.addEvsCodecModeRequest(flatBufferBuilder, createString17);
        MediaConfig.addEvsBitRateSend(flatBufferBuilder, createString18);
        MediaConfig.addEvsBitRateReceive(flatBufferBuilder, createString19);
        MediaConfig.addEvsBandwidthSend(flatBufferBuilder, createString20);
        MediaConfig.addEvsBandwidthReceive(flatBufferBuilder, createString21);
        MediaConfig.addEvsPayload(flatBufferBuilder, callProfile.evsPayload);
        MediaConfig.addEvs2ndPayload(flatBufferBuilder, callProfile.evs2ndPayload);
        MediaConfig.addEvsDefaultBandwidth(flatBufferBuilder, createString22);
        MediaConfig.addEvsDefaultBitrate(flatBufferBuilder, createString23);
        MediaConfig.addEnableRtcpOnActiveCall(flatBufferBuilder, callProfile.enableRtcpOnActiveCall);
        MediaConfig.addEnableAvSync(flatBufferBuilder, callProfile.enableAvSync);
        MediaConfig.addDisplayFormatHevc(flatBufferBuilder, createString24);
        MediaConfig.addH264720pPayload(flatBufferBuilder, callProfile.h264720pPayloadType);
        MediaConfig.addH264720plPayload(flatBufferBuilder, callProfile.h264720pLPayloadType);
        MediaConfig.addIgnoreRtcpTimeoutOnHoldCall(flatBufferBuilder, callProfile.ignoreRtcpTimeoutOnHoldCall);
        MediaConfig.addEvsPayloadExt(flatBufferBuilder, callProfile.evsPayloadExt);
        MediaConfig.addEvsBitRateSendExt(flatBufferBuilder, createString25);
        MediaConfig.addEvsBitRateReceiveExt(flatBufferBuilder, createString26);
        MediaConfig.addEvsBandwidthSendExt(flatBufferBuilder, createString27);
        MediaConfig.addEvsBandwidthReceiveExt(flatBufferBuilder, createString28);
        MediaConfig.addEvsLimitedCodec(flatBufferBuilder, createString29);
        MediaConfig.addEvsUseDefaultRtcpBw(flatBufferBuilder, callProfile.evsUseDefaultRtcpBw);
        return MediaConfig.endMediaConfig(flatBufferBuilder);
    }

    private static int addCmcParameters(FlatBufferBuilder flatBufferBuilder, UaProfile uaProfile) {
        CmcProfile cmcProfile = uaProfile.getCmcProfile();
        int createString = flatBufferBuilder.createString(cmcProfile.getCmcRelayType() == null ? "" : cmcProfile.getCmcRelayType());
        int createString2 = flatBufferBuilder.createString(cmcProfile.getCmcEmergencyNumbers() != null ? cmcProfile.getCmcEmergencyNumbers() : "");
        List<String> hotspotAddresses = cmcProfile.getHotspotAddresses();
        int createHotspotAddressesVector = hotspotAddresses == null ? -1 : CmcConfig.createHotspotAddressesVector(flatBufferBuilder, StackRequestBuilderUtil.getStringOffsetArray(flatBufferBuilder, hotspotAddresses, hotspotAddresses.size()));
        CmcConfig.startCmcConfig(flatBufferBuilder);
        CmcConfig.addCmcType(flatBufferBuilder, cmcProfile.getCmcType());
        CmcConfig.addCmcRelayType(flatBufferBuilder, createString);
        CmcConfig.addCmcEmergencyNumbers(flatBufferBuilder, createString2);
        CmcConfig.addSupportDualSimCmc(flatBufferBuilder, cmcProfile.getSupportDualSimCmc());
        if (createHotspotAddressesVector != -1) {
            CmcConfig.addHotspotAddresses(flatBufferBuilder, createHotspotAddressesVector);
        }
        return CmcConfig.endCmcConfig(flatBufferBuilder);
    }

    static StackRequest makeCreateUA(UaProfile uaProfile) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int addUaCreationReq = addUaCreationReq(flatBufferBuilder, uaProfile);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 102);
        Request.addReqType(flatBufferBuilder, (byte) 2);
        Request.addReq(flatBufferBuilder, addUaCreationReq);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    private static int deleteUaReq(FlatBufferBuilder flatBufferBuilder, long j) {
        RequestUADeletion.startRequestUADeletion(flatBufferBuilder);
        RequestUADeletion.addHandle(flatBufferBuilder, j);
        return RequestUADeletion.endRequestUADeletion(flatBufferBuilder);
    }

    static StackRequest makeDeleteUA(int i) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int deleteUaReq = deleteUaReq(flatBufferBuilder, i);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 103);
        Request.addReqType(flatBufferBuilder, (byte) 3);
        Request.addReq(flatBufferBuilder, deleteUaReq);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    private static int registrationReq(int i, FlatBufferBuilder flatBufferBuilder, String str, int i2, int i3, List<String> list, List<String> list2, Capabilities capabilities, List<String> list3, String str2, String str3, boolean z, String str4, boolean z2) {
        int i4;
        int createPcscfAddrListVector = str != null ? RequestRegistration.createPcscfAddrListVector(flatBufferBuilder, new int[]{flatBufferBuilder.createString(str)}) : -1;
        int createServiceListVector = list != null ? RequestRegistration.createServiceListVector(flatBufferBuilder, StackRequestBuilderUtil.getStringOffsetArray(flatBufferBuilder, list, list.size())) : -1;
        int createImpuListVector = list2 != null ? RequestRegistration.createImpuListVector(flatBufferBuilder, StackRequestBuilderUtil.getStringOffsetArray(flatBufferBuilder, list2, list2.size())) : -1;
        int createThirdpartyFeatureListVector = list3 != null ? RequestRegistration.createThirdpartyFeatureListVector(flatBufferBuilder, StackRequestBuilderUtil.getStringOffsetArray(flatBufferBuilder, list3, list3.size())) : -1;
        int createString = str2 != null ? flatBufferBuilder.createString(str2) : -1;
        if (capabilities != null) {
            List<Integer> translateFeatureTag = StackRequestBuilderUtil.translateFeatureTag(capabilities.getFeature());
            int[] iArr = new int[translateFeatureTag.size()];
            Iterator<Integer> it = translateFeatureTag.iterator();
            int i5 = 0;
            while (it.hasNext()) {
                iArr[i5] = it.next().intValue();
                i5++;
            }
            i4 = RequestUACreation.createFeatureTagListVector(flatBufferBuilder, iArr);
        } else {
            i4 = -1;
        }
        int createString2 = str3 != null ? flatBufferBuilder.createString(str3) : -1;
        int createString3 = str4 != null ? flatBufferBuilder.createString(str4) : -1;
        RequestRegistration.startRequestRegistration(flatBufferBuilder);
        RequestRegistration.addHandle(flatBufferBuilder, i);
        RequestRegistration.addRegExp(flatBufferBuilder, i3);
        if (i4 != -1) {
            RequestRegistration.addFeatureTagList(flatBufferBuilder, i4);
        }
        if (createPcscfAddrListVector != -1) {
            RequestRegistration.addPcscfAddrList(flatBufferBuilder, createPcscfAddrListVector);
        }
        if (createServiceListVector != -1) {
            RequestRegistration.addServiceList(flatBufferBuilder, createServiceListVector);
        }
        if (createImpuListVector != -1) {
            RequestRegistration.addImpuList(flatBufferBuilder, createImpuListVector);
        }
        if (list3 != null) {
            RequestRegistration.addThirdpartyFeatureList(flatBufferBuilder, createThirdpartyFeatureListVector);
        }
        if (str2 != null) {
            RequestRegistration.addAccessToken(flatBufferBuilder, createString);
        }
        if (str3 != null) {
            RequestRegistration.addAuthServerUrl(flatBufferBuilder, createString2);
        }
        if (str4 != null) {
            RequestRegistration.addImMsgTech(flatBufferBuilder, createString3);
        }
        RequestRegistration.addPcscfPort(flatBufferBuilder, i2);
        RequestRegistration.addSingleRegiEnabled(flatBufferBuilder, z);
        RequestRegistration.addAddMmtelCallcomposerTag(flatBufferBuilder, z2);
        return RequestRegistration.endRequestRegistration(flatBufferBuilder);
    }

    static StackRequest makeRegister(int i, String str, int i2, int i3, List<String> list, List<String> list2, Capabilities capabilities, List<String> list3, String str2, String str3, boolean z, String str4, boolean z2) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int registrationReq = registrationReq(i, flatBufferBuilder, str, i2, i3, list, list2, capabilities, list3, str2, str3, z, str4, z2);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 104);
        Request.addReqType(flatBufferBuilder, (byte) 4);
        Request.addReq(flatBufferBuilder, registrationReq);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    private static int signDigestResponse(FlatBufferBuilder flatBufferBuilder, long j, String str) {
        int createString = flatBufferBuilder.createString(str);
        RequestUpdateSignDigestRequest.startRequestUpdateSignDigestRequest(flatBufferBuilder);
        RequestUpdateSignDigestRequest.addHandle(flatBufferBuilder, j);
        RequestUpdateSignDigestRequest.addResponse(flatBufferBuilder, createString);
        return RequestUpdateSignDigestRequest.endRequestUpdateSignDigestRequest(flatBufferBuilder);
    }

    private static int akaAuthInfoReq(FlatBufferBuilder flatBufferBuilder, long j, int i, String str) {
        int createString = flatBufferBuilder.createString(str);
        RequestUpdateAkaResp.startRequestUpdateAkaResp(flatBufferBuilder);
        RequestUpdateAkaResp.addHandle(flatBufferBuilder, j);
        RequestUpdateAkaResp.addRecvMng(flatBufferBuilder, i);
        RequestUpdateAkaResp.addAkaResp(flatBufferBuilder, createString);
        return RequestUpdateAkaResp.endRequestUpdateAkaResp(flatBufferBuilder);
    }

    static StackRequest makeSendSignDigestResponse(int i, String str) {
        Log.i(LOG_TAG, "makeSendSignDigestResponse: handle " + i);
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int signDigestResponse = signDigestResponse(flatBufferBuilder, (long) i, str);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_UPDATE_SIGN_DIGEST_RESPONSE);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_update_sign_digest_response);
        Request.addReq(flatBufferBuilder, signDigestResponse);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeSendAuthResponse(int i, int i2, String str) {
        Log.i(LOG_TAG, "sendAuthResponse: handle " + i + " tid " + i2 + " response " + str);
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int akaAuthInfoReq = akaAuthInfoReq(flatBufferBuilder, (long) i, i2, str);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 105);
        Request.addReqType(flatBufferBuilder, (byte) 5);
        Request.addReq(flatBufferBuilder, akaAuthInfoReq);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeSendDnsQuery(int i, String str, String str2, List<String> list, String str3, String str4, String str5, long j) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = !TextUtils.isEmpty(str5) ? flatBufferBuilder.createString(str5) : -1;
        int createString2 = !TextUtils.isEmpty(str4) ? flatBufferBuilder.createString(str4) : -1;
        int createString3 = !TextUtils.isEmpty(str3) ? flatBufferBuilder.createString(str3) : -1;
        int createString4 = !TextUtils.isEmpty(str2) ? flatBufferBuilder.createString(str2) : -1;
        int createString5 = !TextUtils.isEmpty(str) ? flatBufferBuilder.createString(str) : -1;
        int size = list.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = flatBufferBuilder.createString(list.get(i2));
        }
        int createDnsServerListVector = RequestDnsQuery.createDnsServerListVector(flatBufferBuilder, iArr);
        RequestDnsQuery.startRequestDnsQuery(flatBufferBuilder);
        if (createString != -1) {
            RequestDnsQuery.addFamily(flatBufferBuilder, createString);
        }
        if (createString2 != -1) {
            RequestDnsQuery.addTransport(flatBufferBuilder, createString2);
        }
        if (createString3 != -1) {
            RequestDnsQuery.addType(flatBufferBuilder, createString3);
        }
        RequestDnsQuery.addDnsServerList(flatBufferBuilder, createDnsServerListVector);
        if (createString4 != -1) {
            RequestDnsQuery.addHostname(flatBufferBuilder, createString4);
        }
        if (createString5 != -1) {
            RequestDnsQuery.addInterfaceNw(flatBufferBuilder, createString5);
        }
        RequestDnsQuery.addHandle(flatBufferBuilder, i);
        RequestDnsQuery.addNetId(flatBufferBuilder, j);
        int endRequestDnsQuery = RequestDnsQuery.endRequestDnsQuery(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 106);
        Request.addReqType(flatBufferBuilder, (byte) 69);
        Request.addReq(flatBufferBuilder, endRequestDnsQuery);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    private static int preferredImpuReq(FlatBufferBuilder flatBufferBuilder, long j, String str) {
        int createString = flatBufferBuilder.createString(str);
        RequestSetPreferredImpu.startRequestSetPreferredImpu(flatBufferBuilder);
        RequestSetPreferredImpu.addHandle(flatBufferBuilder, j);
        RequestSetPreferredImpu.addImpu(flatBufferBuilder, createString);
        return RequestSetPreferredImpu.endRequestSetPreferredImpu(flatBufferBuilder);
    }

    static StackRequest makeSetPreferredImpu(int i, String str) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int preferredImpuReq = preferredImpuReq(flatBufferBuilder, i, str);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 107);
        Request.addReqType(flatBufferBuilder, (byte) 6);
        Request.addReq(flatBufferBuilder, preferredImpuReq);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    private static int networkSuspendReq(FlatBufferBuilder flatBufferBuilder, long j, boolean z) {
        RequestNetworkSuspended.startRequestNetworkSuspended(flatBufferBuilder);
        RequestNetworkSuspended.addHandle(flatBufferBuilder, j);
        RequestNetworkSuspended.addState(flatBufferBuilder, z);
        return RequestNetworkSuspended.endRequestNetworkSuspended(flatBufferBuilder);
    }

    static StackRequest makeNetworkSuspended(int i, boolean z) {
        Log.i(LOG_TAG, "register: handle " + i + " state " + z);
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int networkSuspendReq = networkSuspendReq(flatBufferBuilder, (long) i, z);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 108);
        Request.addReqType(flatBufferBuilder, (byte) 7);
        Request.addReq(flatBufferBuilder, networkSuspendReq);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeRequestUpdateFeatureTag(int i, long j) {
        Log.i(LOG_TAG, "requestUpdateFeatureTag");
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        List<Integer> translateFeatureTag = StackRequestBuilderUtil.translateFeatureTag(j);
        int size = translateFeatureTag.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = translateFeatureTag.get(i2).intValue();
        }
        int createFeatureTagListVector = RequestUpdateFeatureTag.createFeatureTagListVector(flatBufferBuilder, iArr);
        RequestUpdateFeatureTag.startRequestUpdateFeatureTag(flatBufferBuilder);
        RequestUpdateFeatureTag.addFeatureTagList(flatBufferBuilder, createFeatureTagListVector);
        RequestUpdateFeatureTag.addHandle(flatBufferBuilder, i);
        int endRequestUpdateFeatureTag = RequestUpdateFeatureTag.endRequestUpdateFeatureTag(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 109);
        Request.addReqType(flatBufferBuilder, (byte) 12);
        Request.addReq(flatBufferBuilder, endRequestUpdateFeatureTag);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeUpdateVceConfig(int i, boolean z) {
        Log.i(LOG_TAG, "updateVceConfig: handle: " + i + ", vceEnabled: " + z);
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestUpdateVceConfig.startRequestUpdateVceConfig(flatBufferBuilder);
        RequestUpdateVceConfig.addHandle(flatBufferBuilder, (long) i);
        RequestUpdateVceConfig.addVceConfig(flatBufferBuilder, z);
        int endRequestUpdateVceConfig = RequestUpdateVceConfig.endRequestUpdateVceConfig(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 110);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_update_vce_config);
        Request.addReq(flatBufferBuilder, endRequestUpdateVceConfig);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeSetTextMode(int i, int i2) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestSetTextMode.startRequestSetTextMode(flatBufferBuilder);
        RequestSetTextMode.addTextMode(flatBufferBuilder, i2);
        RequestSetTextMode.addPhoneId(flatBufferBuilder, i);
        int endRequestSetTextMode = RequestSetTextMode.endRequestSetTextMode(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 112);
        Request.addReqType(flatBufferBuilder, (byte) 9);
        Request.addReq(flatBufferBuilder, endRequestSetTextMode);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeUpdateXqEnable(int i, boolean z) {
        Log.i(LOG_TAG + "[" + i + "]", "updateXqEnable():  enable: " + z);
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestUpdateXqEnable.startRequestUpdateXqEnable(flatBufferBuilder);
        RequestUpdateXqEnable.addPhoneId(flatBufferBuilder, (long) i);
        RequestUpdateXqEnable.addEnable(flatBufferBuilder, z);
        int endRequestUpdateXqEnable = RequestUpdateXqEnable.endRequestUpdateXqEnable(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 114);
        Request.addReqType(flatBufferBuilder, (byte) 11);
        Request.addReq(flatBufferBuilder, endRequestUpdateXqEnable);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeUpdateServiceVersion(int i, HashMap<String, String> hashMap) {
        Log.i(LOG_TAG + "[" + i + "]", "updateServiceVersion:phoneId:" + i);
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            Log.i(LOG_TAG + "[" + i + "]", entry.getKey() + " : " + entry.getValue());
        }
        int i2 = 0;
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        List<Integer> translateExtraHeader = StackRequestBuilderUtil.translateExtraHeader(flatBufferBuilder, hashMap);
        int[] iArr = new int[translateExtraHeader.size()];
        Iterator<Integer> it = translateExtraHeader.iterator();
        while (it.hasNext()) {
            iArr[i2] = it.next().intValue();
            i2++;
        }
        int createPairVector = ExtraHeader.createPairVector(flatBufferBuilder, iArr);
        ExtraHeader.startExtraHeader(flatBufferBuilder);
        ExtraHeader.addPair(flatBufferBuilder, createPairVector);
        int endExtraHeader = ExtraHeader.endExtraHeader(flatBufferBuilder);
        ServiceVersionConfig.startServiceVersionConfig(flatBufferBuilder);
        ServiceVersionConfig.addExtraHeaders(flatBufferBuilder, endExtraHeader);
        int endServiceVersionConfig = ServiceVersionConfig.endServiceVersionConfig(flatBufferBuilder);
        RequestUpdateCommonConfig.startRequestUpdateCommonConfig(flatBufferBuilder);
        RequestUpdateCommonConfig.addConfigType(flatBufferBuilder, (byte) 5);
        RequestUpdateCommonConfig.addPhoneId(flatBufferBuilder, i);
        RequestUpdateCommonConfig.addConfig(flatBufferBuilder, endServiceVersionConfig);
        int endRequestUpdateCommonConfig = RequestUpdateCommonConfig.endRequestUpdateCommonConfig(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 101);
        Request.addReqType(flatBufferBuilder, (byte) 1);
        Request.addReq(flatBufferBuilder, endRequestUpdateCommonConfig);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeConfigRCS(int i, RcsConfig rcsConfig) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(rcsConfig.getConfUri());
        int createString2 = flatBufferBuilder.createString(rcsConfig.getDownloadsPath());
        int createString3 = flatBufferBuilder.createString(rcsConfig.getExploderUri());
        int createString4 = flatBufferBuilder.createString(rcsConfig.getEndUserConfReqId());
        int createString5 = flatBufferBuilder.createString(rcsConfig.getSupportBotVersions());
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.startRcsConfig(flatBufferBuilder);
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.addRcsFtChunkSize(flatBufferBuilder, rcsConfig.getFtChunkSize());
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.addRcsIshChunkSize(flatBufferBuilder, rcsConfig.getIshChunkSize());
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.addConfUri(flatBufferBuilder, createString);
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.addIsMsrpCema(flatBufferBuilder, rcsConfig.isMsrpCema());
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.addDownloadsPath(flatBufferBuilder, createString2);
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.addIsConfSubscribeEnabled(flatBufferBuilder, rcsConfig.isConfSubscribeEnabled());
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.addExploderUri(flatBufferBuilder, createString3);
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.addPagerModeSizeLimit(flatBufferBuilder, rcsConfig.getPagerModeLimit());
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.addUseMsrpDiscardPort(flatBufferBuilder, rcsConfig.isUseMsrpDiscardPort());
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.addIsAggrImdnSupported(flatBufferBuilder, rcsConfig.isAggrImdnSupported());
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.addIsCbPrivacyDisable(flatBufferBuilder, rcsConfig.isPrivacyDisable());
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.addCbMsgTech(flatBufferBuilder, rcsConfig.getCbMsgTech());
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.addEndUserConfReqId(flatBufferBuilder, createString4);
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.addSupportedBotVersions(flatBufferBuilder, createString5);
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.addSupportCancelMessage(flatBufferBuilder, rcsConfig.getSupportCancelMessage());
        com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.addSupportRealtimeUserAlias(flatBufferBuilder, rcsConfig.getSupportRealtimeUserAlias());
        int endRcsConfig = com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateCommonConfig_.RcsConfig.endRcsConfig(flatBufferBuilder);
        RequestUpdateCommonConfig.startRequestUpdateCommonConfig(flatBufferBuilder);
        RequestUpdateCommonConfig.addConfigType(flatBufferBuilder, (byte) 4);
        RequestUpdateCommonConfig.addConfig(flatBufferBuilder, endRcsConfig);
        RequestUpdateCommonConfig.addPhoneId(flatBufferBuilder, i);
        int endRequestUpdateCommonConfig = RequestUpdateCommonConfig.endRequestUpdateCommonConfig(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 101);
        Request.addReqType(flatBufferBuilder, (byte) 1);
        Request.addReq(flatBufferBuilder, endRequestUpdateCommonConfig);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeUpdateScreenOnOff(int i, int i2) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        ScreenConfig.startScreenConfig(flatBufferBuilder);
        ScreenConfig.addOn(flatBufferBuilder, i2);
        int endScreenConfig = ScreenConfig.endScreenConfig(flatBufferBuilder);
        RequestUpdateCommonConfig.startRequestUpdateCommonConfig(flatBufferBuilder);
        RequestUpdateCommonConfig.addConfigType(flatBufferBuilder, (byte) 6);
        RequestUpdateCommonConfig.addConfig(flatBufferBuilder, endScreenConfig);
        RequestUpdateCommonConfig.addPhoneId(flatBufferBuilder, i);
        int endRequestUpdateCommonConfig = RequestUpdateCommonConfig.endRequestUpdateCommonConfig(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 101);
        Request.addReqType(flatBufferBuilder, (byte) 1);
        Request.addReq(flatBufferBuilder, endRequestUpdateCommonConfig);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    private static int imeiReq(int i, FlatBufferBuilder flatBufferBuilder, String str) {
        int createString = flatBufferBuilder.createString(str);
        RegiConfig.startRegiConfig(flatBufferBuilder);
        RegiConfig.addImei(flatBufferBuilder, createString);
        int endRegiConfig = RegiConfig.endRegiConfig(flatBufferBuilder);
        RequestUpdateCommonConfig.startRequestUpdateCommonConfig(flatBufferBuilder);
        RequestUpdateCommonConfig.addConfigType(flatBufferBuilder, (byte) 1);
        RequestUpdateCommonConfig.addConfig(flatBufferBuilder, endRegiConfig);
        RequestUpdateCommonConfig.addPhoneId(flatBufferBuilder, i);
        return RequestUpdateCommonConfig.endRequestUpdateCommonConfig(flatBufferBuilder);
    }

    static StackRequest makeConfigRegistration(int i, String str) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int imeiReq = imeiReq(i, flatBufferBuilder, str);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 101);
        Request.addReqType(flatBufferBuilder, (byte) 1);
        Request.addReq(flatBufferBuilder, imeiReq);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }

    static StackRequest makeConfigCall(int i, boolean z, boolean z2, boolean z3) {
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        CallConfig.startCallConfig(flatBufferBuilder);
        CallConfig.addTtySessionRequired(flatBufferBuilder, z);
        CallConfig.addAutomaticMode(flatBufferBuilder, z3);
        CallConfig.addRttSessionRequired(flatBufferBuilder, z2);
        int endCallConfig = CallConfig.endCallConfig(flatBufferBuilder);
        RequestUpdateCommonConfig.startRequestUpdateCommonConfig(flatBufferBuilder);
        RequestUpdateCommonConfig.addConfigType(flatBufferBuilder, (byte) 3);
        RequestUpdateCommonConfig.addConfig(flatBufferBuilder, endCallConfig);
        RequestUpdateCommonConfig.addPhoneId(flatBufferBuilder, i);
        int endRequestUpdateCommonConfig = RequestUpdateCommonConfig.endRequestUpdateCommonConfig(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 101);
        Request.addReqType(flatBufferBuilder, (byte) 1);
        Request.addReq(flatBufferBuilder, endRequestUpdateCommonConfig);
        return new StackRequest(flatBufferBuilder, Request.endRequest(flatBufferBuilder));
    }
}
