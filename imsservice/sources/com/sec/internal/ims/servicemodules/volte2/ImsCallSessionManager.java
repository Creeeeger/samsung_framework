package com.sec.internal.ims.servicemodules.volte2;

import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import android.telephony.CellInfo;
import android.telephony.PreciseDataConnectionState;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.telephony.Call;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.TelephonyManagerExt;
import com.sec.ims.util.SipError;
import com.sec.ims.volte2.data.CallProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.os.VoPsIndication;
import com.sec.internal.constants.ims.servicemodules.volte2.CallConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.util.FileTaskUtil;
import com.sec.internal.ims.servicemodules.volte2.data.IncomingCallEvent;
import com.sec.internal.ims.servicemodules.volte2.data.SIPDataEvent;
import com.sec.internal.ims.settings.GlobalSettingsManager;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.IPdnController;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.NetworkStateListener;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Predicate;
import org.json.JSONException;

/* loaded from: classes.dex */
public class ImsCallSessionManager {
    private static final int INVALID_PHONE_ID = -1;
    private static final String LOG_TAG = "ImsCallSessionManager";
    private static final int ONLY_EPDN_FAIL_CAUSE = 31;
    private ImsCallSessionBuilder mImsCallSessionBuilder;
    private ImsCallSession mIncomingCallSession;
    private ImsCallSession mIncomingCallSession2;
    private final NetworkStateListener mNetworkStateListener;
    private IPdnController mPdnController;
    private ImsCallSession mPendingOutgoingCall;
    private final IRegistrationManager mRegMan;
    private ImsCallSessionFactory mSessionFactory;
    private final Map<Integer, ImsCallSession> mSessionMap;
    private ITelephonyManager mTelephonyManager;
    private final Map<Integer, ImsCallSession> mUnmodifiableSessionMap;
    private IVolteServiceModuleInternal mVolteServiceModule;

    public ImsCallSessionManager(IVolteServiceModuleInternal iVolteServiceModuleInternal, ITelephonyManager iTelephonyManager, IPdnController iPdnController, IRegistrationManager iRegistrationManager, Looper looper) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.mSessionMap = concurrentHashMap;
        this.mUnmodifiableSessionMap = Collections.unmodifiableMap(concurrentHashMap);
        this.mIncomingCallSession = null;
        this.mIncomingCallSession2 = null;
        this.mPendingOutgoingCall = null;
        NetworkStateListener networkStateListener = new NetworkStateListener() { // from class: com.sec.internal.ims.servicemodules.volte2.ImsCallSessionManager.1
            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onDefaultNetworkStateChanged(int i) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onEpdgDeregisterRequested(int i) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onEpdgHandoverEnableChanged(int i, boolean z) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onEpdgIpsecDisconnected(int i) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onEpdgRegisterRequested(int i, boolean z) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onIKEAuthFAilure(int i) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onMobileRadioConnected(int i) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onMobileRadioDisconnected(int i) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onPreciseDataConnectionStateChanged(int i, PreciseDataConnectionState preciseDataConnectionState) {
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onDataConnectionStateChanged(int i, boolean z, int i2) {
                Log.i(ImsCallSessionManager.LOG_TAG, "onDataConnectionStateChanged(): networkType [" + TelephonyManagerExt.getNetworkTypeName(i) + "]isWifiConnected [" + z + "], phoneId [" + i2 + "]");
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onCellInfoChanged(List<CellInfo> list, int i) {
                Log.i(ImsCallSessionManager.LOG_TAG, "onCellInfoChanged, phoneId: " + i);
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onEpdgConnected(int i) {
                Log.i(ImsCallSessionManager.LOG_TAG, "onEpdgConnected: [" + i + "]");
                handleEpdgState(i, true);
            }

            @Override // com.sec.internal.interfaces.ims.core.NetworkStateListener
            public void onEpdgDisconnected(int i) {
                Log.i(ImsCallSessionManager.LOG_TAG, "onEpdgDisconnected: [" + i + "]");
                handleEpdgState(i, false);
            }

            private void handleEpdgState(int i, boolean z) {
                IMSLog.c(z ? LogClass.VOLTE_EPDG_CONNECTED : LogClass.VOLTE_EPDG_DISCONNECTED, "" + i);
                for (ImsCallSession imsCallSession : ImsCallSessionManager.this.mSessionMap.values()) {
                    if (imsCallSession.getPhoneId() == i && imsCallSession.getCallProfile().getNetworkType() != 15) {
                        imsCallSession.setEpdgState(z);
                    }
                }
            }
        };
        this.mNetworkStateListener = networkStateListener;
        this.mVolteServiceModule = iVolteServiceModuleInternal;
        this.mSessionFactory = new ImsCallSessionFactory(iVolteServiceModuleInternal, looper);
        this.mTelephonyManager = iTelephonyManager;
        this.mPdnController = iPdnController;
        this.mRegMan = iRegistrationManager;
        iPdnController.registerForNetworkState(networkStateListener);
        this.mImsCallSessionBuilder = new ImsCallSessionBuilder(this, iVolteServiceModuleInternal, iTelephonyManager, iPdnController, iRegistrationManager, looper);
        concurrentHashMap.clear();
    }

    public ImsCallSession createSession(Context context, CallProfile callProfile, ImsRegistration imsRegistration) throws RemoteException {
        return this.mImsCallSessionBuilder.createSession(context, callProfile, imsRegistration);
    }

    public void addCallSession(ImsCallSession imsCallSession) {
        int sessionId = imsCallSession.getSessionId();
        for (ImsCallSession imsCallSession2 : this.mSessionMap.values()) {
            if ((sessionId != -1 && imsCallSession2.getSessionId() == sessionId) || imsCallSession2.getCallState() == CallConstants.STATE.EndedCall) {
                if (imsCallSession2.equals(imsCallSession)) {
                    Log.e(LOG_TAG, "same CallSession has been found : Session id is:" + imsCallSession2.getSessionId() + " And corresponding CallId is:" + imsCallSession2.getCallId());
                    return;
                }
                this.mSessionMap.remove(Integer.valueOf(imsCallSession2.getCallId()));
            }
        }
        this.mSessionMap.put(Integer.valueOf(imsCallSession.getCallId()), imsCallSession);
    }

    public Map<Integer, ImsCallSession> getSessionMap() {
        return this.mSessionMap;
    }

    public int getSessionCount() {
        return this.mSessionMap.size();
    }

    public int getSessionCount(int i) {
        Iterator<ImsCallSession> it = this.mSessionMap.values().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (it.next().getPhoneId() == i) {
                i2++;
            }
        }
        return i2;
    }

    public List<ImsCallSession> getSessionList() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.mSessionMap.values());
        return arrayList;
    }

    public List<ImsCallSession> getSessionList(int i) {
        ArrayList arrayList = new ArrayList();
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getPhoneId() == i) {
                arrayList.add(imsCallSession);
            }
        }
        return arrayList;
    }

    public ImsCallSession getForegroundSession() {
        return getForegroundSession(-1);
    }

    public ImsCallSession getForegroundSession(int i) {
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (i == -1 || imsCallSession.getPhoneId() == i) {
                if (imsCallSession.getCallState() == CallConstants.STATE.InCall) {
                    return imsCallSession;
                }
            }
        }
        return null;
    }

    public boolean hasActiveCall(int i) {
        CallConstants.STATE callState;
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getPhoneId() == i && (callState = imsCallSession.getCallState()) != CallConstants.STATE.Idle && callState != CallConstants.STATE.EndingCall && callState != CallConstants.STATE.EndedCall) {
                return true;
            }
        }
        return false;
    }

    public boolean hasEstablishedCall(int i) {
        CallConstants.STATE callState;
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getPhoneId() == i && imsCallSession.getCmcType() == 0 && ((callState = imsCallSession.getCallState()) == CallConstants.STATE.InCall || callState == CallConstants.STATE.HeldCall || callState == CallConstants.STATE.HoldingCall)) {
                return true;
            }
        }
        return false;
    }

    public ImsCallSession getSession(int i) {
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getSessionId() == i) {
                return imsCallSession;
            }
        }
        return null;
    }

    public ImsCallSession getSessionByCallId(int i) {
        return this.mSessionMap.get(Integer.valueOf(i));
    }

    public ImsCallSession getSessionBySipCallId(String str) {
        if (str == null) {
            return null;
        }
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (str.equals(imsCallSession.getCallProfile().getSipCallId())) {
                return imsCallSession;
            }
        }
        return null;
    }

    public List<ImsCallSession> getSessionByState(CallConstants.STATE state) {
        return getSessionByState(-1, state);
    }

    public List<ImsCallSession> getSessionByState(int i, CallConstants.STATE state) {
        ArrayList arrayList = new ArrayList();
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            CallProfile callProfile = imsCallSession.getCallProfile();
            if (callProfile == null || !callProfile.isConferenceCall()) {
                if (i == -1 || imsCallSession.getPhoneId() == i) {
                    Log.i(LOG_TAG, "getSessionByState(" + imsCallSession.getCallId() + ") : " + imsCallSession.getCallState().toString());
                    if (imsCallSession.getCallState() == state) {
                        arrayList.add(imsCallSession);
                    }
                }
            }
        }
        return arrayList;
    }

    public List<ImsCallSession> getSessionByCallType(int i) {
        return getSessionByCallType(-1, i);
    }

    public List<ImsCallSession> getSessionByCallType(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (i == -1 || imsCallSession.getPhoneId() == i) {
                CallProfile callProfile = imsCallSession.getCallProfile();
                if (callProfile == null || !callProfile.isConferenceCall()) {
                    if (callProfile != null && callProfile.getCallType() == i2) {
                        arrayList.add(imsCallSession);
                    }
                }
            }
        }
        return arrayList;
    }

    public ImsCallSession getSessionByTelecomCallId(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getIdcData() != null && str.equals(imsCallSession.getIdcData().getTelecomCallId())) {
                return imsCallSession;
            }
        }
        return null;
    }

    public String getTelecomCallIdBySessionId(int i) {
        ImsCallSession session = getSession(i);
        if (session == null || session.getIdcData() == null) {
            return null;
        }
        return session.getIdcData().getTelecomCallId();
    }

    public void setPendingOutgoingCall(ImsCallSession imsCallSession) {
        this.mPendingOutgoingCall = imsCallSession;
    }

    public boolean hasSipCallId(String str) {
        Iterator<Map.Entry<Integer, ImsCallSession>> it = this.mSessionMap.entrySet().iterator();
        while (it.hasNext()) {
            ImsCallSession value = it.next().getValue();
            CallProfile callProfile = value.getCallProfile();
            if (callProfile != null && callProfile.getSipCallId() != null && callProfile.getSipCallId().equals(str)) {
                Log.i(LOG_TAG, "exclude the dialog with sipCallId: " + str + " sessionId: " + value.getSessionId());
                return true;
            }
        }
        return false;
    }

    public ImsCallSession getSessionByRegId(int i) {
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getRegistration().getHandle() == i) {
                return imsCallSession;
            }
        }
        return null;
    }

    public List<ImsCallSession> getEmergencySession() {
        ArrayList arrayList = new ArrayList();
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            CallProfile callProfile = imsCallSession.getCallProfile();
            if (callProfile != null && ImsCallUtil.isE911Call(callProfile.getCallType())) {
                arrayList.add(imsCallSession);
            }
        }
        return arrayList;
    }

    public List<ImsCallSession> getEmergencySession(int i) {
        ArrayList arrayList = new ArrayList();
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            CallProfile callProfile = imsCallSession.getCallProfile();
            if (callProfile != null && ImsCallUtil.isE911Call(callProfile.getCallType()) && imsCallSession.getPhoneId() == i) {
                arrayList.add(imsCallSession);
            }
        }
        return arrayList;
    }

    public ImsCallSession removeSession(int i) {
        for (Map.Entry<Integer, ImsCallSession> entry : this.mSessionMap.entrySet()) {
            Integer key = entry.getKey();
            if (entry.getValue().getSessionId() == i) {
                return this.mSessionMap.remove(key);
            }
        }
        return null;
    }

    public void removeSessionByCmcType(int i) {
        Log.i(LOG_TAG, "removeSessionByCmcType cmcType " + i);
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            try {
                if (i == imsCallSession.getCmcType()) {
                    removeSession(imsCallSession.getSessionId());
                }
            } catch (ArrayIndexOutOfBoundsException e) {
                Log.e(LOG_TAG, "removeSessionByCmcType: " + e.getMessage());
            }
        }
    }

    public int getActiveCallSessionId() {
        Iterator<ImsCallSession> it = this.mSessionMap.values().iterator();
        while (it.hasNext()) {
            ImsCallSession next = it.next();
            try {
                if (next.getCallState() != CallConstants.STATE.Idle && !ImsCallUtil.isEndCallState(next.getCallState())) {
                    return next.getSessionId();
                }
            } catch (ArrayIndexOutOfBoundsException e) {
                Log.e(LOG_TAG, "getActiveCallSession : " + e.getMessage());
            }
        }
        return -1;
    }

    private List<ImsCallSession> getActiveCallSession(int i) {
        ArrayList arrayList = new ArrayList();
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession != null && (i == -1 || imsCallSession.getPhoneId() == i)) {
                try {
                    if (imsCallSession.getCallState() != CallConstants.STATE.Idle && !ImsCallUtil.isEndCallState(imsCallSession.getCallState()) && imsCallSession.getCallProfile() != null) {
                        arrayList.add(imsCallSession);
                    }
                } catch (ArrayIndexOutOfBoundsException e) {
                    Log.e(LOG_TAG, "getActiveCallSession : " + e.getMessage());
                }
            }
        }
        return arrayList;
    }

    public ImsCallSession getAlertingCallSession(int i) {
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession != null && (i == -1 || imsCallSession.getPhoneId() == i)) {
                if (imsCallSession.getCallState() == CallConstants.STATE.AlertingCall) {
                    return imsCallSession;
                }
            }
        }
        return null;
    }

    public int getIncomingSessionPhoneIdForCmc() {
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getCallState() == CallConstants.STATE.IncomingCall) {
                return imsCallSession.getPhoneId();
            }
        }
        return -1;
    }

    public int getTotalCallCount(int i) {
        return getActiveCallSession(i).size();
    }

    public int getVideoCallCount(int i) {
        return (int) getActiveCallSession(i).stream().filter(new Predicate() { // from class: com.sec.internal.ims.servicemodules.volte2.ImsCallSessionManager$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getVideoCallCount$0;
                lambda$getVideoCallCount$0 = ImsCallSessionManager.lambda$getVideoCallCount$0((ImsCallSession) obj);
                return lambda$getVideoCallCount$0;
            }
        }).count();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getVideoCallCount$0(ImsCallSession imsCallSession) {
        return ImsCallUtil.isVideoCall(imsCallSession.getCallProfile().getCallType());
    }

    public int getDowngradedCallCount(int i) {
        return (int) getActiveCallSession(i).stream().filter(new Predicate() { // from class: com.sec.internal.ims.servicemodules.volte2.ImsCallSessionManager$$ExternalSyntheticLambda3
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getDowngradedCallCount$1;
                lambda$getDowngradedCallCount$1 = ImsCallSessionManager.lambda$getDowngradedCallCount$1((ImsCallSession) obj);
                return lambda$getDowngradedCallCount$1;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.servicemodules.volte2.ImsCallSessionManager$$ExternalSyntheticLambda4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getDowngradedCallCount$2;
                lambda$getDowngradedCallCount$2 = ImsCallSessionManager.lambda$getDowngradedCallCount$2((ImsCallSession) obj);
                return lambda$getDowngradedCallCount$2;
            }
        }).count();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getDowngradedCallCount$1(ImsCallSession imsCallSession) {
        return !ImsCallUtil.isVideoCall(imsCallSession.getCallProfile().getCallType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getDowngradedCallCount$2(ImsCallSession imsCallSession) {
        return imsCallSession.getCallProfile().isDowngradedVideoCall();
    }

    public int getE911CallCount(int i) {
        return (int) getActiveCallSession(i).stream().filter(new Predicate() { // from class: com.sec.internal.ims.servicemodules.volte2.ImsCallSessionManager$$ExternalSyntheticLambda5
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getE911CallCount$3;
                lambda$getE911CallCount$3 = ImsCallSessionManager.lambda$getE911CallCount$3((ImsCallSession) obj);
                return lambda$getE911CallCount$3;
            }
        }).count();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getE911CallCount$3(ImsCallSession imsCallSession) {
        return ImsCallUtil.isE911Call(imsCallSession.getCallProfile().getCallType());
    }

    public int getEpsFbCallCount(int i) {
        return (int) getActiveCallSession(i).stream().filter(new Predicate() { // from class: com.sec.internal.ims.servicemodules.volte2.ImsCallSessionManager$$ExternalSyntheticLambda6
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean epsFallback;
                epsFallback = ((ImsCallSession) obj).getEpsFallback();
                return epsFallback;
            }
        }).count();
    }

    public int getNrSaCallCount(int i) {
        return (int) getActiveCallSession(i).stream().filter(new Predicate() { // from class: com.sec.internal.ims.servicemodules.volte2.ImsCallSessionManager$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean isNrSaMode;
                isNrSaMode = ((ImsCallSession) obj).getIsNrSaMode();
                return isNrSaMode;
            }
        }).count();
    }

    public int getEpdgCallCount(int i) {
        return (int) getActiveCallSession(i).stream().filter(new Predicate() { // from class: com.sec.internal.ims.servicemodules.volte2.ImsCallSessionManager$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean isEpdgCall;
                isEpdgCall = ((ImsCallSession) obj).isEpdgCall();
                return isEpdgCall;
            }
        }).count();
    }

    public int getActiveExtCallCount() {
        int i = 0;
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getCmcType() == 0 && (imsCallSession.getCallState() == CallConstants.STATE.InCall || imsCallSession.mIsEstablished)) {
                i++;
            }
        }
        return i;
    }

    public boolean getExtMoCall() {
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getCmcType() == 0) {
                return imsCallSession.getCallProfile().isMOCall();
            }
        }
        return false;
    }

    public boolean hasVideoCall() {
        Iterator<ImsCallSession> it = this.mSessionMap.values().iterator();
        while (it.hasNext()) {
            if (ImsCallUtil.isVideoCall(it.next().getCallProfile().getCallType())) {
                return true;
            }
        }
        return false;
    }

    public boolean hasRttCall() {
        Iterator<ImsCallSession> it = this.mSessionMap.values().iterator();
        while (it.hasNext()) {
            if (ImsCallUtil.isRttCall(it.next().getCallProfile().getCallType())) {
                return true;
            }
        }
        return false;
    }

    public int convertToSessionId(int i) {
        ImsCallSession imsCallSession = this.mSessionMap.get(Integer.valueOf(i));
        if (imsCallSession == null) {
            return -1;
        }
        return imsCallSession.getSessionId();
    }

    public boolean hasRingingCall() {
        return hasRingingCall(-1);
    }

    public boolean hasRingingCall(int i) {
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (i == -1 || imsCallSession.getPhoneId() == i) {
                if (imsCallSession.getCallState() == CallConstants.STATE.IncomingCall || imsCallSession.getPreAlerting()) {
                    Log.i(LOG_TAG, "session(" + imsCallSession.getSessionId() + ") is in IncomingCall");
                    return true;
                }
            }
        }
        return false;
    }

    public void forceNotifyCurrentCodec() {
        Iterator<ImsCallSession> it = this.mSessionMap.values().iterator();
        while (it.hasNext()) {
            it.next().forceNotifyCurrentCodec();
        }
    }

    public void sendRttMessage(String str) {
        if (str != null) {
            Iterator<ImsCallSession> it = this.mSessionMap.values().iterator();
            while (it.hasNext()) {
                it.next().sendText(str, str.length());
            }
            return;
        }
        Log.i(LOG_TAG, "sendRttMessage: receive null string / do nothing");
    }

    public boolean triggerPsRedial(int i, int i2, int i3, ImsRegistration imsRegistration) {
        ImsCallSession imsCallSession = this.mSessionMap.get(Integer.valueOf(i2));
        if (imsRegistration == null || imsCallSession == null) {
            String str = LOG_TAG;
            Log.e(str, "TMO_E911 Call session or IMS Registration is not exist!");
            Log.e(str, "TMO_E911 triggerPsRedial = false");
            return false;
        }
        CallProfile callProfile = imsCallSession.getCallProfile();
        if (callProfile == null) {
            Log.e(LOG_TAG, "TMO_E911 triggerPsRedial = false, origProfile is null");
            return false;
        }
        callProfile.setNetworkType(i3);
        ImsCallSession create = this.mSessionFactory.create(callProfile, imsRegistration, false);
        if (create == null) {
            return false;
        }
        try {
            create.replaceSessionEventListener(imsCallSession);
            create.start(callProfile.getDialingNumber(), null);
            this.mSessionMap.replace(Integer.valueOf(i2), imsCallSession, create);
            create.setCallId(i2);
            imsCallSession.notifySessionChanged(i2);
            Log.e(LOG_TAG, "TMO_E911 triggerPsRedial = true");
            return true;
        } catch (RemoteException e) {
            e.printStackTrace();
            Log.e(LOG_TAG, "TMO_E911 triggerPsRedial = false");
            return false;
        }
    }

    public void handleSrvccStateChange(int i, Call.SrvccState srvccState, Mno mno) {
        IRegistrationGovernor registrationGovernor;
        ImsRegistration imsRegistration = null;
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession != null) {
                try {
                    if (imsCallSession.getPhoneId() == i) {
                        if (srvccState == Call.SrvccState.STARTED) {
                            imsCallSession.setSrvccStarted(true);
                            imsCallSession.update(null, 100, "SRVCC HO STARTED");
                        } else if (srvccState == Call.SrvccState.COMPLETED) {
                            imsCallSession.setSrvccStarted(false);
                            imsCallSession.terminate(8);
                            if (imsRegistration == null) {
                                imsRegistration = imsCallSession.getRegistration();
                            }
                        } else if (srvccState == Call.SrvccState.FAILED || srvccState == Call.SrvccState.CANCELED) {
                            String str = "failure to transition to CS domain";
                            if ((mno.isOrangeGPG() || mno == Mno.ORANGE_MOLDOVA) && !imsCallSession.getSrvccStarted()) {
                                str = "handover cancelled";
                            }
                            imsCallSession.setSrvccStarted(false);
                            imsCallSession.update(null, 487, str);
                        }
                    }
                } catch (RemoteException | ArrayIndexOutOfBoundsException e) {
                    Log.e(LOG_TAG, "handleReinvite: " + e.getMessage());
                }
            }
        }
        if (srvccState != Call.SrvccState.COMPLETED || imsRegistration == null || (registrationGovernor = this.mRegMan.getRegistrationGovernor(imsRegistration.getHandle())) == null) {
            return;
        }
        registrationGovernor.onSrvccComplete();
    }

    public void setRadioTechForCallProfile(int i) {
        Mno mno;
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            CallProfile callProfile = imsCallSession.getCallProfile();
            if (callProfile != null && imsCallSession.getPhoneId() == i && (!imsCallSession.isE911Call() || ((mno = imsCallSession.mMno) != Mno.VZW && mno != Mno.ATT))) {
                if (this.mPdnController.isEpdgConnected(i)) {
                    callProfile.setRadioTech(18);
                } else {
                    callProfile.setRadioTech(14);
                }
            }
        }
    }

    public void handleEpdgHandover(int i, ImsRegistration imsRegistration, Mno mno) {
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getPhoneId() == imsRegistration.getPhoneId() && !imsCallSession.isE911Call()) {
                boolean isEpdgConnected = this.mPdnController.isEpdgConnected(i);
                if (isEpdgConnected && imsRegistration.getEpdgStatus()) {
                    imsCallSession.setEpdgState(true);
                } else if (!isEpdgConnected) {
                    imsCallSession.setEpdgState(false);
                }
                if (mno == Mno.ATT || mno == Mno.ROGERS) {
                    try {
                        imsCallSession.reinvite();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public void notifyConfError(ImsRegistration imsRegistration) {
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getPhoneId() == imsRegistration.getPhoneId() && imsCallSession.getCallProfile().getConferenceType() == 1) {
                ((ImsConfSession) imsCallSession).notifyOnErrorBeforeEndParticipant();
                return;
            }
        }
    }

    public void endCallByDeregistered(ImsRegistration imsRegistration) {
        notifyConfError(imsRegistration);
        int handle = imsRegistration.getHandle();
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            try {
                ImsRegistration registration = imsCallSession.getRegistration();
                if (registration != null && handle == registration.getHandle()) {
                    if (imsCallSession.getCallState() == CallConstants.STATE.IncomingCall) {
                        imsCallSession.reject(2);
                    } else {
                        Log.i(LOG_TAG, "end call " + imsCallSession.getSessionId() + " by MMTEL deregistered");
                        imsCallSession.terminate(ImsCallUtil.convertDeregiReason(imsRegistration.getDeregiReason()), true);
                    }
                }
            } catch (RemoteException | ArrayIndexOutOfBoundsException e) {
                Log.e(LOG_TAG, "endCallByDeregistered: " + e.getMessage());
            }
        }
    }

    public void endcallByNwHandover(ImsRegistration imsRegistration) {
        notifyConfError(imsRegistration);
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getPhoneId() == imsRegistration.getPhoneId()) {
                try {
                    if (imsCallSession.getCallState() == CallConstants.STATE.IncomingCall) {
                        imsCallSession.reject(4);
                    } else {
                        imsCallSession.terminate(4);
                    }
                } catch (RemoteException e) {
                    Log.e(LOG_TAG, "endcallByNwHandover: ", e);
                }
            }
        }
    }

    public void onCallEndByCS(int i) {
        Log.i(LOG_TAG, "onCallEndByCS");
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getCallProfile().getCallType() != 7 && imsCallSession.getPhoneId() == i) {
                try {
                    imsCallSession.terminate(4);
                } catch (RemoteException e) {
                    Log.e(LOG_TAG, "onCallEndByCS: ", e);
                }
            }
        }
    }

    public void onUssdEndByCS(int i) {
        Log.i(LOG_TAG, "onUssdEndByCS");
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getCallProfile().getCallType() == 12 && imsCallSession.getPhoneId() == i) {
                try {
                    imsCallSession.terminate(4);
                } catch (RemoteException e) {
                    Log.e(LOG_TAG, "onUssdEndByCS: ", e);
                }
            }
        }
    }

    public void releaseAllSession(int i) {
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession != null && imsCallSession.getPhoneId() == i) {
                try {
                    if (imsCallSession.getCallState() == CallConstants.STATE.IncomingCall) {
                        imsCallSession.reject(2);
                    } else {
                        imsCallSession.terminate(5, true);
                    }
                } catch (RemoteException | ArrayIndexOutOfBoundsException e) {
                    Log.e(LOG_TAG, "release all session in F/W layer: " + e.getMessage());
                }
            }
        }
    }

    public void releaseAllVideoCall() {
        for (ImsCallSession imsCallSession : getSessionList()) {
            if (imsCallSession.getCallProfile().getCallType() == 2) {
                try {
                    imsCallSession.terminate(-1);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public void onReleaseWfcBeforeHO(int i) {
        CallProfile callProfile;
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession != null) {
                try {
                    if (imsCallSession.getPhoneId() == i && (callProfile = imsCallSession.getCallProfile()) != null && !ImsCallUtil.isE911Call(callProfile.getCallType())) {
                        if (imsCallSession.getCallState() == CallConstants.STATE.IncomingCall) {
                            imsCallSession.reject(2);
                        } else {
                            imsCallSession.terminate(5, true);
                        }
                        Log.i(LOG_TAG, "end call " + imsCallSession.getSessionId() + " Before HO");
                    }
                } catch (RemoteException | ArrayIndexOutOfBoundsException e) {
                    Log.e(LOG_TAG, "onReleaseWfcBeforeHO: " + e.getMessage());
                }
            }
        }
    }

    public void terminateMoWfcWhenWfcSettingOff(int i) {
        CallProfile callProfile;
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getPhoneId() == i && (callProfile = imsCallSession.getCallProfile()) != null && callProfile.getCallType() == 1 && !callProfile.isDowngradedVideoCall() && callProfile.isMOCall() && !callProfile.isConferenceCall()) {
                try {
                    imsCallSession.terminate(5);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public boolean hasOutgoingCall(int i) {
        CallConstants.STATE callState;
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getPhoneId() == i && !imsCallSession.getCallProfile().isMTCall() && ((callState = imsCallSession.getCallState()) == CallConstants.STATE.ReadyToCall || callState == CallConstants.STATE.OutGoingCall || callState == CallConstants.STATE.AlertingCall)) {
                return true;
            }
        }
        return false;
    }

    public boolean hasEmergencyCall(int i) {
        CallProfile callProfile;
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getPhoneId() == i && (callProfile = imsCallSession.getCallProfile()) != null && ImsCallUtil.isE911Call(callProfile.getCallType())) {
                return true;
            }
        }
        return false;
    }

    public void setTtyMode(int i, int i2) {
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getPhoneId() == i) {
                imsCallSession.setTtyMode(i2);
            }
        }
    }

    public void notifyDSDAVideoCapa(boolean z) {
        Iterator<ImsCallSession> it = this.mSessionMap.values().iterator();
        while (it.hasNext()) {
            it.next().notifyDSDAVideoCapa(z);
        }
    }

    public void onPSBarred(boolean z) {
        Log.i(LOG_TAG, "onPSBarred: on =" + z);
        if (z) {
            IMSLog.c(LogClass.VOLTE_PS_BARRING);
            for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
                CallConstants.STATE callState = imsCallSession.getCallState();
                if (callState == CallConstants.STATE.IncomingCall || callState == CallConstants.STATE.OutGoingCall || callState == CallConstants.STATE.AlertingCall) {
                    try {
                        imsCallSession.terminate(13);
                    } catch (RemoteException e) {
                        Log.e(LOG_TAG, "onNetworkChanged: ", e);
                    }
                }
            }
        }
    }

    public void getSIPMSGInfo(SIPDataEvent sIPDataEvent) {
        Iterator<ImsCallSession> it = this.mSessionMap.values().iterator();
        while (it.hasNext()) {
            it.next().onReceiveSIPMSG(sIPDataEvent.getSipMessage(), sIPDataEvent.getIsRequest());
        }
    }

    public void onUpdateGeolocation() {
        Iterator<ImsCallSession> it = this.mSessionMap.values().iterator();
        while (it.hasNext()) {
            it.next().onUpdateGeolocation();
        }
    }

    public ImsCallSession onImsIncomingCallEvent(IncomingCallEvent incomingCallEvent, CallProfile callProfile, ImsRegistration imsRegistration, int i, int i2) {
        ImsCallSession create = this.mSessionFactory.create(callProfile, imsRegistration, false);
        if (create == null) {
            Log.i(LOG_TAG, "onImsIncomingCallEvent: IncomingCallSession create failed");
            return null;
        }
        create.setSessionId(incomingCallEvent.getSessionID());
        create.updateCallProfile(incomingCallEvent.getParams());
        if (imsRegistration.getImsProfile().getTtyType() != 1 && imsRegistration.getImsProfile().getTtyType() != 3) {
            create.setTtyMode(i2);
        }
        if ((imsRegistration.getImsProfile().getTtyType() == 3 || imsRegistration.getImsProfile().getTtyType() == 4) && ImsCallUtil.isRttCall(i)) {
            if (!this.mPdnController.isEpdgConnected(imsRegistration.getPhoneId())) {
                create.startRttDedicatedBearerTimer(this.mVolteServiceModule.getRttDbrTimer(imsRegistration.getPhoneId()));
            }
            create.getCallProfile().getMediaProfile().setRttMode(1);
        }
        create.setPreAlerting();
        addCallSession(create);
        if (imsRegistration.getPhoneId() == 0) {
            this.mIncomingCallSession = create;
        } else {
            this.mIncomingCallSession2 = create;
        }
        return create;
    }

    public ImsCallSession getIncomingCallSession(int i) {
        return i == 0 ? this.mIncomingCallSession : this.mIncomingCallSession2;
    }

    public void onRegistered(ImsRegistration imsRegistration) {
        ImsCallSession imsCallSession = this.mPendingOutgoingCall;
        if (imsCallSession != null) {
            imsCallSession.handleRegistrationDone(imsRegistration);
            this.mPendingOutgoingCall = null;
        }
    }

    public void handleDeregistered(Context context, int i, int i2, Mno mno) {
        if (this.mPendingOutgoingCall != null) {
            if (mno.isKor() || (mno == Mno.VZW && ImsUtil.isCdmalessEnabled(context, i) && i2 == 503)) {
                this.mPendingOutgoingCall.handleRegistrationFailed();
                this.mPendingOutgoingCall = null;
            }
        }
    }

    public void onCallEnded(int i) {
        if (this.mPendingOutgoingCall == null || this.mVolteServiceModule.getIsLteRetrying(i)) {
            return;
        }
        Log.i(LOG_TAG, "onCallEnded(" + i + ")");
        this.mPendingOutgoingCall = null;
    }

    private boolean ignoreCsfbByEpsOnlyNw(ImsRegistration imsRegistration, int i, Mno mno) {
        if (OmcCode.isKTTOmcCode() && mno == Mno.KT && this.mPdnController.isEpsOnlyReg(i)) {
            Log.e(LOG_TAG, "EPS only registered for KT LTE Preferred model!");
            return true;
        }
        if (imsRegistration == null || imsRegistration.getImsProfile() == null || mno == Mno.DOCOMO || !imsRegistration.getImsProfile().getSupportLtePreferred() || !this.mPdnController.isEpsOnlyReg(i)) {
            return false;
        }
        Log.e(LOG_TAG, "EPS only registered for LTE Preferred model!");
        return true;
    }

    public boolean isCsfbErrorCode(Context context, int i, CallProfile callProfile, SipError sipError) {
        int callType = callProfile.getCallType();
        if (sipError == null) {
            Log.e(LOG_TAG, "SipError was null!!");
            return false;
        }
        if (!this.mVolteServiceModule.isSilentRedialEnabled(context, i)) {
            Log.e(LOG_TAG, "isSilentRedialEnabled was false!");
            return false;
        }
        ImsRegistration imsRegistration = getImsRegistration(i);
        Mno mno = imsRegistration == null ? SimUtil.getMno(i) : Mno.fromName(imsRegistration.getImsProfile().getMnoName());
        if (callType == 12 && (getSessionCount() > 1 || mno == Mno.TMOUS)) {
            Log.e(LOG_TAG, "Already activated call exist when USSD call run!");
            return false;
        }
        if (ignoreCsfbByEpsOnlyNw(imsRegistration, i, mno)) {
            Log.i(LOG_TAG, "ignore CSFB due to only EPS network!");
            return false;
        }
        String str = LOG_TAG;
        Log.i(str, "CallType : " + callType + " SipError : " + sipError);
        if (sipError.equals(SipErrorBase.SIP_INVITE_TIMEOUT)) {
            Log.i(str, "Timer B expired convert to INVITE_TIMEOUT");
            sipError.setCode(1114);
        }
        if ((mno.isOrangeGPG() || mno == Mno.ORANGE_MOLDOVA) && imsRegistration != null && 18 == imsRegistration.getRegiRat()) {
            Log.i(str, "isCsfbErrorCode ORANGE GROUP customization in VoWIFI");
            if (isServerSipError(sipError) && this.mVolteServiceModule.isRoaming(i) && !this.mRegMan.getNetworkEvent(imsRegistration.getPhoneId()).outOfService) {
                this.mRegMan.blockVoWifiRegisterOnRoaminByCsfbError(imsRegistration.getHandle(), FileTaskUtil.READ_DATA_TIMEOUT);
                return false;
            }
        }
        if (mno.isChn() && SimUtil.isDSDACapableDevice() && !ImsCallUtil.isE911Call(callType) && getSessionCount(SimUtil.getOppositeSimSlot(i)) > 0) {
            Log.i(str, "China, DSDA, there's PS call at other slot, do not perform CSFB");
            return false;
        }
        if ((mno == Mno.LGU || mno == Mno.KDDI) && !this.mVolteServiceModule.isRoaming(i)) {
            Log.i(str, "LGU/KDDI - Do not use CSFB in home network");
            return false;
        }
        if (mno == Mno.MTS_RUSSIA && this.mVolteServiceModule.isRoaming(i)) {
            Log.i(str, "MTS Russia - Do not use CSFB in roaming");
            return false;
        }
        if (sipError.getCode() == 1117) {
            Log.i(str, "CALL_ENDED_BY_NW_HANDOVER_BEFORE_100_TRYING is always trigger CSFB");
            return true;
        }
        if ((mno.isTmobile() || mno == Mno.TELEKOM_ALBANIA) && sipError.equals(SipErrorBase.MEDIA_BEARER_OR_QOS_LOST)) {
            Log.i(str, "CSFB condition for T-Mobile EUR");
            return true;
        }
        if (mno == Mno.VIVO_BRAZIL && this.mVolteServiceModule.isRoaming(i)) {
            Log.i(str, "VIVO doesn't support CSFB under roaming area");
            return false;
        }
        if (mno == Mno.PLAY && this.mPdnController.getNetworkState(i).isInternationalRoaming() && (imsRegistration == null || imsRegistration.getRegiRat() == 18)) {
            Log.i(str, "PLAY_PL doesn't support CSFB under international roaming area in VoWiFi");
            return false;
        }
        if (mno == Mno.TMOUS) {
            if (getSessionCount() > 1) {
                Log.i(str, "has another call " + getSessionCount());
                return false;
            }
            if (ImsCallUtil.isClientError(sipError)) {
                Log.i(str, "TMO - Stack return -1 trigger CSFB");
                return true;
            }
        } else if (mno == Mno.VZW) {
            boolean isCdmalessEnabled = ImsUtil.isCdmalessEnabled(context, i);
            Log.i(str, "VZW - roaming(" + this.mVolteServiceModule.isRoaming(i) + ") CDMAless(" + isCdmalessEnabled + ") getLteEpsOnlyAttached(" + this.mVolteServiceModule.getLteEpsOnlyAttached(i) + ")");
            if ((this.mVolteServiceModule.isRoaming(i) && this.mVolteServiceModule.getLteEpsOnlyAttached(i)) || (!this.mVolteServiceModule.isRoaming(i) && isCdmalessEnabled)) {
                return false;
            }
            if (this.mVolteServiceModule.isRoaming(i) && isCdmalessEnabled && !this.mVolteServiceModule.getLteEpsOnlyAttached(i) && sipError.getCode() == 2511) {
                return true;
            }
            if (ImsCallUtil.isImsOutageError(sipError) || sipError.getCode() == 2502) {
                return (this.mVolteServiceModule.isRoaming(i) || isCdmalessEnabled) ? false : true;
            }
            if (isCdmalessEnabled && sipError.getCode() == 1601) {
                return true;
            }
        } else if (mno == Mno.ATT && sipError.getCode() == 403) {
            if (callType == 12 && this.mVolteServiceModule.isRegisteredOver3gppPsVoice(i) && this.mVolteServiceModule.getNetwork(i).voiceOverPs == VoPsIndication.NOT_SUPPORTED) {
                return true;
            }
        } else if (mno == Mno.DISH && !this.mPdnController.getNetworkState(i).isInternationalRoaming() && !ImsCallUtil.isE911Call(callType)) {
            Log.i(str, "DISH wants CSFB only in International Roaming case");
            return false;
        }
        boolean isCsfbErrorCodeOnList = isCsfbErrorCodeOnList(context, i, callType, mno, sipError, false);
        if (!callProfile.isECallConvertedToNormal() || !isNormalTypeECallCsfbError(sipError) || !this.mVolteServiceModule.isRoaming(i)) {
            return isCsfbErrorCodeOnList;
        }
        Log.i(str, "Normal type ECall fails in roaming, CSFB retry");
        return true;
    }

    public boolean isCsfbErrorCodeOnList(Context context, int i, int i2, Mno mno, SipError sipError, boolean z) {
        String str = ImsCallUtil.isVideoCall(i2) ? GlobalSettingsConstants.Call.VIDEO_CSFB_ERROR_CODE_LIST : GlobalSettingsConstants.Call.VOICE_CSFB_ERROR_CODE_LIST;
        try {
            String[] stringArray = GlobalSettingsManager.getInstance(context, i).getStringArray(GlobalSettingsConstants.Call.ALL_CSFB_ERROR_CODE_LIST, null);
            String str2 = LOG_TAG;
            Log.i(str2, "all_csfb_error_code_list " + Arrays.asList(stringArray));
            z = isMatchWithErrorCodeList(stringArray, sipError.getCode());
            if (!z) {
                String[] stringArray2 = GlobalSettingsManager.getInstance(context, i).getStringArray(str, null);
                Log.i(str2, str + " " + Arrays.asList(stringArray2));
                z = isMatchWithErrorCodeList(stringArray2, sipError.getCode());
            }
            if (mno == Mno.TMOUS && ((this.mVolteServiceModule.getLteEpsOnlyAttached(i) || this.mRegMan.getNetworkEvent(i).network == 20) && z && !ImsCallUtil.isE911Call(i2) && sipError.getCode() != SipErrorBase.ALTERNATIVE_SERVICE.getCode())) {
                z = false;
            }
            if (!z && ImsCallUtil.isE911Call(i2)) {
                String[] stringArray3 = GlobalSettingsManager.getInstance(context, i).getStringArray(GlobalSettingsConstants.Call.E911_CSFB_ERROR_CODE_LIST, new String[0]);
                Log.i(str2, GlobalSettingsConstants.Call.E911_CSFB_ERROR_CODE_LIST + " " + Arrays.asList(stringArray3));
                z = isMatchWithErrorCodeList(stringArray3, sipError.getCode());
                if (mno.isChn() && ((sipError.getCode() == 381 || sipError.getCode() == 382) && ImsCallUtil.convertUrnToEccCat(sipError.getReason()) == 254)) {
                    Log.i(str2, "Unrecognized service urn.");
                }
            }
            if (mno.isChn() && sipError.getCode() == 487 && sipError.getReason() != null && sipError.getReason().equals("Destination out of order")) {
                Log.i(str2, "need CSFB for call forwarding");
                z = true;
            }
        } catch (JSONException e) {
            Log.e(LOG_TAG, "isCsfbErrorCode fail " + e.getMessage());
        }
        Log.i(LOG_TAG, "isCsfbErrorCode Mno " + mno.getName() + " callType " + i2 + " error " + sipError + " ==> " + z);
        return z;
    }

    public ImsRegistration getImsRegistration(int i) {
        ImsRegistration[] registrationInfoByPhoneId = this.mRegMan.getRegistrationInfoByPhoneId(i);
        if (registrationInfoByPhoneId == null) {
            return null;
        }
        for (ImsRegistration imsRegistration : registrationInfoByPhoneId) {
            if (imsRegistration != null && imsRegistration.getPhoneId() == i && !imsRegistration.getImsProfile().hasEmergencySupport() && imsRegistration.getImsProfile().getCmcType() == 0) {
                return imsRegistration;
            }
        }
        return null;
    }

    private boolean isServerSipError(SipError sipError) {
        return SipErrorBase.SipErrorType.ERROR_5XX.equals(sipError) || SipErrorBase.SipErrorType.ERROR_6XX.equals(sipError) || sipError.getCode() == SipErrorBase.FORBIDDEN.getCode() || sipError.getCode() == SipErrorBase.REQUEST_TIMEOUT.getCode();
    }

    private boolean isNormalTypeECallCsfbError(SipError sipError) {
        return SipErrorBase.SipErrorType.ERROR_4XX.equals(sipError) || SipErrorBase.SipErrorType.ERROR_5XX.equals(sipError) || SipErrorBase.SipErrorType.ERROR_6XX.equals(sipError);
    }

    public boolean isMatchWithErrorCodeList(String[] strArr, int i) throws JSONException {
        int i2 = 0;
        if (strArr == null) {
            return false;
        }
        boolean z = false;
        while (i2 < strArr.length) {
            String replace = strArr[i2].replace("x", "[0-9]");
            boolean matches = String.valueOf(i).matches(replace);
            if (matches) {
                Log.i(LOG_TAG, "match with " + replace);
                return matches;
            }
            i2++;
            z = matches;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int getMergeCallType(int r4, boolean r5) {
        /*
            r3 = this;
            com.sec.ims.ImsRegistration r4 = r3.getImsRegistration(r4)
            r0 = 2
            r1 = 1
            if (r4 == 0) goto L32
            com.sec.ims.settings.ImsProfile r4 = r4.getImsProfile()
            boolean r2 = r3.hasRttCall()
            boolean r3 = r3.hasVideoCall()
            if (r3 == 0) goto L1e
            boolean r3 = r4.getSupportMergeVideoConference()
            if (r3 == 0) goto L1e
            r3 = r1
            goto L1f
        L1e:
            r3 = 0
        L1f:
            java.lang.String r4 = r4.getMnoName()
            com.sec.internal.constants.Mno r4 = com.sec.internal.constants.Mno.fromName(r4)
            if (r3 == 0) goto L32
            com.sec.internal.constants.Mno r3 = com.sec.internal.constants.Mno.ATT
            if (r4 == r3) goto L30
            if (r2 == 0) goto L30
            goto L32
        L30:
            r3 = r0
            goto L33
        L32:
            r3 = r1
        L33:
            if (r5 == 0) goto L3c
            if (r3 != r1) goto L39
            r3 = 5
            goto L3c
        L39:
            if (r3 != r0) goto L3c
            r3 = 6
        L3c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.volte2.ImsCallSessionManager.getMergeCallType(int, boolean):int");
    }

    public void handleEpdnSetupFail(int i) {
        List<ImsCallSession> emergencySession = getEmergencySession();
        Log.i(LOG_TAG, "handleEpdnSetupFail Emergency Session Count : " + emergencySession.size() + " phoneId : " + i);
        Mno simMno = SimUtil.getSimMno(i);
        for (ImsCallSession imsCallSession : emergencySession) {
            try {
                if (i == imsCallSession.getPhoneId()) {
                    CallProfile callProfile = imsCallSession.getCallProfile();
                    if (callProfile != null && callProfile.getNetworkType() == 11) {
                        Log.i(LOG_TAG, "handleEpdnSetupFail : skip terminate because this session uses ims pdn");
                    } else if (simMno == Mno.KDDI && this.mVolteServiceModule.isRoaming(i)) {
                        imsCallSession.terminate(30);
                    } else {
                        imsCallSession.terminate(22);
                    }
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public int getPhoneIdByCallId(int i) {
        ImsCallSession sessionByCallId = getSessionByCallId(i);
        if (sessionByCallId != null) {
            return sessionByCallId.getPhoneId();
        }
        return -1;
    }

    public int getParticipantIdForMerge(int i, int i2) {
        List<ImsCallSession> sessionByState = getSessionByState(i, CallConstants.STATE.HeldCall);
        if (sessionByState.isEmpty()) {
            Log.e(LOG_TAG, "No Hold Call : conference fail");
            return -1;
        }
        for (ImsCallSession imsCallSession : sessionByState) {
            if (imsCallSession.getCallId() != i2) {
                return imsCallSession.getCallId();
            }
        }
        return -1;
    }

    public void releaseSessionByState(int i, CallConstants.STATE state) {
        for (ImsCallSession imsCallSession : getSessionList()) {
            if (imsCallSession.getPhoneId() == i && imsCallSession.getCallState() == state) {
                try {
                    imsCallSession.terminate(5, true);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public int sendRttSessionModifyRequest(int i, boolean z) {
        String str = LOG_TAG;
        Log.i(str, "sendRttSessionModifyRequest:callId : " + i + ", mode : " + z);
        ImsCallSession sessionByCallId = getSessionByCallId(i);
        if (sessionByCallId == null) {
            Log.i(str, "callId(" + i + ") is invalid");
            return -1;
        }
        IMSLog.c(LogClass.VOLTE_SEND_REQUEST_RTT, sessionByCallId.getPhoneId() + "," + sessionByCallId.getSessionId() + "," + z);
        int callType = sessionByCallId.getCallProfile().getCallType();
        if (ImsCallUtil.isRttCall(callType) && z) {
            this.mVolteServiceModule.onSendRttSessionModifyResponse(i, z, true);
            return 0;
        }
        if (!ImsCallUtil.isRttCall(callType) && !z) {
            this.mVolteServiceModule.onSendRttSessionModifyResponse(i, z, false);
            return 0;
        }
        CallProfile callProfile = new CallProfile();
        callProfile.setCallType(0);
        Log.i(str, "SessionId : " + sessionByCallId.getSessionId() + ", currCallType : " + callType);
        callProfile.setCallType(ImsCallUtil.getCallTypeForRtt(callType, z));
        if (z) {
            int phoneId = sessionByCallId.getPhoneId();
            if (!ImsRegistry.getPdnController().isEpdgConnected(phoneId)) {
                sessionByCallId.startRttDedicatedBearerTimer(this.mVolteServiceModule.getRttDbrTimer(phoneId));
            }
        }
        try {
            sessionByCallId.update(callProfile, 0, "");
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public void sendRttSessionModifyResponse(int i, boolean z) {
        String str = LOG_TAG;
        Log.i(str, "sendRttSessionModifyResponse: callId : " + i + ", accept : " + z);
        ImsCallSession sessionByCallId = getSessionByCallId(i);
        if (sessionByCallId == null) {
            Log.i(str, "callId(" + i + ") is invalid");
            return;
        }
        IMSLog.c(LogClass.VOLTE_SEND_RESPONSE_RTT, sessionByCallId.getPhoneId() + "," + sessionByCallId.getSessionId() + "," + z);
        CallProfile callProfile = new CallProfile();
        callProfile.setCallType(0);
        int callType = sessionByCallId.getCallProfile().getCallType();
        Log.i(str, "SessionId : " + sessionByCallId.getSessionId() + ", currCallType : " + callType);
        callProfile.setCallType(ImsCallUtil.getCallTypeForRtt(callType, true));
        try {
            int phoneId = sessionByCallId.getPhoneId();
            if (z) {
                if (ImsCallUtil.isRttCall(callProfile.getCallType())) {
                    if (!ImsRegistry.getPdnController().isEpdgConnected(phoneId)) {
                        sessionByCallId.startRttDedicatedBearerTimer(this.mVolteServiceModule.getRttDbrTimer(phoneId));
                    }
                    sessionByCallId.getCallProfile().getMediaProfile().setRttMode(1);
                } else {
                    sessionByCallId.getCallProfile().getMediaProfile().setRttMode(0);
                }
                sessionByCallId.accept(callProfile);
                return;
            }
            sessionByCallId.reject(0);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public boolean isRttCall(int i) {
        CallProfile callProfile;
        ImsCallSession sessionByCallId = getSessionByCallId(i);
        if (sessionByCallId == null || (callProfile = sessionByCallId.getCallProfile()) == null) {
            return false;
        }
        boolean isRttCall = ImsCallUtil.isRttCall(callProfile.getCallType());
        Log.i(LOG_TAG, "isRttCall, sessionId=" + i + ", result=" + isRttCall);
        return isRttCall;
    }

    public boolean hasDsdaDialingOrIncomingVtOnOtherSlot(int i) {
        if (!SimUtil.isDSDACapableDevice()) {
            return false;
        }
        int i2 = ImsConstants.Phone.SLOT_1;
        if (i == i2) {
            i2 = ImsConstants.Phone.SLOT_2;
        }
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getPhoneId() == i2) {
                CallConstants.STATE callState = imsCallSession.getCallState();
                if (ImsCallUtil.isVideoCall(imsCallSession.getCallProfile().getCallType()) && (callState == CallConstants.STATE.IncomingCall || callState == CallConstants.STATE.OutGoingCall || callState == CallConstants.STATE.AlertingCall)) {
                    return true;
                }
            }
        }
        return false;
    }

    public Map<Integer, ImsCallSession> getUnmodifiableSessionMap() {
        return this.mUnmodifiableSessionMap;
    }

    public boolean hasPendingCall(int i) {
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getPhoneId() == i && imsCallSession.getPendingCall()) {
                return true;
            }
        }
        return false;
    }

    public void endcallBeforeRetry(int i, int i2) {
        IMSLog.i(LOG_TAG, i, "endcallBeforeRetry");
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.getPhoneId() == i && imsCallSession.getCallState() == CallConstants.STATE.OutGoingCall) {
                Log.i(LOG_TAG, "Session(" + imsCallSession.getSessionId() + "), state :" + imsCallSession.getCallState().toString());
                imsCallSession.notifyRetryingVoLteOrCsCall(i2);
                try {
                    if ("TIMER VZW EXPIRED".equals(imsCallSession.getErrorMessage())) {
                        imsCallSession.terminate(28);
                    } else if ("RRC CONNECTION REJECT".equals(imsCallSession.getErrorMessage())) {
                        imsCallSession.terminate(23);
                    } else {
                        imsCallSession.terminate(13);
                    }
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public boolean hasQecInCall() {
        for (ImsCallSession imsCallSession : this.mSessionMap.values()) {
            if (imsCallSession.isQuantumEncryptionCall() && imsCallSession.getCallState() == CallConstants.STATE.InCall) {
                return true;
            }
        }
        return false;
    }

    public void updateQuantumPeerProfileStatus(int i, int i2, String str, String str2, String str3) {
        ImsCallSession session = getSession(i);
        if (session == null) {
            Log.i(LOG_TAG, "no session");
        } else {
            session.updateQuantumPeerProfileStatus(i2, str, str2, str3);
        }
    }

    public void updateQuantumQMKeyStatus(int i, int i2, String str, String str2, byte[] bArr, String str3) {
        ImsCallSession session = getSession(i);
        if (session == null) {
            Log.i(LOG_TAG, "no session");
        } else {
            session.updateQuantumQMKeyStatus(i2, str, str2, bArr, str3);
        }
    }
}
