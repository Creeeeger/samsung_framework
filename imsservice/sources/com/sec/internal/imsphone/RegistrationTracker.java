package com.sec.internal.imsphone;

import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Pair;
import com.sec.ims.ImsRegistration;
import com.sec.ims.util.NameAddr;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.ims.cmstore.syncschedulers.RcsScheduler$$ExternalSyntheticLambda0;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Optional;
import java.util.Set;
import java.util.function.Function;

/* loaded from: classes.dex */
class RegistrationTracker {
    static final String LOG_TAG = "RegTracker";
    State mCurrentState = State.DE_REGISTERED;
    final Set<String> mFeatureTags = new ArraySet();
    private List<String> mAdhocDomains = new ArrayList();
    String mCallId = "";
    SipDelegateConfig mDelegateConfig = new SipDelegateConfig();

    enum State {
        DE_REGISTERED,
        REGISTERING,
        AUTHORIZING,
        REGISTERED,
        RE_REGISTERING,
        DE_REGISTERING
    }

    public State getState() {
        State state;
        synchronized (this) {
            state = this.mCurrentState;
        }
        return state;
    }

    void setCallId(String str) {
        if (TextUtils.equals(this.mCallId, str)) {
            return;
        }
        State state = this.mCurrentState;
        State state2 = State.DE_REGISTERED;
        if (state != state2) {
            IMSLog.i(LOG_TAG, String.format(Locale.US, "setCallId: Call-Id has changed in [%s] state! Changed to DE_REGISTERED", state));
            this.mCurrentState = state2;
        }
        IMSLog.i(LOG_TAG, "setCallId: " + str.split("@")[0]);
        this.mCallId = str;
    }

    public Set<String> getFeatureTags() {
        ArraySet arraySet;
        synchronized (this.mFeatureTags) {
            arraySet = new ArraySet(this.mFeatureTags);
        }
        return arraySet;
    }

    public void setSipDelegateConfig(SipDelegateConfig sipDelegateConfig) {
        this.mDelegateConfig = sipDelegateConfig;
    }

    public RegisteredToken getRegisteredToken(Set<String> set) {
        Set<String> featureTags = getFeatureTags();
        if (getState() == State.REGISTERED && featureTags.removeAll(set)) {
            return new RegisteredToken(getRegisteredDelegateConfig(), featureTags);
        }
        return null;
    }

    public void onSipRegisterTransaction(SipMsg sipMsg) {
        String str = sipMsg.getCallIds()[0];
        if (isIrrelevantRegister(sipMsg)) {
            return;
        }
        setCallId(str);
        updateState(sipMsg);
    }

    boolean isIrrelevantRegister(SipMsg sipMsg) {
        return sipMsg.isOutGoing() && (sipMsg.isContactUriHasSos() || isAdhocProfileRegister(sipMsg) || sipMsg.getFeatureTags().isEmpty());
    }

    public void updateAdhocDomain(boolean z, String str) {
        if (z) {
            this.mAdhocDomains.add(str);
        } else {
            this.mAdhocDomains.remove(str);
        }
    }

    private boolean isAdhocProfileRegister(SipMsg sipMsg) {
        String requestLineUri = sipMsg.getRequestLineUri();
        IMSLog.i(LOG_TAG, String.format("isAdhocProfileRegister: domain from StartLine is [%s]", requestLineUri));
        return this.mAdhocDomains.contains(requestLineUri);
    }

    void updateState(boolean z) {
        if (z) {
            synchronized (this) {
                this.mCurrentState = State.REGISTERED;
            }
            return;
        }
        synchronized (this) {
            this.mCurrentState = State.DE_REGISTERED;
        }
        synchronized (this.mFeatureTags) {
            this.mFeatureTags.clear();
        }
        this.mCallId = "";
    }

    /* renamed from: com.sec.internal.imsphone.RegistrationTracker$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$imsphone$RegistrationTracker$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$com$sec$internal$imsphone$RegistrationTracker$State = iArr;
            try {
                iArr[State.DE_REGISTERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$imsphone$RegistrationTracker$State[State.AUTHORIZING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$imsphone$RegistrationTracker$State[State.REGISTERING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$imsphone$RegistrationTracker$State[State.RE_REGISTERING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$imsphone$RegistrationTracker$State[State.REGISTERED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    void updateState(SipMsg sipMsg) {
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$imsphone$RegistrationTracker$State[this.mCurrentState.ordinal()];
        if (i == 1) {
            if (!sipMsg.isOutGoing()) {
                IMSLog.e(LOG_TAG, "DE_REGISTERED: updateState: Unexpected SIP [" + sipMsg + "]");
            }
            this.mCurrentState = State.REGISTERING;
            return;
        }
        if (i != 2) {
            if (i != 3 && i != 4) {
                if (i == 5 && sipMsg.isOutGoing()) {
                    this.mCurrentState = sipMsg.getExpire() == 0 ? State.DE_REGISTERING : State.RE_REGISTERING;
                    return;
                }
                return;
            }
        } else if (sipMsg.isOutGoing() && sipMsg.getExpire() != 0) {
            Pair<String, Integer> viaHostPort = sipMsg.getViaHostPort();
            this.mDelegateConfig.getBuilder().setHomeDomain(sipMsg.getStartLine().asRequestLine().getUri().replace("sip:", "")).setTransport(sipMsg.getViaTransport()).setLocalAddress((String) viaHostPort.first, ((Integer) viaHostPort.second).intValue()).setSipContactUserParameter(sipMsg.getContactUser()).setImei(sipMsg.getContactImei()).setSipUserAgentHeader(sipMsg.getUserAgent()).setSecurityVerifyHeader(String.join(",", sipMsg.getSecurityVerify())).setSipPaniHeader(sipMsg.getPAccessNetworkInfo()).setSipPlaniHeader(sipMsg.getPLastAccessNetworkInfo());
        }
        int code = sipMsg.getStartLine().asStatusLine().getCode();
        if (code == 401 || code == 407) {
            this.mDelegateConfig.getBuilder().setSipAuthenticationHeader(sipMsg.getAuthenticate()).setSipAuthenticationNonce(sipMsg.getAuthenticateNonce());
            this.mCurrentState = State.AUTHORIZING;
        } else if (code == 200) {
            synchronized (this.mFeatureTags) {
                this.mFeatureTags.clear();
                this.mFeatureTags.addAll(sipMsg.getFeatureTags());
            }
            this.mDelegateConfig.getBuilder().setSipServiceRouteHeader(String.join(",", sipMsg.getServiceRoutes())).setSipAssociatedUriHeader(String.join(",", sipMsg.getPAssociatedUris()));
        }
    }

    public SipDelegateConfig onRegistrationDone(ImsRegistration imsRegistration) {
        SipDelegateConfig build = this.mDelegateConfig.getBuilder().setPcscfAddress(imsRegistration.getPcscf()).setPublicUserIdentifier((String) Optional.ofNullable(imsRegistration.getPreferredImpu()).map(new Function() { // from class: com.sec.internal.imsphone.RegistrationTracker$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((NameAddr) obj).getUri();
            }
        }).map(new RcsScheduler$$ExternalSyntheticLambda0()).orElse("")).setPrivateUserIdentifier(imsRegistration.getImpi()).setMaxUdpPayloadSizeBytes(imsRegistration.getImsProfile().getMssSize()).build();
        this.mDelegateConfig = build;
        return build;
    }

    public void onRegistrationDone(ImsRegistration imsRegistration, boolean z) {
        onRegistrationDone(imsRegistration);
        updateState(z);
    }

    public SipDelegateConfig getRegisteredDelegateConfig() {
        if (this.mCurrentState == State.REGISTERED) {
            return this.mDelegateConfig;
        }
        return null;
    }

    public String toString() {
        return "RegTracker(state: " + this.mCurrentState + ") callId: " + this.mCallId.split("@")[0];
    }

    public static class RegisteredToken {
        private SipDelegateConfig mDelegateConfig;
        private Set<String> mRegisteredFeatureTags;

        public RegisteredToken(SipDelegateConfig sipDelegateConfig, Set<String> set) {
            this.mDelegateConfig = sipDelegateConfig;
            this.mRegisteredFeatureTags = set;
        }

        public SipDelegateConfig getDelegateConfig() {
            return this.mDelegateConfig;
        }

        public Set<String> getRegisteredFeatureTags() {
            return this.mRegisteredFeatureTags;
        }
    }
}
