package com.sec.internal.ims.mdmi;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.RemoteException;
import com.sec.ims.mdmi.IMdmiEventListener;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class MdmiServiceModule extends ServiceModuleBase {
    private static final String LOG_TAG = MdmiServiceModule.class.getSimpleName();
    private long m200OkRecvTime;
    private long mInviteSendingTime;
    private final MdmiE911Listener mListener;
    public IMdmiEventListener mMdmiEventListener;
    private double mMeanvalue;
    private long mNumberOfCalls;
    private long mNumberOfE911Calls;
    private long mNumberOfE911reg;
    private long mNumberOfE922Calls;
    private long mNumberOfSipCancel;
    private long mNumberofSipBye;
    private int mPhoneId;
    private long maxTimeDiffBetweenInviteAndOk;
    private long minTimeDiffBetweenInviteAndOk;

    public enum msgType {
        E911_CALL,
        E922_CALL,
        SIP_INVITE,
        SIP_INVITE_200OK,
        SIP_CANCEL,
        SIP_BYE,
        E911_REGI
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void handleIntent(Intent intent) {
    }

    public MdmiServiceModule(Looper looper, Context context) {
        super(looper);
        this.mInviteSendingTime = 0L;
        this.m200OkRecvTime = 0L;
        this.mMeanvalue = 0.0d;
        this.mNumberOfCalls = 0L;
        this.mPhoneId = 0;
        this.mListener = new MdmiE911Listener() { // from class: com.sec.internal.ims.mdmi.MdmiServiceModule.1
            @Override // com.sec.internal.ims.mdmi.MdmiE911Listener
            public void notifySipMsg(msgType msgtype, long j) {
                switch (AnonymousClass2.$SwitchMap$com$sec$internal$ims$mdmi$MdmiServiceModule$msgType[msgtype.ordinal()]) {
                    case 1:
                        MdmiServiceModule.this.mNumberOfE911Calls++;
                        break;
                    case 2:
                        MdmiServiceModule.this.mNumberOfE922Calls++;
                        break;
                    case 3:
                        MdmiServiceModule.this.mInviteSendingTime = j;
                        break;
                    case 4:
                        MdmiServiceModule.this.m200OkRecvTime = j;
                        long j2 = MdmiServiceModule.this.m200OkRecvTime - MdmiServiceModule.this.mInviteSendingTime;
                        MdmiServiceModule mdmiServiceModule = MdmiServiceModule.this;
                        mdmiServiceModule.minTimeDiffBetweenInviteAndOk = Math.min(mdmiServiceModule.minTimeDiffBetweenInviteAndOk, j2);
                        MdmiServiceModule mdmiServiceModule2 = MdmiServiceModule.this;
                        mdmiServiceModule2.maxTimeDiffBetweenInviteAndOk = Math.max(mdmiServiceModule2.maxTimeDiffBetweenInviteAndOk, j2);
                        double d = MdmiServiceModule.this.mMeanvalue;
                        MdmiServiceModule.this.mMeanvalue = ((r9.mNumberOfCalls * d) + j2) / (MdmiServiceModule.this.mNumberOfCalls + 1);
                        MdmiServiceModule.this.mNumberOfCalls++;
                        break;
                    case 5:
                        MdmiServiceModule.this.mNumberOfSipCancel++;
                        break;
                    case 6:
                        MdmiServiceModule.this.mNumberofSipBye++;
                        break;
                    case 7:
                        MdmiServiceModule.this.mNumberOfE911reg++;
                        break;
                }
            }

            @Override // com.sec.internal.ims.mdmi.MdmiE911Listener
            public void onCallEnded() {
                try {
                    IMSLog.d(MdmiServiceModule.LOG_TAG, "nE911reg = " + MdmiServiceModule.this.mNumberOfE911reg + " nE911Calls = " + MdmiServiceModule.this.mNumberOfE911Calls + "nE922Calls = " + MdmiServiceModule.this.mNumberOfE922Calls + " nSipCancel = " + MdmiServiceModule.this.mNumberOfSipCancel + " nSipBye = " + MdmiServiceModule.this.mNumberofSipBye + " minTimeDiffBetweenInviteAndOk = " + MdmiServiceModule.this.minTimeDiffBetweenInviteAndOk + " maxTimeDiffBetweenInviteAndOk = " + MdmiServiceModule.this.maxTimeDiffBetweenInviteAndOk + " mMeanvalue = " + MdmiServiceModule.this.mMeanvalue);
                    MdmiServiceModule mdmiServiceModule = MdmiServiceModule.this;
                    IMdmiEventListener iMdmiEventListener = mdmiServiceModule.mMdmiEventListener;
                    if (iMdmiEventListener != null) {
                        iMdmiEventListener.onE911StatsUpdated(mdmiServiceModule.mNumberOfE911reg, MdmiServiceModule.this.mNumberOfE911Calls, MdmiServiceModule.this.mNumberOfE922Calls, MdmiServiceModule.this.mNumberOfSipCancel, MdmiServiceModule.this.mNumberofSipBye, MdmiServiceModule.this.minTimeDiffBetweenInviteAndOk, MdmiServiceModule.this.maxTimeDiffBetweenInviteAndOk, MdmiServiceModule.this.mMeanvalue);
                    } else {
                        IMSLog.d(MdmiServiceModule.LOG_TAG, "MDMI event listener is null");
                    }
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        };
        this.mMdmiEventListener = null;
        this.mNumberOfE911reg = 0L;
        this.mNumberOfE911Calls = 0L;
        this.mNumberOfE922Calls = 0L;
        this.mNumberOfSipCancel = 0L;
        this.mNumberofSipBye = 0L;
        this.minTimeDiffBetweenInviteAndOk = Long.MAX_VALUE;
        this.maxTimeDiffBetweenInviteAndOk = 0L;
        this.mInviteSendingTime = 0L;
        this.m200OkRecvTime = 0L;
        this.mNumberOfCalls = 0L;
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void init() {
        super.init();
        IMSLog.i(LOG_TAG, "init()");
    }

    /* renamed from: com.sec.internal.ims.mdmi.MdmiServiceModule$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$mdmi$MdmiServiceModule$msgType;

        static {
            int[] iArr = new int[msgType.values().length];
            $SwitchMap$com$sec$internal$ims$mdmi$MdmiServiceModule$msgType = iArr;
            try {
                iArr[msgType.E911_CALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$mdmi$MdmiServiceModule$msgType[msgType.E922_CALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$mdmi$MdmiServiceModule$msgType[msgType.SIP_INVITE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$mdmi$MdmiServiceModule$msgType[msgType.SIP_INVITE_200OK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$mdmi$MdmiServiceModule$msgType[msgType.SIP_CANCEL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$mdmi$MdmiServiceModule$msgType[msgType.SIP_BYE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$mdmi$MdmiServiceModule$msgType[msgType.E911_REGI.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String[] getServicesRequiring() {
        return new String[]{"mdmi"};
    }

    public MdmiE911Listener getMdmiListener() {
        return this.mListener;
    }

    public void setMdmiEventListener(IMdmiEventListener iMdmiEventListener) {
        this.mMdmiEventListener = iMdmiEventListener;
    }
}
