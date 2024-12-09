package com.sec.internal.imsphone;

import android.telephony.ims.DelegateMessageCallback;
import android.telephony.ims.DelegateRequest;
import android.telephony.ims.DelegateStateCallback;
import android.telephony.ims.FeatureTagState;
import android.telephony.ims.stub.SipDelegate;
import android.telephony.ims.stub.SipTransportImplBase;
import android.text.TextUtils;
import android.util.ArraySet;
import com.sec.ims.ImsRegistration;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.imsphone.RegistrationTracker;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* loaded from: classes.dex */
public class SipTransportImpl extends SipTransportImplBase {
    private static final String LOG_TAG = "SipTransportImpl";
    final Set<String> mAllocatedTags;
    final List<SipDelegateImpl> mDelegates;
    private SimpleEventLog mEventLog;
    private Executor mExecutor;
    private int mPhoneId;
    RegistrationTracker mRegistrationTracker;

    public SipTransportImpl(int i, Executor executor, SimpleEventLog simpleEventLog) {
        super(executor);
        this.mExecutor = executor;
        this.mEventLog = simpleEventLog;
        this.mPhoneId = i;
        this.mRegistrationTracker = new RegistrationTracker();
        this.mDelegates = new ArrayList();
        this.mAllocatedTags = new ArraySet();
    }

    public void createSipDelegate(int i, DelegateRequest delegateRequest, DelegateStateCallback delegateStateCallback, DelegateMessageCallback delegateMessageCallback) {
        this.mEventLog.logAndAdd(this.mPhoneId, "addSipDelegate: request " + delegateRequest);
        final SipDelegateImpl sipDelegateImpl = new SipDelegateImpl(this.mPhoneId, this.mExecutor, delegateStateCallback, delegateMessageCallback, ImsRegistry.getRawSipSender());
        Optional.ofNullable(this.mRegistrationTracker.getRegisteredToken(allocateDelegate(delegateRequest, sipDelegateImpl))).ifPresent(new Consumer() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda10
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SipTransportImpl.this.lambda$createSipDelegate$0(sipDelegateImpl, (RegistrationTracker.RegisteredToken) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createSipDelegate$0(SipDelegateImpl sipDelegateImpl, RegistrationTracker.RegisteredToken registeredToken) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "Already registered. notify config and registration");
        sipDelegateImpl.notifyAlreadyRegistered(registeredToken);
    }

    private Set<String> allocateDelegate(DelegateRequest delegateRequest, SipDelegateImpl sipDelegateImpl) {
        final ArraySet arraySet = new ArraySet();
        final ArraySet arraySet2 = new ArraySet();
        synchronized (this.mDelegates) {
            this.mDelegates.add(sipDelegateImpl);
            delegateRequest.getFeatureTags().forEach(new Consumer() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SipTransportImpl.this.lambda$allocateDelegate$1(arraySet, arraySet2, (String) obj);
                }
            });
            this.mAllocatedTags.addAll(arraySet);
            sipDelegateImpl.notifyCreated(arraySet, arraySet2);
        }
        return arraySet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$allocateDelegate$1(Set set, Set set2, String str) {
        if (!this.mAllocatedTags.contains(str)) {
            set.add(str);
        } else {
            set2.add(new FeatureTagState(str, 1));
        }
    }

    public void destroySipDelegate(final SipDelegate sipDelegate, int i) {
        this.mEventLog.logAndAdd(this.mPhoneId, "removeSipDelegate: reason code [" + i + "]");
        SipDelegateImpl orElse = this.mDelegates.stream().filter(new Predicate() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda12
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean equals;
                equals = Objects.equals(sipDelegate, (SipDelegateImpl) obj);
                return equals;
            }
        }).findFirst().orElse(null);
        IMSLog.i(LOG_TAG, this.mPhoneId, "removeSipDelegate:" + orElse);
        if (orElse != null) {
            synchronized (this.mDelegates) {
                this.mAllocatedTags.removeAll(orElse.getFeatureTags());
                orElse.notifyDestroy(i);
                this.mDelegates.remove(orElse);
            }
        }
    }

    public boolean hasSipDelegate() {
        boolean z;
        synchronized (this.mDelegates) {
            z = !this.mDelegates.isEmpty();
        }
        return z;
    }

    public Set<String> getAllocatedFeatureTags() {
        Set<String> set;
        synchronized (this.mDelegates) {
            set = this.mAllocatedTags;
        }
        return set;
    }

    public List<String> getServiceList() {
        return (List) getAllocatedFeatureTags().stream().map(new Function() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda9
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return SipMsg.getServicefromTag((String) obj);
            }
        }).collect(Collectors.toList());
    }

    public void notifySipMessage(final SipMsg sipMsg) {
        this.mExecutor.execute(new Runnable() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SipTransportImpl.this.lambda$notifySipMessage$5(sipMsg);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifySipMessage$5(final SipMsg sipMsg) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "notifySipMessage: " + sipMsg);
        if (sipMsg.isRegister()) {
            this.mRegistrationTracker.onSipRegisterTransaction(sipMsg);
        } else {
            this.mDelegates.stream().filter(new Predicate() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda5
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$notifySipMessage$3;
                    lambda$notifySipMessage$3 = SipTransportImpl.lambda$notifySipMessage$3(SipMsg.this, (SipDelegateImpl) obj);
                    return lambda$notifySipMessage$3;
                }
            }).forEach(new Consumer() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((SipDelegateImpl) obj).notifySipMessage(SipMsg.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$notifySipMessage$3(SipMsg sipMsg, SipDelegateImpl sipDelegateImpl) {
        return sipDelegateImpl.isMatched(sipMsg);
    }

    public void onRegistrationChanged(final ImsRegistration imsRegistration, final boolean z) {
        this.mExecutor.execute(new Runnable() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                SipTransportImpl.this.lambda$onRegistrationChanged$8(imsRegistration, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRegistrationChanged$8(ImsRegistration imsRegistration, final boolean z) {
        final ImsProfile imsProfile = imsRegistration.getImsProfile();
        IMSLog.i(LOG_TAG, this.mPhoneId, "onRegistrationChanged: " + imsProfile.getName() + ": registered: " + z);
        this.mRegistrationTracker.onRegistrationDone(imsRegistration, z);
        this.mDelegates.stream().filter(new Predicate() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda21
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$onRegistrationChanged$6;
                lambda$onRegistrationChanged$6 = SipTransportImpl.lambda$onRegistrationChanged$6(imsProfile, (SipDelegateImpl) obj);
                return lambda$onRegistrationChanged$6;
            }
        }).forEach(new Consumer() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda22
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SipTransportImpl.this.lambda$onRegistrationChanged$7(z, (SipDelegateImpl) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$onRegistrationChanged$6(ImsProfile imsProfile, SipDelegateImpl sipDelegateImpl) {
        return sipDelegateImpl.isMatched(imsProfile);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRegistrationChanged$7(boolean z, SipDelegateImpl sipDelegateImpl) {
        if (z) {
            Set<String> featureTags = this.mRegistrationTracker.getFeatureTags();
            IMSLog.i(LOG_TAG, "onRegistrationChanged: registered tags: " + featureTags);
            sipDelegateImpl.notifyConfigurationChanged(this.mRegistrationTracker.getRegisteredDelegateConfig());
            sipDelegateImpl.notifyRegistrationChanged(featureTags);
            return;
        }
        sipDelegateImpl.notifyRegistrationChanged(Collections.emptySet());
    }

    public void updateAdhocProfile(ImsProfile imsProfile, boolean z) {
        if (imsProfile.isSamsungMdmnEnabled()) {
            String domain = imsProfile.getDomain();
            if (TextUtils.isEmpty(domain)) {
                domain = (String) imsProfile.getImpuList().stream().filter(new Predicate() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda16
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean lambda$updateAdhocProfile$9;
                        lambda$updateAdhocProfile$9 = SipTransportImpl.lambda$updateAdhocProfile$9((String) obj);
                        return lambda$updateAdhocProfile$9;
                    }
                }).filter(new Predicate() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda17
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean lambda$updateAdhocProfile$10;
                        lambda$updateAdhocProfile$10 = SipTransportImpl.lambda$updateAdhocProfile$10((String) obj);
                        return lambda$updateAdhocProfile$10;
                    }
                }).filter(new Predicate() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda18
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean lambda$updateAdhocProfile$11;
                        lambda$updateAdhocProfile$11 = SipTransportImpl.lambda$updateAdhocProfile$11((String) obj);
                        return lambda$updateAdhocProfile$11;
                    }
                }).map(new Function() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda19
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        String lambda$updateAdhocProfile$12;
                        lambda$updateAdhocProfile$12 = SipTransportImpl.lambda$updateAdhocProfile$12((String) obj);
                        return lambda$updateAdhocProfile$12;
                    }
                }).findFirst().orElse("");
            }
            if (TextUtils.isEmpty(domain)) {
                IMSLog.e(LOG_TAG, this.mPhoneId, "updateAdhocProfile: No domain for " + imsProfile.getName());
                return;
            }
            this.mRegistrationTracker.updateAdhocDomain(z, domain);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$updateAdhocProfile$9(String str) {
        return !str.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$updateAdhocProfile$10(String str) {
        return str.contains("@");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$updateAdhocProfile$11(String str) {
        return str.contains("sip");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$updateAdhocProfile$12(String str) {
        return str.substring(str.indexOf("@") + 1);
    }

    public Set<String> getRegisteredFeatureTags() {
        return this.mRegistrationTracker.getFeatureTags();
    }

    public void notifyDeRegistering(final ImsRegistration imsRegistration) {
        this.mExecutor.execute(new Runnable() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                SipTransportImpl.this.lambda$notifyDeRegistering$15(imsRegistration);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyDeRegistering$15(final ImsRegistration imsRegistration) {
        int phoneId = imsRegistration.getPhoneId();
        final ImsProfile imsProfile = imsRegistration.getImsProfile();
        IMSLog.i(LOG_TAG, phoneId, "notifyDeRegistering: " + imsProfile.getName());
        this.mDelegates.stream().filter(new Predicate() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda13
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$notifyDeRegistering$13;
                lambda$notifyDeRegistering$13 = SipTransportImpl.lambda$notifyDeRegistering$13(imsProfile, (SipDelegateImpl) obj);
                return lambda$notifyDeRegistering$13;
            }
        }).forEach(new Consumer() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda14
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SipTransportImpl.lambda$notifyDeRegistering$14(imsRegistration, (SipDelegateImpl) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$notifyDeRegistering$13(ImsProfile imsProfile, SipDelegateImpl sipDelegateImpl) {
        return sipDelegateImpl.isMatched(imsProfile);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$notifyDeRegistering$14(ImsRegistration imsRegistration, SipDelegateImpl sipDelegateImpl) {
        sipDelegateImpl.notifyDeRegistering(imsRegistration.getDeregiReason());
    }

    public void onUpdateRegistrationTimeout() {
        this.mExecutor.execute(new Runnable() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                SipTransportImpl.this.lambda$onUpdateRegistrationTimeout$17();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateRegistrationTimeout$17() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "onUpdateRegistrationTimeout");
        this.mDelegates.forEach(new Consumer() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda20
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SipTransportImpl.this.lambda$onUpdateRegistrationTimeout$16((SipDelegateImpl) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateRegistrationTimeout$16(SipDelegateImpl sipDelegateImpl) {
        sipDelegateImpl.notifyRegistrationChanged(this.mRegistrationTracker.getFeatureTags());
    }

    public void onPaniUpdated(final String str, final String str2) {
        this.mExecutor.execute(new Runnable() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                SipTransportImpl.this.lambda$onPaniUpdated$21(str, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPaniUpdated$21(final String str, final String str2) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "onPaniUpdated");
        Optional.ofNullable(this.mRegistrationTracker.getRegisteredDelegateConfig()).filter(new Predicate() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda7
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$onPaniUpdated$18;
                lambda$onPaniUpdated$18 = SipTransportImpl.lambda$onPaniUpdated$18(str, str2, (SipDelegateConfig) obj);
                return lambda$onPaniUpdated$18;
            }
        }).ifPresent(new Consumer() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda8
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SipTransportImpl.this.lambda$onPaniUpdated$20(str, str2, (SipDelegateConfig) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$onPaniUpdated$18(String str, String str2, SipDelegateConfig sipDelegateConfig) {
        return sipDelegateConfig.isPaniChanged(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPaniUpdated$20(String str, String str2, SipDelegateConfig sipDelegateConfig) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "onPaniUpdated: notifySipDelegateConfig");
        final SipDelegateConfig build = sipDelegateConfig.getBuilder().setSipPaniHeader(str).setSipPlaniHeader(str2).build();
        this.mRegistrationTracker.setSipDelegateConfig(build);
        this.mDelegates.forEach(new Consumer() { // from class: com.sec.internal.imsphone.SipTransportImpl$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((SipDelegateImpl) obj).notifyConfigurationChanged(SipDelegateConfig.this);
            }
        });
    }
}
