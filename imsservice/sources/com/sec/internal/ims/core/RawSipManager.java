package com.sec.internal.ims.core;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.sec.ims.ImsRegistration;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.SipMsg$$ExternalSyntheticLambda0;
import com.sec.internal.google.SecImsNotifier;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.interfaces.ims.core.IRawSipSender;
import com.sec.internal.interfaces.ims.core.handler.ISipDialogInterface;
import com.sec.internal.log.IMSLog;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class RawSipManager implements IRawSipSender {
    static final int EVENT_SIP_MESSAGE_RECEIVED = 1;
    static final int EVENT_SIP_MESSAGE_SENT = 2;
    private static final String LOG_TAG = "RawSipManager";
    private final Context mContext;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    protected ISipDialogInterface mRawSipInterface;

    public RawSipManager(Context context) {
        this.mContext = context;
    }

    public void init(ISipDialogInterface iSipDialogInterface) {
        this.mRawSipInterface = iSipDialogInterface;
        HandlerThread handlerThread = new HandlerThread("RawSipMgrHandler");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(this.mHandlerThread.getLooper()) { // from class: com.sec.internal.ims.core.RawSipManager.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Bundle bundle = (Bundle) ((AsyncResult) message.obj).result;
                RawSipManager.this.onSipMessageEvent(message.what, bundle.getInt("phoneId"), bundle.getString("message"), bundle.getByteArray("rawContents"));
            }
        };
        this.mHandler = handler;
        this.mRawSipInterface.registerForIncomingMessages(handler, 1, null);
        this.mRawSipInterface.registerForOutgoingMessages(this.mHandler, 2, null);
    }

    protected void onSipMessageEvent(int i, int i2, String str, byte[] bArr) {
        SipMsg from = SipMsg.from(str, i == 2, bArr);
        if (!from.isWellFormed()) {
            IMSLog.e(LOG_TAG, i2, "onSipMessageEvent: Wrong SIP message! SIP Message = " + ((String) Optional.ofNullable(from.getStartLine()).map(new SipMsg$$ExternalSyntheticLambda0()).orElse("Unknown!")));
            return;
        }
        if (RcsUtils.isImsSingleRegiRequired(this.mContext, i2)) {
            SecImsNotifier.getInstance().notifySipMessage(i2, from);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.IRawSipSender
    public void send(int i, String str, Message message) {
        int regId = getRegId(i);
        IMSLog.i(LOG_TAG, i, "send: regId " + regId);
        this.mRawSipInterface.sendSip(regId, str, message);
    }

    private int getRegId(final int i) {
        ImsRegistration orElse = SlotBasedConfig.getInstance(i).getImsRegistrations().values().stream().filter(new Predicate() { // from class: com.sec.internal.ims.core.RawSipManager$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getRegId$0;
                lambda$getRegId$0 = RawSipManager.lambda$getRegId$0(i, (ImsRegistration) obj);
                return lambda$getRegId$0;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.core.RawSipManager$$ExternalSyntheticLambda3
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean isNonEmergency;
                isNonEmergency = RawSipManager.this.isNonEmergency((ImsRegistration) obj);
                return isNonEmergency;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.core.RawSipManager$$ExternalSyntheticLambda4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean isNonCmc;
                isNonCmc = RawSipManager.this.isNonCmc((ImsRegistration) obj);
                return isNonCmc;
            }
        }).findFirst().orElse(null);
        IMSLog.i(LOG_TAG, i, "getRegId: Found " + orElse);
        if (orElse != null) {
            return orElse.getHandle();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getRegId$0(int i, ImsRegistration imsRegistration) {
        return imsRegistration.getPhoneId() == i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNonEmergency(ImsRegistration imsRegistration) {
        return ((Boolean) Optional.ofNullable(imsRegistration.getImsProfile()).map(new Function() { // from class: com.sec.internal.ims.core.RawSipManager$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$isNonEmergency$1;
                lambda$isNonEmergency$1 = RawSipManager.lambda$isNonEmergency$1((ImsProfile) obj);
                return lambda$isNonEmergency$1;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$isNonEmergency$1(ImsProfile imsProfile) {
        return Boolean.valueOf(!imsProfile.hasEmergencySupport());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNonCmc(ImsRegistration imsRegistration) {
        return ((Boolean) Optional.ofNullable(imsRegistration.getImsProfile()).map(new Function() { // from class: com.sec.internal.ims.core.RawSipManager$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$isNonCmc$2;
                lambda$isNonCmc$2 = RawSipManager.lambda$isNonCmc$2((ImsProfile) obj);
                return lambda$isNonCmc$2;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$isNonCmc$2(ImsProfile imsProfile) {
        return Boolean.valueOf(imsProfile.getCmcType() == 0);
    }
}
