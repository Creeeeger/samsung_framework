package com.sec.internal.ims.core.sim;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.helper.Registrant;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.core.handler.secims.ResipRegistrationManager$$ExternalSyntheticLambda1;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class SimManagerFactory {
    private static final String LOG_TAG = "SimManagerFactory";
    public static final int PHONE_ID_NON_EXISTING = -1;
    private static Context mContext;
    private static Looper mLooper;
    protected static SubscriptionManager mSubMan;
    protected static volatile List<SimManager> sSimManagerList = new CopyOnWriteArrayList();
    private static boolean mCreated = false;
    private static RegistrantList mADSChangeRegistrants = new RegistrantList();
    protected static RegistrantList mSubIdChangeRegistrants = new RegistrantList();
    private static int mDefaultSimSubId = 0;
    private static boolean mIsMultiSimSupported = false;
    private static TelephonyCallbackListener mTelephonyCallbackListener = new TelephonyCallbackListener();
    protected static SubscriptionManager.OnSubscriptionsChangedListener mSubscriptionsChangedListener = new AnonymousClass1();

    private static class TelephonyCallbackListener extends TelephonyCallback implements TelephonyCallback.ActiveDataSubscriptionIdListener {
        private TelephonyCallbackListener() {
        }

        @Override // android.telephony.TelephonyCallback.ActiveDataSubscriptionIdListener
        public void onActiveDataSubscriptionIdChanged(int i) {
            SimManagerFactory.updateActiveDataSubscription(i);
        }
    }

    /* renamed from: com.sec.internal.ims.core.sim.SimManagerFactory$1, reason: invalid class name */
    class AnonymousClass1 extends SubscriptionManager.OnSubscriptionsChangedListener {
        AnonymousClass1() {
        }

        @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
        public void onSubscriptionsChanged() {
            Optional.ofNullable(SimManagerFactory.mSubMan.getActiveSubscriptionInfoList()).ifPresent(new Consumer() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$1$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SimManagerFactory.AnonymousClass1.lambda$onSubscriptionsChanged$2((List) obj);
                }
            });
            SimManagerFactory.updateAdsSlot();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onSubscriptionsChanged$2(List list) {
            list.forEach(new Consumer() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$1$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SimManagerFactory.AnonymousClass1.lambda$onSubscriptionsChanged$1((SubscriptionInfo) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onSubscriptionsChanged$1(final SubscriptionInfo subscriptionInfo) {
            Optional.ofNullable(SimManagerFactory.getSimManagerFromSimSlot(subscriptionInfo.getSimSlotIndex())).ifPresent(new Consumer() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$1$$ExternalSyntheticLambda2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SimManagerFactory.AnonymousClass1.lambda$onSubscriptionsChanged$0(subscriptionInfo, (ISimManager) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onSubscriptionsChanged$0(SubscriptionInfo subscriptionInfo, ISimManager iSimManager) {
            if (iSimManager.getSubscriptionId() != subscriptionInfo.getSubscriptionId()) {
                iSimManager.setSubscriptionInfo(subscriptionInfo);
                SimManagerFactory.mSubIdChangeRegistrants.notifyResult(subscriptionInfo);
            }
        }
    }

    public static void updateAdsSlot() {
        updateActiveDataSubscription(SubscriptionManager.getActiveDataSubscriptionId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateActiveDataSubscription(int i) {
        int slotIndex = SubscriptionManager.getSlotIndex(i);
        if (isActiveDataSubscriptionChanged(slotIndex, i)) {
            IMSLog.i(LOG_TAG, slotIndex, "updateActiveDataSubscription: Data subscription changed: subId=" + i);
            setActiveDataPhoneIdAndSubIdThenNotify(slotIndex, i);
        }
    }

    private static boolean isActiveDataSubscriptionChanged(int i, int i2) {
        return isSubIdAndPhoneIdVaild(i, i2) && isSubIdOrPhoneIdChanged(i, i2);
    }

    private static boolean isSubIdAndPhoneIdVaild(int i, int i2) {
        return i2 >= 0 && SimUtil.isValidSimSlot(i);
    }

    private static boolean isSubIdOrPhoneIdChanged(int i, int i2) {
        return (SimUtil.getActiveDataPhoneId() == i && mDefaultSimSubId == i2) ? false : true;
    }

    public static void createInstance(Looper looper, Context context) {
        if (mCreated) {
            return;
        }
        mContext = context;
        mLooper = looper;
        SubscriptionManager subscriptionManager = (SubscriptionManager) context.getSystemService("telephony_subscription_service");
        mSubMan = subscriptionManager;
        SimUtil.setSubMgr(subscriptionManager);
        int phoneCount = TelephonyManagerWrapper.getInstance(mContext).getPhoneCount();
        SimUtil.setPhoneCount(phoneCount);
        Log.i(LOG_TAG, "maxSimCount=" + phoneCount);
        mIsMultiSimSupported = phoneCount > 1;
        mDefaultSimSubId = SubscriptionManager.getActiveDataSubscriptionId();
        Log.i(LOG_TAG, "Current default subId=" + mDefaultSimSubId);
        Log.i(LOG_TAG, "getConfigDualIMS = " + SimUtil.getConfigDualIMS());
        for (int i = 0; i < phoneCount; i++) {
            sSimManagerList.add(new SimManager(mLooper, mContext, i, mSubMan.getActiveSubscriptionInfoForSimSlotIndex(i), TelephonyManagerWrapper.getInstance(context)));
        }
        mCreated = true;
    }

    public static void initInstances() {
        sSimManagerList.forEach(new Consumer() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$$ExternalSyntheticLambda10
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((SimManager) obj).initializeSimState();
            }
        });
        Optional.ofNullable((TelephonyManager) mContext.getSystemService(PhoneConstants.PHONE_KEY)).ifPresent(new Consumer() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$$ExternalSyntheticLambda11
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SimManagerFactory.lambda$initInstances$0((TelephonyManager) obj);
            }
        });
        mSubMan.addOnSubscriptionsChangedListener(mContext.getMainExecutor(), mSubscriptionsChangedListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$initInstances$0(TelephonyManager telephonyManager) {
        telephonyManager.registerTelephonyCallback(mContext.getMainExecutor(), mTelephonyCallbackListener);
    }

    public static List<? extends ISimManager> getAllSimManagers() {
        return sSimManagerList;
    }

    public static synchronized ISimManager getSimManager() {
        SimManager orElseGet;
        synchronized (SimManagerFactory.class) {
            orElseGet = sSimManagerList.stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$$ExternalSyntheticLambda12
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$getSimManager$1;
                    lambda$getSimManager$1 = SimManagerFactory.lambda$getSimManager$1((SimManager) obj);
                    return lambda$getSimManager$1;
                }
            }).findFirst().orElseGet(new Supplier() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$$ExternalSyntheticLambda13
                @Override // java.util.function.Supplier
                public final Object get() {
                    SimManager lambda$getSimManager$2;
                    lambda$getSimManager$2 = SimManagerFactory.lambda$getSimManager$2();
                    return lambda$getSimManager$2;
                }
            });
        }
        return orElseGet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getSimManager$1(SimManager simManager) {
        return simManager.getSimSlotIndex() == SimUtil.getActiveDataPhoneId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SimManager lambda$getSimManager$2() {
        if (!sSimManagerList.isEmpty()) {
            Log.e(LOG_TAG, "Not matched. Return slot 0's.");
            return sSimManagerList.get(0);
        }
        Log.e(LOG_TAG, "SimManager is not yet initiated!");
        return null;
    }

    public static synchronized ISimManager getSimManagerFromSimSlot(final int i) {
        SimManager orElseGet;
        synchronized (SimManagerFactory.class) {
            orElseGet = sSimManagerList.stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$$ExternalSyntheticLambda8
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$getSimManagerFromSimSlot$3;
                    lambda$getSimManagerFromSimSlot$3 = SimManagerFactory.lambda$getSimManagerFromSimSlot$3(i, (SimManager) obj);
                    return lambda$getSimManagerFromSimSlot$3;
                }
            }).findFirst().orElseGet(new Supplier() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$$ExternalSyntheticLambda9
                @Override // java.util.function.Supplier
                public final Object get() {
                    SimManager lambda$getSimManagerFromSimSlot$4;
                    lambda$getSimManagerFromSimSlot$4 = SimManagerFactory.lambda$getSimManagerFromSimSlot$4(i);
                    return lambda$getSimManagerFromSimSlot$4;
                }
            });
        }
        return orElseGet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getSimManagerFromSimSlot$3(int i, SimManager simManager) {
        return simManager.getSimSlotIndex() == i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SimManager lambda$getSimManagerFromSimSlot$4(int i) {
        IMSLog.i(LOG_TAG, i, "getSimManagerFromSimSlot, No matched ISimManager. Return null..");
        return null;
    }

    public static synchronized ISimManager getSimManagerFromSubId(final int i) {
        SimManager orElseGet;
        synchronized (SimManagerFactory.class) {
            orElseGet = sSimManagerList.stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$getSimManagerFromSubId$5;
                    lambda$getSimManagerFromSubId$5 = SimManagerFactory.lambda$getSimManagerFromSubId$5(i, (SimManager) obj);
                    return lambda$getSimManagerFromSubId$5;
                }
            }).filter(new Predicate() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$$ExternalSyntheticLambda1
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$getSimManagerFromSubId$6;
                    lambda$getSimManagerFromSubId$6 = SimManagerFactory.lambda$getSimManagerFromSubId$6(i, (SimManager) obj);
                    return lambda$getSimManagerFromSubId$6;
                }
            }).findFirst().orElseGet(new Supplier() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$$ExternalSyntheticLambda2
                @Override // java.util.function.Supplier
                public final Object get() {
                    SimManager lambda$getSimManagerFromSubId$7;
                    lambda$getSimManagerFromSubId$7 = SimManagerFactory.lambda$getSimManagerFromSubId$7(i);
                    return lambda$getSimManagerFromSubId$7;
                }
            });
        }
        return orElseGet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getSimManagerFromSubId$5(int i, SimManager simManager) {
        return simManager.getSubscriptionId() == i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getSimManagerFromSubId$6(int i, SimManager simManager) {
        return !simManager.hasNoSim() || i < 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SimManager lambda$getSimManagerFromSubId$7(int i) {
        IMSLog.i(LOG_TAG, i, "getSimManagerFromSubId, No matched ISimManager. Return null..");
        return null;
    }

    public static void registerForADSChange(Handler handler, int i, Object obj) {
        mADSChangeRegistrants.add(new Registrant(handler, i, obj));
    }

    public static void registerForSubIdChange(Handler handler, int i, Object obj) {
        mSubIdChangeRegistrants.add(new Registrant(handler, i, obj));
    }

    public static void unregisterForADSChange(Handler handler) {
        mADSChangeRegistrants.remove(handler);
    }

    private static void setActiveDataPhoneIdAndSubIdThenNotify(int i, int i2) {
        SimUtil.setActiveDataPhoneId(i);
        mDefaultSimSubId = i2;
        if (mIsMultiSimSupported) {
            mADSChangeRegistrants.notifyRegistrants();
        }
    }

    public static void dump() {
        IMSLog.dump(LOG_TAG, "Dump of SimManagerFactory:");
        sSimManagerList.forEach(new Consumer() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$$ExternalSyntheticLambda7
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((SimManager) obj).dump();
            }
        });
    }

    public static void notifySubscriptionIdChanged(SubscriptionInfo subscriptionInfo) {
        mSubIdChangeRegistrants.notifyResult(subscriptionInfo);
    }

    public static int getPhoneId(final String str) {
        return ((Integer) sSimManagerList.stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$$ExternalSyntheticLambda4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((SimManager) obj).isSimLoaded();
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$$ExternalSyntheticLambda5
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getPhoneId$8;
                lambda$getPhoneId$8 = SimManagerFactory.lambda$getPhoneId$8(str, (SimManager) obj);
                return lambda$getPhoneId$8;
            }
        }).findFirst().map(new Function() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$$ExternalSyntheticLambda6
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((SimManager) obj).getSimSlotIndex());
            }
        }).orElse(-1)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getPhoneId$8(String str, SimManager simManager) {
        return simManager.getImsi().equals(str);
    }

    public static String getImsiFromPhoneId(int i) {
        return (String) Optional.ofNullable(getSimManagerFromSimSlot(i)).filter(new Predicate() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$$ExternalSyntheticLambda14
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((ISimManager) obj).isSimLoaded();
            }
        }).map(new ResipRegistrationManager$$ExternalSyntheticLambda1()).orElse(null);
    }

    public static boolean isOutboundSim(int i) {
        return ((Boolean) Optional.ofNullable(getSimManagerFromSimSlot(i)).map(new Function() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$$ExternalSyntheticLambda15
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((ISimManager) obj).isOutBoundSIM());
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    public static int getSlotId(int i) {
        if (i < 0) {
            IMSLog.e(LOG_TAG, i, "subId is wrong");
            return -1;
        }
        return ((Integer) Optional.ofNullable(getSimManagerFromSubId(i)).map(new Function() { // from class: com.sec.internal.ims.core.sim.SimManagerFactory$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((ISimManager) obj).getSimSlotIndex());
            }
        }).orElse(-1)).intValue();
    }
}
