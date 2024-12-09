package com.sec.internal.ims.core.handler.secims;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SemSystemProperties;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.options.Capabilities;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.NameAddr;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.config.RcsConfig;
import com.sec.internal.constants.ims.core.PaniConstants;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.gls.LocationInfo;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.SystemWrapper;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.core.RegisterTask;
import com.sec.internal.ims.core.SlotBasedConfig;
import com.sec.internal.ims.core.cmc.CmcRegiConfigBuilder;
import com.sec.internal.ims.core.handler.RegistrationHandler;
import com.sec.internal.ims.core.handler.secims.CallProfile;
import com.sec.internal.ims.core.handler.secims.CmcProfile;
import com.sec.internal.ims.core.handler.secims.ResipRegistrationManager;
import com.sec.internal.ims.core.handler.secims.UaProfile;
import com.sec.internal.ims.core.handler.secims.UserAgent;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.Cert;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.X509CertVerifyRequest;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.euc.test.EucTestIntent;
import com.sec.internal.ims.servicemodules.im.ImConfig;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.SemTelephonyAdapter;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.core.IGeolocationController;
import com.sec.internal.interfaces.ims.core.IPdnController;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.interfaces.ims.core.IRegistrationHandlerNotifiable;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.core.IUserAgent;
import com.sec.internal.interfaces.ims.servicemodules.im.IImModule;
import com.sec.internal.log.IMSLog;
import com.sec.internal.log.IMSLogTimer;
import java.io.ByteArrayInputStream;
import java.lang.reflect.InvocationTargetException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

/* loaded from: classes.dex */
public class ResipRegistrationManager extends RegistrationHandler {
    private static final String LOG_TAG = "ResipRegiMgr";
    private static final boolean SHIP_BUILD = IMSLog.isShipBuild();
    protected Context mContext;
    protected SimpleEventLog mEventLog;
    protected IImsFramework mImsFramework;
    protected PaniGenerator mPaniGenerator;
    protected IPdnController mPdnController;
    protected IRegistrationHandlerNotifiable mRegistrationHandler;
    protected List<ISimManager> mSimManagers;
    protected ITelephonyManager mTelephonyManager;
    protected Handler mUaHandler;
    protected HandlerThread mUaHandlerThread;
    protected final Map<Integer, UserAgent> mUaList;

    public ResipRegistrationManager(Looper looper, Context context, IImsFramework iImsFramework) {
        super(looper);
        this.mUaHandler = null;
        this.mUaHandlerThread = null;
        this.mUaList = new ConcurrentHashMap();
        this.mContext = context;
        this.mImsFramework = iImsFramework;
        this.mTelephonyManager = TelephonyManagerWrapper.getInstance(context);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void setEventLog(SimpleEventLog simpleEventLog) {
        this.mEventLog = simpleEventLog;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void setRegistrationHandler(IRegistrationHandlerNotifiable iRegistrationHandlerNotifiable) {
        this.mRegistrationHandler = iRegistrationHandlerNotifiable;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void setSimManagers(List<ISimManager> list) {
        this.mSimManagers = list;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void setPdnController(IPdnController iPdnController) {
        this.mPdnController = iPdnController;
    }

    @Override // com.sec.internal.ims.core.handler.BaseHandler
    public void init() {
        HandlerThread handlerThread = new HandlerThread("UaHandler");
        this.mUaHandlerThread = handlerThread;
        handlerThread.start();
        this.mUaHandler = new Handler(this.mUaHandlerThread.getLooper());
        this.mPaniGenerator = new PaniGenerator(this.mContext, this.mPdnController);
        StackIF.getInstance().registerUaListener(0, new StackEventListener() { // from class: com.sec.internal.ims.core.handler.secims.ResipRegistrationManager.1
            @Override // com.sec.internal.ims.core.handler.secims.StackEventListener
            public void onX509CertVerifyRequested(X509CertVerifyRequest x509CertVerifyRequest) {
                Log.i(ResipRegistrationManager.LOG_TAG, "onX509CertVerifyRequested");
                ArrayList arrayList = new ArrayList();
                try {
                    CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                    for (int i = 0; i < x509CertVerifyRequest.certLength(); i++) {
                        Cert cert = x509CertVerifyRequest.cert(i);
                        int certDataLength = cert != null ? cert.certDataLength() : 0;
                        byte[] bArr = new byte[certDataLength];
                        for (int i2 = 0; i2 < certDataLength; i2++) {
                            bArr[i2] = (byte) cert.certData(i2);
                        }
                        X509Certificate x509Certificate = (X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(bArr));
                        arrayList.add(x509Certificate);
                        IMSLog.s(ResipRegistrationManager.LOG_TAG, "Subject: " + x509Certificate.getSubjectDN().toString() + ", Issuer: " + x509Certificate.getIssuerDN().toString());
                    }
                } catch (CertificateException e) {
                    Log.i(ResipRegistrationManager.LOG_TAG, "something wrong with certificate", e);
                }
                ResipRegistrationManager.this.mRegistrationHandler.notifyX509CertVerificationRequested((X509Certificate[]) arrayList.toArray(new X509Certificate[0]));
            }

            @Override // com.sec.internal.ims.core.handler.secims.StackEventListener
            public void onDnsResponse(String str, List<String> list, int i, int i2) {
                IMSLog.s(ResipRegistrationManager.LOG_TAG, "onDnsResponse: hostname " + str + " ipAddrList " + list + " port " + i + ", handle " + i2);
                ResipRegistrationManager.this.mRegistrationHandler.notifyDnsResponse(list, i, i2);
            }
        });
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public boolean registerInternal(IRegisterTask iRegisterTask, String str, String str2, Set<String> set, Capabilities capabilities, String str3, String str4, String str5, String str6, String str7, List<String> list, Bundle bundle, Bundle bundle2, boolean z) {
        int phoneId = iRegisterTask.getPhoneId();
        StringBuilder sb = new StringBuilder();
        sb.append("registerInternal: task=");
        sb.append(iRegisterTask);
        sb.append(" pcscf=");
        sb.append(!SHIP_BUILD ? str2 : "");
        sb.append(" services=");
        sb.append(set);
        sb.append(" reason=");
        sb.append(iRegisterTask.getReason());
        IMSLog.i(LOG_TAG, phoneId, sb.toString());
        ImsProfile profile = iRegisterTask.getProfile();
        configureRCS(iRegisterTask);
        int registrationInfoId = IRegistrationManager.getRegistrationInfoId(profile.getId(), phoneId);
        UserAgent userAgent = this.mUaList.get(Integer.valueOf(registrationInfoId));
        if (userAgent == null) {
            IMSLog.i(LOG_TAG, phoneId, "register: creating UserAgent.");
            UserAgent createUserAgent = createUserAgent(iRegisterTask, str, str2, set, capabilities, str3, str4, str5, str6, str7, bundle, bundle2, this.mRegistrationHandler);
            if (createUserAgent != null) {
                this.mUaList.put(Integer.valueOf(registrationInfoId), createUserAgent);
                iRegisterTask.setUserAgent(createUserAgent);
                iRegisterTask.setState(RegistrationConstants.RegisterTaskState.REGISTERING);
                iRegisterTask.setRegiRequestType(DiagnosisConstants.REGI_REQC.INITIAL);
                if (profile.getPdnType() == 11) {
                    IMSLogTimer.setVolteRegisterStartTime(phoneId);
                    IMSLog.lazer(iRegisterTask, "SEND SIP REGISTER <+" + ((IMSLogTimer.getVolteRegisterStartTime(phoneId) - IMSLogTimer.getPdnEndTime(phoneId)) / 1000.0d) + "s>");
                } else {
                    IMSLog.lazer(iRegisterTask, "SEND SIP REGISTER");
                }
                if (iRegisterTask.getProfile().hasEmergencySupport()) {
                    return true;
                }
                this.mRegistrationHandler.notifyTriggeringRecoveryAction(iRegisterTask, iRegisterTask.getProfile().getTimerF() * 2);
                return true;
            }
            IMSLog.e(LOG_TAG, phoneId, "register: fail creating UserAgent.");
            return false;
        }
        UaProfile uaProfile = userAgent.getUaProfile();
        if (str2 != null) {
            uaProfile.setPcscfIp(str2);
        }
        Log.i(LOG_TAG, "register: Re-Register with new services=" + set);
        iRegisterTask.setRegiRequestType(DiagnosisConstants.REGI_REQC.RE_REGI);
        if (profile.hasEmergencySupport()) {
            if (set.contains("mmtel-video")) {
                capabilities.addFeature(Capabilities.getTagFeature(Capabilities.FEATURE_TAG_MMTEL_VIDEO));
                capabilities.addFeature(Capabilities.getTagFeature(Capabilities.FEATURE_TAG_MMTEL));
                this.mEventLog.logAndAdd(phoneId, iRegisterTask, "createUserAgent: add mmtel, mmtel-video to Capabilities for E-REGI");
            } else {
                capabilities.addFeature(Capabilities.getTagFeature(Capabilities.FEATURE_TAG_MMTEL));
                this.mEventLog.logAndAdd(phoneId, iRegisterTask, "createUserAgent : add mmtel to Capabilities for E-REGI");
            }
        }
        uaProfile.setOwnCapabilities(capabilities);
        uaProfile.setServiceList(new HashSet(set));
        uaProfile.setLinkedImpuList(profile.getExtImpuList());
        uaProfile.setImpu(str4);
        uaProfile.setSingleRegiEnabled(ImsUtil.isSingleRegiAppConnected(phoneId));
        if (iRegisterTask.getMno() == Mno.TMOUS) {
            uaProfile.setAddMmtelCallComposerTag(ImsUtil.isAddMmtelCallComposerTag(phoneId, this.mContext));
        }
        uaProfile.setImMsgTech(((ImConstants.ImMsgTech) Optional.ofNullable(this.mImsFramework.getServiceModuleManager().getImModule() != null ? this.mImsFramework.getServiceModuleManager().getImModule().getImConfig(phoneId) : null).map(new ResipRegistrationManager$$ExternalSyntheticLambda0()).orElse(ImConstants.ImMsgTech.SIMPLE_IM)).toString());
        if (!profile.hasEmergencySupport()) {
            userAgent.setThirdPartyFeatureTags(list);
        }
        this.mImsFramework.getServiceModuleManager().notifyReRegistering(phoneId, set);
        userAgent.register();
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void deregisterInternal(IRegisterTask iRegisterTask, boolean z) {
        int phoneId = iRegisterTask.getPhoneId();
        UserAgent userAgent = (UserAgent) iRegisterTask.getUserAgent();
        this.mEventLog.logAndAdd(phoneId, iRegisterTask, "deregisterInternal : " + iRegisterTask.getReason() + "(" + iRegisterTask.getDeregiReason() + ")");
        IMSLog.c(LogClass.REGI_DEREGISTER_INTERNAL, iRegisterTask.getPhoneId() + ",DEREGI:" + iRegisterTask.getReason() + ":" + iRegisterTask.getDeregiReason());
        ImsRegistration imsRegistration = iRegisterTask.getImsRegistration();
        boolean hasService = imsRegistration != null ? imsRegistration.hasService(SipMsg.EVENT_PRESENCE) : false;
        if (userAgent == null) {
            IMSLog.e(LOG_TAG, phoneId, "deregisterInternal: UserAgent is null, can't deregister");
            return;
        }
        userAgent.deregister(z, hasService);
        if ((iRegisterTask.getState() != RegistrationConstants.RegisterTaskState.EMERGENCY || iRegisterTask.needKeepEmergencyTask()) && !(iRegisterTask.getMno() != Mno.KDDI && iRegisterTask.getProfile().hasEmergencySupport() && iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.REGISTERING)) {
            return;
        }
        IMSLog.i(LOG_TAG, iRegisterTask.getPhoneId(), "Remove Emergency UserAgent on deregisterInternal");
        removeUserAgent(iRegisterTask);
    }

    private boolean needRemoveEmergencyUserAgent(IRegisterTask iRegisterTask, SipError sipError) {
        if (iRegisterTask.getMno() == Mno.KDDI && !iRegisterTask.getGovernor().isAnonymousEmergencyCallRequired()) {
            IMSLog.i(LOG_TAG, iRegisterTask.getPhoneId(), "Remove Emergency UserAgent to perform infinite retry");
            return true;
        }
        if (iRegisterTask.getMno() == Mno.VZW && SipErrorBase.SIP_TIMEOUT.equals(sipError) && iRegisterTask.getGovernor().getFailureCount() < 2) {
            return true;
        }
        if (iRegisterTask.getProfile().getE911RegiTime() <= 0 || !SipErrorBase.SIP_TIMEOUT.equals(sipError) || iRegisterTask.getGovernor().getFailureCount() >= iRegisterTask.getGovernor().getNumOfEmerPcscfIp()) {
            return false;
        }
        IMSLog.i(LOG_TAG, iRegisterTask.getPhoneId(), "pending Emergency Register msg, Remove Emergency UserAgent");
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void onRegisterError(IRegisterTask iRegisterTask, int i, SipError sipError, long j) {
        if (iRegisterTask.getProfile().hasEmergencySupport()) {
            if (needRemoveEmergencyUserAgent(iRegisterTask, sipError)) {
                removeUserAgent(iRegisterTask);
                return;
            }
            return;
        }
        if (iRegisterTask.getMno() == Mno.TMOUS && SipErrorBase.MISSING_P_ASSOCIATED_URI.equals(sipError)) {
            return;
        }
        if (iRegisterTask.isRefreshReg() && (iRegisterTask.getMno() == Mno.KDDI || iRegisterTask.getGovernor().needImsNotAvailable())) {
            IMSLog.i(LOG_TAG, iRegisterTask.getPhoneId(), "Dont Remove the user Agent for Refresh Reg ,Re-register to be triggered.");
            return;
        }
        UserAgent userAgent = (UserAgent) iRegisterTask.getUserAgent();
        if (userAgent != null && userAgent.getHandle() == i) {
            removeUserAgent(iRegisterTask);
            return;
        }
        if (getUserAgent(i) != null) {
            IMSLog.i(LOG_TAG, iRegisterTask.getPhoneId(), "remove user agent not in the IRegisterTask: " + i);
            UserAgent userAgent2 = getUserAgent(i);
            userAgent2.terminate();
            userAgent2.unRegisterListener();
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void onDeregistered(IRegisterTask iRegisterTask, SipError sipError, long j, boolean z) {
        removeUserAgent(iRegisterTask);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public boolean suspended(IRegisterTask iRegisterTask, boolean z) {
        if (iRegisterTask.getUserAgent() == null) {
            return false;
        }
        UserAgent userAgent = (UserAgent) iRegisterTask.getUserAgent();
        if (userAgent.getSuspendState() == z) {
            return false;
        }
        NetworkEvent networkEvent = SlotBasedConfig.getInstance(iRegisterTask.getPhoneId()).getNetworkEvent();
        SimpleEventLog simpleEventLog = this.mEventLog;
        int phoneId = iRegisterTask.getPhoneId();
        StringBuilder sb = new StringBuilder();
        sb.append(z ? "Suspend : " : "Resume : ");
        sb.append(iRegisterTask.getProfile().getName());
        sb.append(" ");
        sb.append(networkEvent);
        simpleEventLog.logAndAdd(phoneId, sb.toString());
        userAgent.suspended(z);
        if (z) {
            this.mRegistrationHandler.removeRecoveryAction();
            return true;
        }
        if (iRegisterTask.getState() != RegistrationConstants.RegisterTaskState.REGISTERING) {
            return true;
        }
        this.mRegistrationHandler.notifyTriggeringRecoveryAction(iRegisterTask, iRegisterTask.getProfile().getTimerF() * 2);
        return true;
    }

    private UaProfile.Builder configureTimerTS(ImsProfile imsProfile, UaProfile.Builder builder) {
        int i;
        Mno fromName = Mno.fromName(imsProfile.getMnoName());
        if (fromName == Mno.SPRINT) {
            i = 1000;
        } else {
            i = (fromName == Mno.KDDI || fromName == Mno.RAKUTEN_JAPAN) ? 200000 : 32000;
        }
        Log.i(LOG_TAG, "timerTS=%" + i);
        builder.setTimerTS(i);
        return builder;
    }

    private CallProfile configureMedia(ImsProfile imsProfile) {
        String str;
        Log.i(LOG_TAG, "configureMedia:");
        try {
            str = (String) Class.forName("com.sec.internal.ims.core.handler.secims.ResipMediaHandler").getMethod("getHwSupportedVideoCodecs", String.class).invoke(this.mImsFramework.getHandlerFactory().getMediaHandler(), imsProfile.getVideoCodec());
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            e.printStackTrace();
            str = "";
        }
        return CallProfile.Builder.newBuilder().setAudioCodec(imsProfile.getAudioCodec()).setAudioPort(imsProfile.getAudioPortStart()).setAudioDscp(imsProfile.getAudioDscp()).setAmrPayloadType(imsProfile.getAmrnbbePayload()).setAmrOaPayloadType(imsProfile.getAmrnboaPayload()).setAmrWbPayloadType(imsProfile.getAmrwbbePayload()).setAmrWbOaPayloadType(imsProfile.getAmrwboaPayload()).setAmrOpenPayloadType(imsProfile.getAmropenPayload()).setDtmfPayloadType(imsProfile.getDtmfNbPayload()).setDtmfWbPayloadType(imsProfile.getDtmfWbPayload()).setAmrOaMaxRed(imsProfile.getAmrnboaMaxRed()).setAmrBeMaxRed(imsProfile.getAmrnbbeMaxRed()).setAmrOaWbMaxRed(imsProfile.getAmrwboaMaxRed()).setAmrBeWbMaxRed(imsProfile.getAmrwbbeMaxRed()).setEvsMaxRed(imsProfile.getEvsMaxRed()).setAmrMode(imsProfile.getAmrnbMode()).setAmrWbMode(imsProfile.getAmrwbMode()).setAudioAs(imsProfile.getAudioAS()).setAudioRs(imsProfile.getAudioRS()).setAudioRr(imsProfile.getAudioRR()).setPTime(imsProfile.getPTime()).setMaxPTime(imsProfile.getMaxPTime()).setVideoCodec(str).setVideoPort(imsProfile.getVideoPortStart()).setFrameRate(imsProfile.getFramerate()).setDisplayFormat(imsProfile.getDisplayFormat()).setDisplayFormatHevc(imsProfile.getDisplayFormatHevc()).setPacketizationMode(imsProfile.getPacketizationMode()).setH265QvgaPayloadType(imsProfile.getH265QvgaPayload()).setH265QvgaLPayloadType(imsProfile.getH265QvgalPayload()).setH265VgaPayloadType(imsProfile.getH265VgaPayload()).setH265VgaLPayloadType(imsProfile.getH265VgalPayload()).setH265Hd720pPayloadType(imsProfile.getH265Hd720pPayload()).setH265Hd720pLPayloadType(imsProfile.getH265Hd720plPayload()).setH264720pPayloadType(imsProfile.getH264720pPayload()).setH264720pLPayloadType(imsProfile.getH264720plPayload()).setH264VgaPayloadType(imsProfile.getH264VgaPayload()).setH264VgaLPayloadType(imsProfile.getH264VgalPayload()).setH264QvgaPayloadType(imsProfile.getH264QvgaPayload()).setH264QvgaLPayloadType(imsProfile.getH264QvgalPayload()).setH264CifPayloadType(imsProfile.getH264CifPayload()).setH264CifLPayloadType(imsProfile.getH264CiflPayload()).setH263QcifPayloadType(imsProfile.getH263QcifPayload()).setUseSpsForH264Hd(imsProfile.getUseSpsForH264Hd()).setVideoAs(imsProfile.getVideoAS()).setVideoRs(imsProfile.getVideoRS()).setVideoRr(imsProfile.getVideoRR()).setTextAs(imsProfile.getTextAS()).setTextRs(imsProfile.getTextRS()).setTextRr(imsProfile.getTextRR()).setTextPort(imsProfile.getTextPort()).setAudioAvpf(imsProfile.getAudioAvpf() == 1).setAudioSrtp(imsProfile.getAudioSrtp() == 1).setVideoAvpf(imsProfile.getVideoAvpf() == 1).setVideoSrtp(imsProfile.getVideoSrtp() == 1).setTextAvpf(imsProfile.getTextAvpf() == 1).setTextSrtp(imsProfile.getTextSrtp() == 1).setVideoCapabilities(imsProfile.isSupportVideoCapabilities()).setRtpTimeout(imsProfile.getRTPTimeout()).setRtcpTimeout(imsProfile.getRTCPTimeout()).setIgnoreRtcpTimeoutOnHoldCall(imsProfile.getIgnoreRtcpTimeoutOnHoldCall()).setEnableRtcpOnActiveCall(imsProfile.getEnableRtcpOnActiveCall()).setEnableAvSync(imsProfile.getEnableAvSync()).setEnableScr(imsProfile.getEnableScr()).setAudioRtcpXr(imsProfile.getAudioRtcpXr() == 1).setVideoRtcpXr(imsProfile.getVideoRtcpXr() == 1).setDtmfMode(imsProfile.getDtmfMode()).setEnableEvsCodec(imsProfile.getEnableEvsCodec() == 1).setEvsDiscontinuousTransmission(imsProfile.getEvsDiscontinuousTransmission()).setEvsDtxRecv(imsProfile.getEvsDtxRecv()).setEvsHeaderFull(imsProfile.getEvsHeaderFull()).setEvsModeSwitch(imsProfile.getEvsModeSwitch()).setEvsChannelSend(imsProfile.getEvsChannelSend()).setEvsChannelRecv(imsProfile.getEvsChannelRecv()).setEvsChannelAwareReceive(imsProfile.getEvsChannelAwareReceive()).setEvsCodecModeRequest(imsProfile.getEvsCodecModeRequest()).setEvsBitRateSend(imsProfile.getEvsBitRateSend()).setEvsBitRateReceive(imsProfile.getEvsBitRateReceive()).setEvsBandwidthSend(imsProfile.getEvsBandwidthSend()).setEvsBandwidthReceive(imsProfile.getEvsBandwidthReceive()).setEvsPayload(imsProfile.getEvsPayload()).setEvs2ndPayload(imsProfile.getEvs2ndPayload()).setEvsDefaultBandwidth(imsProfile.getEvsDefaultBandwidth()).setEvsDefaultBitrate(imsProfile.getEvsDefaultBitrate()).setEvsPayloadExt(imsProfile.getEvsPayloadExt()).setEvsBitRateSendExt(imsProfile.getEvsBitRateSendExt()).setEvsBitRateReceiveExt(imsProfile.getEvsBitRateReceiveExt()).setEvsBandwidthSendExt(imsProfile.getEvsBandwidthSendExt()).setEvsBandwidthReceiveExt(imsProfile.getEvsBandwidthReceiveExt()).setEvsLimitedCodec(imsProfile.getEvsLimitedCodec()).setEvsUseDefaultRtcpBw(imsProfile.getEvsUseDefaultRtcpBw()).build();
    }

    private void configureCmc(ImsProfile imsProfile, UaProfile.Builder builder, Bundle bundle) {
        CmcProfile.Builder builder2 = new CmcProfile.Builder();
        builder2.setCmcType(imsProfile.getCmcType());
        if (imsProfile.isSamsungMdmnEnabled()) {
            CmcRegiConfigBuilder.BundleDataGetter bundleDataGetter = new CmcRegiConfigBuilder.BundleDataGetter(bundle);
            builder2.setAccessToken(imsProfile.getAccessToken()).setAuthServerUrl((String) bundleDataGetter.get(CmcRegiConfigBuilder.CmcRegiConfig.SA_SERVER_URL)).setCmcRelayType((String) bundleDataGetter.get(CmcRegiConfigBuilder.CmcRegiConfig.RELAY_TYPE)).setCmcEmergencyNumbers((String) bundleDataGetter.get(CmcRegiConfigBuilder.CmcRegiConfig.EMERGENCY_CALL_NUMBERS)).setSupportDualSimCmc(((Boolean) bundleDataGetter.get(CmcRegiConfigBuilder.CmcRegiConfig.SUPPORT_DUAL_SIM_CMC)).booleanValue()).setHotspotAddresses((List) bundleDataGetter.get(CmcRegiConfigBuilder.CmcRegiConfig.HOTSPOT_ADDRESSES));
        }
        builder.setCmcProfile(builder2.build());
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x03ef, code lost:
    
        if (com.sec.internal.ims.util.ImsUtil.needForceToUsePsE911(r1, r6.hasNoSim()) != false) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x09b4  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x09d7  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0a33  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0a45  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x095d  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0534  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0526  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0955  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.sec.internal.ims.core.handler.secims.UserAgent createUserAgent(com.sec.internal.interfaces.ims.core.IRegisterTask r63, java.lang.String r64, java.lang.String r65, java.util.Set<java.lang.String> r66, com.sec.ims.options.Capabilities r67, java.lang.String r68, java.lang.String r69, java.lang.String r70, java.lang.String r71, java.lang.String r72, android.os.Bundle r73, android.os.Bundle r74, com.sec.internal.interfaces.ims.core.IRegistrationHandlerNotifiable r75) {
        /*
            Method dump skipped, instructions count: 2731
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.handler.secims.ResipRegistrationManager.createUserAgent(com.sec.internal.interfaces.ims.core.IRegisterTask, java.lang.String, java.lang.String, java.util.Set, com.sec.ims.options.Capabilities, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, android.os.Bundle, android.os.Bundle, com.sec.internal.interfaces.ims.core.IRegistrationHandlerNotifiable):com.sec.internal.ims.core.handler.secims.UserAgent");
    }

    /* renamed from: com.sec.internal.ims.core.handler.secims.ResipRegistrationManager$2, reason: invalid class name */
    class AnonymousClass2 implements UserAgent.UaEventListener {
        final /* synthetic */ int val$phoneId;
        final /* synthetic */ IRegistrationHandlerNotifiable val$regHandler;
        final /* synthetic */ IRegisterTask val$task;

        AnonymousClass2(int i, IRegisterTask iRegisterTask, IRegistrationHandlerNotifiable iRegistrationHandlerNotifiable) {
            this.val$phoneId = i;
            this.val$task = iRegisterTask;
            this.val$regHandler = iRegistrationHandlerNotifiable;
        }

        @Override // com.sec.internal.ims.core.handler.secims.UserAgent.UaEventListener
        public void onCreated(UserAgent userAgent) {
            String str = "";
            if (userAgent == null || this.val$phoneId < 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.val$phoneId);
                sb.append(",UA FAIL");
                sb.append(userAgent == null ? ":null" : "");
                IMSLog.c(LogClass.REGI_UA_CREAT_FAIL, sb.toString());
            }
            if (userAgent == null) {
                Log.e(ResipRegistrationManager.LOG_TAG, "failed to create UA. restart imsService.");
                ResipRegistrationManager.this.mEventLog.logAndAdd(this.val$phoneId, RegistrationConstants.RecoveryReason.UA_CREATION_FAILED);
                SystemWrapper.exit(0);
                return;
            }
            int i = this.val$phoneId;
            if (i < 0) {
                Log.e(ResipRegistrationManager.LOG_TAG, "onCreated: Invalid phoneId");
                ResipRegistrationManager.this.mEventLog.logAndAdd(this.val$phoneId, RegistrationConstants.RecoveryReason.UA_CREATION_FAILED);
                SystemWrapper.exit(0);
                return;
            }
            IMSLog.i(ResipRegistrationManager.LOG_TAG, i, "onCreated: UA handle " + userAgent.getHandle());
            ImsProfile imsProfile = userAgent.getImsProfile();
            IGeolocationController geolocationController = ResipRegistrationManager.this.mImsFramework.getGeolocationController();
            if (geolocationController != null && geolocationController.getGeolocation() != null && userAgent.getImsProfile().getSupportedGeolocationPhase() >= 2) {
                IMSLog.i(ResipRegistrationManager.LOG_TAG, this.val$phoneId, "updating geolocation for UA Creation");
                userAgent.updateGeolocation(geolocationController.getGeolocation());
            }
            String generate = ResipRegistrationManager.this.mPaniGenerator.generate(userAgent.getPdn(), imsProfile.getOperator(), this.val$phoneId, imsProfile);
            if (generate == null) {
                IMSLog.e(ResipRegistrationManager.LOG_TAG, this.val$phoneId, "onCreated: pani is null");
                return;
            }
            if (!TextUtils.isEmpty(generate)) {
                if (generate.contains(PaniConstants.IWLAN_PANI_PREFIX)) {
                    str = ResipRegistrationManager.this.mPaniGenerator.getLastPani(this.val$phoneId, imsProfile, new Date());
                    if (ResipRegistrationManager.this.mPaniGenerator.needCellInfoAge(imsProfile) || ResipRegistrationManager.this.mPaniGenerator.needCellInfoAgeInactive(imsProfile)) {
                        userAgent.updateTimeInPlani(ResipRegistrationManager.this.mPaniGenerator.getTimeInPlani(this.val$phoneId));
                    }
                }
                userAgent.updatePani(generate, str);
                this.val$task.setPaniSet(generate, str);
            }
            if (userAgent.getImsProfile().isUicclessEmergency() && userAgent.getImsProfile().hasEmergencySupport()) {
                this.val$regHandler.notifyEmergencyReady(imsProfile.getId());
                return;
            }
            Log.i(ResipRegistrationManager.LOG_TAG, "trigger registration.");
            userAgent.register();
            userAgent.updateCallwaitingStatus();
        }

        @Override // com.sec.internal.ims.core.handler.secims.UserAgent.UaEventListener
        public void onRegistered(UserAgent userAgent) {
            Log.i(ResipRegistrationManager.LOG_TAG, "onRegistered: UA handle " + userAgent.getHandle());
            ImsRegistration imsRegistration = userAgent.getImsRegistration();
            if (imsRegistration == null) {
                return;
            }
            this.val$regHandler.notifyRegistered(userAgent.getPhoneId(), userAgent.getImsProfile().getId(), imsRegistration);
        }

        @Override // com.sec.internal.ims.core.handler.secims.UserAgent.UaEventListener
        public void onDeregistered(UserAgent userAgent, SipError sipError, long j, boolean z, boolean z2) {
            Log.i(ResipRegistrationManager.LOG_TAG, "onDeregistered: UA handle " + userAgent.getHandle() + " isRequestedDeregi " + z + " error " + sipError + " retryAfterMs " + j);
            Bundle bundle = new Bundle();
            bundle.putParcelable("error", sipError);
            bundle.putInt("phoneId", userAgent.getPhoneId());
            bundle.putInt("profileId", userAgent.getImsProfile().getId());
            bundle.putBoolean("isRequestedDeregi", z);
            bundle.putLong("retryAfter", j);
            bundle.putBoolean("pcscfGone", z2);
            this.val$regHandler.notifyDeRegistered(bundle);
        }

        @Override // com.sec.internal.ims.core.handler.secims.UserAgent.UaEventListener
        public void onRegistrationError(UserAgent userAgent, SipError sipError, long j) {
            Log.e(ResipRegistrationManager.LOG_TAG, "onRegistrationError: UA handle " + userAgent.getHandle() + " errorCode " + sipError + " retryAfterMs " + j);
            Bundle bundle = new Bundle();
            bundle.putInt("phoneId", userAgent.getPhoneId());
            bundle.putInt("profileId", userAgent.getImsProfile().getId());
            bundle.putInt(EucTestIntent.Extras.HANDLE, userAgent.getHandle());
            bundle.putParcelable("error", sipError);
            bundle.putLong("retryAfter", j);
            this.val$regHandler.notifyRegistrationError(bundle);
        }

        @Override // com.sec.internal.ims.core.handler.secims.UserAgent.UaEventListener
        public void onSubscribeError(UserAgent userAgent, SipError sipError) {
            Log.e(ResipRegistrationManager.LOG_TAG, "onSubscribeError: UA handle " + userAgent.getHandle() + " errorCode " + sipError);
            Bundle bundle = new Bundle();
            bundle.putInt("phoneId", userAgent.getPhoneId());
            bundle.putInt("profileId", userAgent.getImsProfile().getId());
            bundle.putParcelable("error", sipError);
            this.val$regHandler.notifySubscribeError(bundle);
        }

        @Override // com.sec.internal.ims.core.handler.secims.UserAgent.UaEventListener
        public void onUpdatePani(final UserAgent userAgent) {
            new Thread(new Runnable() { // from class: com.sec.internal.ims.core.handler.secims.ResipRegistrationManager$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ResipRegistrationManager.AnonymousClass2.this.lambda$onUpdatePani$0(userAgent);
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUpdatePani$0(UserAgent userAgent) {
            if (Mno.fromName(userAgent.getImsProfile().getMnoName()).isChn()) {
                ResipRegistrationManager.this.mPdnController.getCellIdentity(userAgent.getPhoneId(), true);
                return;
            }
            Log.i(ResipRegistrationManager.LOG_TAG, "Sync CellInfo with RIL");
            ResipRegistrationManager.this.mTelephonyManager.getAllCellInfo();
            ResipRegistrationManager.this.mPdnController.getAllCellInfo(userAgent.getPhoneId(), true);
        }

        @Override // com.sec.internal.ims.core.handler.secims.UserAgent.UaEventListener
        public void onRefreshRegNotification(int i) {
            Log.i(ResipRegistrationManager.LOG_TAG, "onRefreshRegNotification : handle" + i);
            this.val$regHandler.notifyRefreshRegNotification(i);
        }

        @Override // com.sec.internal.ims.core.handler.secims.UserAgent.UaEventListener
        public void onContactActivated(UserAgent userAgent, int i) {
            Log.i(ResipRegistrationManager.LOG_TAG, "onContactActivated: handle-" + i);
            this.val$regHandler.notifyContactActivated(userAgent.getPhoneId(), userAgent.getImsProfile().getId());
        }

        @Override // com.sec.internal.ims.core.handler.secims.UserAgent.UaEventListener
        public void onRegEventContactUriNotification(int i, List<ImsUri> list, int i2, String str, String str2) {
            Log.i(ResipRegistrationManager.LOG_TAG, "onRegEventContactUriNotification: handle-" + i);
            Bundle bundle = new Bundle();
            bundle.putInt(EucTestIntent.Extras.HANDLE, i);
            bundle.putParcelableArrayList("contact_uri_list", new ArrayList<>(list));
            bundle.putString("emergencyNumbers", str2);
            bundle.putInt("isRegi", i2);
            bundle.putString("contactUriType", str);
            this.val$regHandler.notifyRegEventContactUriNotification(bundle);
        }

        @Override // com.sec.internal.ims.core.handler.secims.UserAgent.UaEventListener
        public void onNotifyNullProfile(UserAgent userAgent) {
            if (SimUtil.isDualIMS() && ResipRegistrationManager.this.mTelephonyManager.getCallState(SimUtil.getOppositeSimSlot(userAgent.getPhoneId())) != 0) {
                IMSLog.d(ResipRegistrationManager.LOG_TAG, "Ignore recovery action during ongoing call on the other slot.");
            } else {
                this.val$task.setRecoveryReason(RegistrationConstants.RecoveryReason.NO_USER_AGENT);
                this.val$regHandler.notifyTriggeringRecoveryAction(this.val$task, 0L);
            }
        }
    }

    private long getP2pNetworkHandle(int i) {
        IMSLog.i(LOG_TAG, "getP2pNetworkHandle, cmcType: " + i);
        ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        long j = 0;
        for (Network network : connectivityManager.getAllNetworks()) {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
            long networkHandle = network.getNetworkHandle();
            IMSLog.i(LOG_TAG, "netId (NetworkHandle): " + networkHandle);
            if (i == 7 || i == 8) {
                if (networkCapabilities != null && networkCapabilities.hasTransport(1)) {
                    IMSLog.i(LOG_TAG, "Found netId for cmcType: " + i + ", netId: " + networkHandle);
                    return networkHandle;
                }
                IMSLog.i(LOG_TAG, "not found netId for wifi-direct");
                j = 0;
            } else {
                j = networkHandle;
            }
        }
        return j;
    }

    private String getPdnName(int i) {
        if (i == -1) {
            return "default";
        }
        if (i == 0) {
            return "internet";
        }
        if (i == 1) {
            return "wifi";
        }
        if (i == 5) {
            return "internet";
        }
        if (i == 11) {
            return DeviceConfigManager.IMS;
        }
        if (i == 15) {
            return "emergency";
        }
        return "unknown(" + i + ")";
    }

    private void configureRCS(IRegisterTask iRegisterTask) {
        final int phoneId = iRegisterTask.getPhoneId();
        IMSLog.i(LOG_TAG, phoneId, "configureRCS:");
        RcsConfig rcsConfig = RcsPolicyManager.getRcsConfig(this.mContext, iRegisterTask.getProfile(), phoneId, (ImConfig) Optional.ofNullable(this.mImsFramework.getServiceModuleManager().getImModule()).map(new Function() { // from class: com.sec.internal.ims.core.handler.secims.ResipRegistrationManager$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ImConfig lambda$configureRCS$0;
                lambda$configureRCS$0 = ResipRegistrationManager.lambda$configureRCS$0(phoneId, (IImModule) obj);
                return lambda$configureRCS$0;
            }
        }).orElse(null));
        if (rcsConfig != null) {
            StackIF.getInstance().configRCS(phoneId, rcsConfig);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ImConfig lambda$configureRCS$0(int i, IImModule iImModule) {
        return iImModule.getImConfig(i);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void configure(int i) {
        IMSLog.i(LOG_TAG, i, "configure:");
        StackIF stackIF = StackIF.getInstance();
        String imei = this.mTelephonyManager.getImei(i);
        if (!TextUtils.isEmpty(imei)) {
            imei = DeviceUtil.getFormattedDeviceId(imei, SimUtil.getSimMno(i) == Mno.TMOUS ? this.mTelephonyManager.getDeviceSoftwareVersion(SimUtil.getSubId(i)) : "");
        }
        stackIF.configRegistration(i, imei);
        stackIF.configSrvcc(i, this.mImsFramework.getInt(i, GlobalSettingsConstants.Call.SRVCC_VERSION, 0));
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void sendDmState(int i, boolean z) {
        IMSLog.i(LOG_TAG, i, "sendDmState:" + z);
        StackIF.getInstance().sendDmState(i, z);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void setSilentLogEnabled(boolean z) {
        Log.i(LOG_TAG, "setSilentLogEnabled:");
        StackIF.getInstance().setSilentLogEnabled(z);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public boolean isUserAgentInRegistered(IRegisterTask iRegisterTask) {
        return ((Boolean) Optional.ofNullable(this.mUaList.get(Integer.valueOf(IRegistrationManager.getRegistrationInfoId(iRegisterTask.getProfile().getId(), iRegisterTask.getPhoneId())))).map(new Function() { // from class: com.sec.internal.ims.core.handler.secims.ResipRegistrationManager$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$isUserAgentInRegistered$1;
                lambda$isUserAgentInRegistered$1 = ResipRegistrationManager.lambda$isUserAgentInRegistered$1((UserAgent) obj);
                return lambda$isUserAgentInRegistered$1;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$isUserAgentInRegistered$1(UserAgent userAgent) {
        return Boolean.valueOf(userAgent.isRegistered(false));
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void sendDnsQuery(int i, String str, String str2, List<String> list, String str3, String str4, String str5, long j) {
        Log.i(LOG_TAG, "sendDnsQuery: handle " + i);
        StackIF.getInstance().sendDnsQuery(i, str, str2, list, str3, str4, str5, j);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void updatePani(IRegisterTask iRegisterTask) {
        String str;
        int phoneId = iRegisterTask.getPhoneId();
        ImsProfile profile = iRegisterTask.getProfile();
        String generate = this.mPaniGenerator.generate(iRegisterTask.getPdnType(), profile.getMcc() + profile.getMnc(), phoneId, profile);
        if (TextUtils.isEmpty(generate)) {
            return;
        }
        this.mPaniGenerator.setLkcForLastPani(phoneId, generate, profile, new Date());
        if (iRegisterTask.getUserAgent() == null) {
            return;
        }
        UserAgent userAgent = (UserAgent) iRegisterTask.getUserAgent();
        if (generate.contains(PaniConstants.IWLAN_PANI_PREFIX)) {
            str = this.mPaniGenerator.getLastPani(phoneId, profile, new Date());
            if (this.mPaniGenerator.needCellInfoAge(profile) || this.mPaniGenerator.needCellInfoAgeInactive(profile)) {
                userAgent.updateTimeInPlani(this.mPaniGenerator.getTimeInPlani(phoneId));
            }
        } else {
            str = "";
        }
        userAgent.getUaProfile().setCurPani(generate);
        userAgent.updatePani(generate, str);
        iRegisterTask.setPaniSet(generate, str);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void updateTimeInPlani(int i, ImsProfile imsProfile) {
        String lastPani = this.mPaniGenerator.getLastPani(i, imsProfile, new Date());
        if (!this.mPaniGenerator.needCellInfoAge(imsProfile) || TextUtils.isEmpty(lastPani)) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        long cid = this.mPaniGenerator.getCid(i);
        boolean isChangedPlani = this.mPaniGenerator.isChangedPlani(i, lastPani);
        IMSLog.s(LOG_TAG, i, "updateTimeInPlani: plani " + lastPani + ", time " + currentTimeMillis);
        if (this.mPaniGenerator.getTimeInPlani(i) == 0) {
            this.mPaniGenerator.setTimeInPlani(i, currentTimeMillis);
        }
        if (cid == 0 || !isChangedPlani) {
            return;
        }
        this.mPaniGenerator.setTimeInPlani(i, currentTimeMillis);
        Log.i(LOG_TAG, "updateTimeInPlani: plani " + lastPani + ", time " + currentTimeMillis);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void handleInactiveCiaOnMobileConnected(int i, RegisterTask registerTask) {
        boolean needCellInfoAgeInactive = this.mPaniGenerator.needCellInfoAgeInactive(registerTask.getProfile());
        Log.i(LOG_TAG, "[" + i + "] handleInactiveCiaOnMobileConnected() need CIA_Inactive = " + needCellInfoAgeInactive + " for " + registerTask.getProfile().getName());
        if (needCellInfoAgeInactive) {
            this.mPaniGenerator.setTimeInPlani(i, 0L);
            UserAgent userAgent = (UserAgent) registerTask.getUserAgent();
            if (userAgent == null) {
                Log.i(LOG_TAG, "[" + i + "] handleInactiveCiaOnMobileConnected() task.getUserAgent() returned null");
                return;
            }
            userAgent.updateTimeInPlani(0L);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void handleInactiveCiaOnMobileDisconnected(int i, RegisterTask registerTask) {
        boolean needCellInfoAgeInactive = this.mPaniGenerator.needCellInfoAgeInactive(registerTask.getProfile());
        Log.i(LOG_TAG, "[" + i + "] handleInactiveCiaOnMobileDisconnected() need CIA_Inactive = " + needCellInfoAgeInactive + " for " + registerTask.getProfile().getName());
        if (needCellInfoAgeInactive) {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            this.mPaniGenerator.setTimeInPlani(i, currentTimeMillis);
            UserAgent userAgent = (UserAgent) registerTask.getUserAgent();
            if (userAgent == null) {
                Log.i(LOG_TAG, "[" + i + "] handleInactiveCiaOnMobileDisconnected() task.getUserAgent() returned null");
                return;
            }
            userAgent.updateTimeInPlani(currentTimeMillis);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void removePreviousLastPani(int i) {
        this.mPaniGenerator.removePreviousPlani(i);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void updateRat(IRegisterTask iRegisterTask, int i) {
        if (iRegisterTask.getUserAgent() == null) {
            return;
        }
        iRegisterTask.getUserAgent().updateRat(i);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void updateVceConfig(IRegisterTask iRegisterTask, boolean z) {
        if (iRegisterTask.getUserAgent() == null) {
            Log.i(LOG_TAG, "updateVceConfig: no pending task, simply return");
        } else {
            iRegisterTask.getUserAgent().updateVceConfig(z);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void updateGeolocation(IRegisterTask iRegisterTask, LocationInfo locationInfo) {
        if (iRegisterTask.getUserAgent() == null) {
            Log.i(LOG_TAG, "updateGeolocation: ua is null. return");
        } else {
            iRegisterTask.getUserAgent().updateGeolocation(locationInfo);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void dump() {
        IMSLog.increaseIndent(LOG_TAG);
        IMSLog.dump(LOG_TAG, "Dump of UserAgents:");
        for (UserAgent userAgent : this.mUaList.values()) {
            ImsProfile imsProfile = userAgent.getImsProfile();
            IMSLog.dump(LOG_TAG, "UserAgent [" + userAgent.getHandle() + "] State: [" + userAgent.getStateName() + "], Profile: [" + imsProfile.getName() + "(#" + imsProfile.getId() + ")]");
        }
        StackIF.getInstance().dump();
        this.mPaniGenerator.dump();
    }

    protected int getAudioEngineType() {
        if (DeviceUtil.getModemBoardName().startsWith("SHANNON")) {
            return 1;
        }
        return DeviceUtil.getChipName().startsWith("unisoc") ? 3 : 0;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public void removeUserAgent(IRegisterTask iRegisterTask) {
        IMSLog.i(LOG_TAG, iRegisterTask.getPhoneId(), "removeUserAgent: task " + iRegisterTask.getProfile().getName());
        int registrationInfoId = IRegistrationManager.getRegistrationInfoId(iRegisterTask.getProfile().getId(), iRegisterTask.getPhoneId());
        UserAgent userAgent = this.mUaList.get(Integer.valueOf(registrationInfoId));
        if (userAgent == null) {
            IMSLog.e(LOG_TAG, iRegisterTask.getPhoneId(), "removeUserAgent: UserAgent null");
            iRegisterTask.clearUserAgent();
            return;
        }
        IMSLog.i(LOG_TAG, iRegisterTask.getPhoneId(), "removeUserAgent: UserAgent handle " + userAgent.getHandle());
        userAgent.terminate();
        this.mUaList.remove(Integer.valueOf(registrationInfoId));
        iRegisterTask.clearUserAgent();
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public UserAgent getUserAgentByRegId(int i) {
        for (UserAgent userAgent : this.mUaList.values()) {
            ImsRegistration imsRegistration = userAgent.getImsRegistration();
            if (imsRegistration != null && imsRegistration.getHandle() == i) {
                return userAgent;
            }
        }
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public String getImsiByUserAgent(IUserAgent iUserAgent) {
        if (iUserAgent == null) {
            IMSLog.e(LOG_TAG, "getImsiByUserAgent: ua is null!");
            return null;
        }
        return (String) Optional.ofNullable(this.mSimManagers.get(iUserAgent.getPhoneId())).map(new ResipRegistrationManager$$ExternalSyntheticLambda1()).orElse(null);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public String getImsiByUserAgentHandle(int i) {
        UserAgent userAgent = getUserAgent(i);
        if (userAgent != null) {
            return getImsiByUserAgent(userAgent);
        }
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public IUserAgent getUserAgentByImsi(String str, String str2) {
        if (str2 != null && !str2.equals("")) {
            IMSLog.s(LOG_TAG, "getUserAgentByImsi : Argument imsi = " + str2);
            for (UserAgent userAgent : this.mUaList.values()) {
                ImsRegistration imsRegistration = userAgent.getImsRegistration();
                ImsProfile imsProfile = userAgent.getImsProfile();
                if (imsProfile != null && !imsProfile.hasEmergencySupport() && imsRegistration != null && imsRegistration.hasService(str)) {
                    int phoneId = imsRegistration.getPhoneId();
                    int subId = SimUtil.getSubId(phoneId);
                    Log.i(LOG_TAG, "getUserAgentByImsi, phoneId=" + phoneId + ",subId=" + subId);
                    String subscriberId = this.mTelephonyManager.getSubscriberId(subId);
                    if (subscriberId != null) {
                        IMSLog.s(LOG_TAG, phoneId, "getUserAgentByImsi imsi = " + subscriberId);
                        if (!subscriberId.equals("") && subscriberId.equals(str2)) {
                            return userAgent;
                        }
                    } else {
                        continue;
                    }
                }
            }
            return null;
        }
        return getUserAgent(str, (ImsUri) null);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public IUserAgent getUserAgent(String str) {
        return getUserAgent(str, (ImsUri) null);
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public IUserAgent getUserAgent(String str, int i) {
        Log.i(LOG_TAG, "getUserAgent, phoneId=" + i);
        for (UserAgent userAgent : this.mUaList.values()) {
            ImsRegistration imsRegistration = userAgent.getImsRegistration();
            ImsProfile imsProfile = userAgent.getImsProfile();
            if (imsProfile != null && !imsProfile.hasEmergencySupport() && imsRegistration != null && imsRegistration.hasService(str)) {
                Log.i(LOG_TAG, "getUserAgent, reg.getPhoneId()=" + imsRegistration.getPhoneId());
                if (imsRegistration.getPhoneId() == i) {
                    return userAgent;
                }
            }
        }
        return null;
    }

    private UserAgent getUserAgent(String str, ImsUri imsUri) {
        for (UserAgent userAgent : this.mUaList.values()) {
            ImsRegistration imsRegistration = userAgent.getImsRegistration();
            ImsProfile imsProfile = userAgent.getImsProfile();
            if (imsProfile != null && !imsProfile.hasEmergencySupport() && imsRegistration != null && imsRegistration.hasService(str)) {
                if (imsUri != null) {
                    Iterator it = imsRegistration.getImpuList().iterator();
                    while (it.hasNext()) {
                        if (imsUri.equals(((NameAddr) it.next()).getUri())) {
                        }
                    }
                }
                return userAgent;
            }
        }
        if (imsUri != null) {
            return getUserAgent(str, (ImsUri) null);
        }
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public UserAgent getUserAgent(int i) {
        for (UserAgent userAgent : this.mUaList.values()) {
            if (userAgent.getHandle() == i) {
                return userAgent;
            }
        }
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public UserAgent getUserAgentOnPdn(int i, int i2) {
        for (UserAgent userAgent : this.mUaList.values()) {
            if (userAgent.getPdn() == i && userAgent.getPhoneId() == i2) {
                return userAgent;
            }
        }
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.core.handler.IRegistrationInterface
    public UserAgent[] getUserAgentByPhoneId(int i, String str) {
        ArrayList arrayList = new ArrayList();
        for (UserAgent userAgent : this.mUaList.values()) {
            if (userAgent.getPhoneId() == i) {
                ImsRegistration imsRegistration = userAgent.getImsRegistration();
                ImsProfile imsProfile = userAgent.getImsProfile();
                if (imsProfile != null && !imsProfile.hasEmergencySupport() && imsRegistration != null && imsRegistration.hasService(str)) {
                    arrayList.add(userAgent);
                }
            }
        }
        return (UserAgent[]) arrayList.toArray(new UserAgent[0]);
    }

    private int getTimerF(boolean z, ImsProfile imsProfile) {
        if (!z || imsProfile.getE911RegiTime() <= 0) {
            return imsProfile.getTimerF();
        }
        return Math.min(imsProfile.getTimerF(), imsProfile.getE911RegiTime() * 1000);
    }

    private int getVowifi5gsaMode(int i, Mno mno, ImsProfile imsProfile) {
        if (imsProfile.getCmcType() != 0) {
            return ImsConstants.NrSaMode.ENABLE;
        }
        String string = this.mImsFramework.getString(i, GlobalSettingsConstants.Call.VOWIFI_5GSA_MODE, "ENABLE");
        if ("ENABLE".equals(string)) {
            boolean z = this.mImsFramework.getBoolean(i, GlobalSettingsConstants.Call.SUPPORT_VOWIFI_DEPRIORITIZE_NR5G, false);
            boolean z2 = this.mImsFramework.getBoolean(i, GlobalSettingsConstants.Call.SUPPORT_DISABLE_VOWIFI_5GSA, false);
            if (z) {
                string = "DEPRIORITIZE";
            } else {
                if (!z2) {
                    return ImsConstants.NrSaMode.ENABLE;
                }
                string = "DISABLE";
            }
        }
        boolean z3 = ImsSharedPrefHelper.getBoolean(i, this.mContext, ImsSharedPrefHelper.USER_CONFIG, "EPDGHANDOVERENABLE", false);
        boolean z4 = ImsSharedPrefHelper.getBoolean(i, this.mContext, ImsSharedPrefHelper.USER_CONFIG, "ONLYEPSFALLBACK", false);
        boolean z5 = ImsProfile.hasVolteService(imsProfile, 20) && ImsProfile.hasVolteService(imsProfile, 18) && ImsRegistry.getWfcEpdgManager().getNrInterworkingMode(i) != ImsConstants.NrInterworking.FULL_SUPPORT;
        boolean z6 = ImsSharedPrefHelper.getBoolean(i, this.mContext, ImsSharedPrefHelper.USER_CONFIG, "NRPREFERREDMODE", false);
        boolean z7 = ImsSharedPrefHelper.getBoolean(i, this.mContext, ImsSharedPrefHelper.USER_CONFIG, "NRSAMODE", true);
        IMSLog.i(LOG_TAG, i, "vowifi5gsaMode: " + string + ", hoEnable : " + z3 + ", onlyEpsFallback : " + z4 + ", needDisable5gsa : " + z5 + ", isNrPreferredMode: " + z6 + ", isNrSaMode : " + z7);
        if ("DEPRIORITIZE".equals(string)) {
            if (((z3 && z4) || z5) && (mno != Mno.ATT || (z6 && z7))) {
                return ImsConstants.NrSaMode.DEPRIORITIZE;
            }
        } else if (mno == Mno.TMOUS) {
            if (SemSystemProperties.get("ro.boot.hardware", "").contains("qcom")) {
                return ImsConstants.NrSaMode.ENABLE;
            }
            try {
                boolean booleanValue = ((Boolean) Class.forName("com.sec.internal.ims.core.handler.secims.ResipMediaHandler").getMethod("getSupportVowifiDisable5gsa", new Class[0]).invoke(this.mImsFramework.getHandlerFactory().getMediaHandler(), new Object[0])).booleanValue();
                IMSLog.i(LOG_TAG, i, "getSupportVowifiDisable5gsa : " + booleanValue);
                if (booleanValue) {
                    return ImsConstants.NrSaMode.DISABLE;
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                e.printStackTrace();
            }
        } else if (((z3 && z4) || z5) && z6 && z7) {
            return ImsConstants.NrSaMode.DISABLE;
        }
        return ImsConstants.NrSaMode.ENABLE;
    }

    private boolean isCpSupportUac(int i) {
        SemTelephonyAdapter.CpUacType supportUacType = SemTelephonyAdapter.getSupportUacType(i);
        return supportUacType == SemTelephonyAdapter.CpUacType.CP_UAC_SUPPORT_REL15 || supportUacType == SemTelephonyAdapter.CpUacType.CP_UAC_SUPPORT_REL16;
    }

    private void filterUacSipListByCpUacType(int i, List<String> list) {
        SemTelephonyAdapter.CpUacType supportUacType = SemTelephonyAdapter.getSupportUacType(i);
        this.mEventLog.logAndAdd(i, "filterUacSipListByCpUacType : modem support type " + supportUacType.toString());
        if (supportUacType == SemTelephonyAdapter.CpUacType.CP_UAC_NOT_SUPPORT) {
            list.clear();
        } else if (supportUacType == SemTelephonyAdapter.CpUacType.CP_UAC_SUPPORT_REL15) {
            list.remove("REGISTER");
        }
    }
}
