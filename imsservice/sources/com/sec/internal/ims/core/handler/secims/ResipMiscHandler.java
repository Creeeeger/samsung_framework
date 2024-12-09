package com.sec.internal.ims.core.handler.secims;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.PreciseAlarmManager;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.core.handler.MiscHandler;
import com.sec.internal.ims.core.handler.secims.StackIF;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EcholocateMsg;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EcholocateMsg_.EcholocateRtpMsg;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.EcholocateMsg_.EcholocateSignalMsg;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.XqMessage;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.XqMessage_.XqContent;
import com.sec.internal.ims.servicemodules.volte2.data.EcholocateEvent;
import com.sec.internal.ims.xq.att.data.XqEvent;
import com.sec.internal.interfaces.ims.IImsFramework;

/* loaded from: classes.dex */
public class ResipMiscHandler extends MiscHandler implements StackIF.MiscEventListener {
    private static final int EVENT_ALARM_CANCELLED = 2;
    private static final int EVENT_ALARM_FIRED = 3;
    private static final int EVENT_ALARM_REQUESTED = 1;
    private static final int EVENT_ECHOLOCATE_RECEIVED = 4;
    private static final int EVENT_XQ_MTRIP_RECEIVED = 5;
    private PreciseAlarmManager mAlarmManager;
    private final SparseArray<Message> mAlarmMessageList;
    private ATCmdReceiver mAtCmdReceiver;
    private final Context mContext;
    private final RegistrantList mEcholocateEventRegistrants;
    private final IImsFramework mImsFramework;
    private final StackIF mStackIF;
    private final RegistrantList mXqMtripEventRegistrants;
    private static final String LOG_TAG = ResipMiscHandler.class.getSimpleName();
    private static String ATCMD_INTENT = "com.sec.factory.RECEIVED_FROM_RIL";
    private static String ATCMD_COMMAND_EXTRA = "command";
    private static String ATCMD_CHECK_SMS_FORMAT = "AT+IMSSTEST=0,0,0";
    private static String ATCMD_CHECK_OMADM = "AT+VOLTECON=1,0,1,0";
    private static String ATCMD_RESET_OMADM = "AT+VOLTECON=0,0,0,0";
    private static String ATCMD_RESULT_ACTION = "com.sec.factory.SEND_TO_RIL";
    private static String ATCMD_RESULT_KEY = "message";
    private static String ATCMD_IMSTEST_RESULT_PREFIX = "\r\n+IMSSTEST:0,";
    private static String ATCMD_VOLTECON_RESULT_PREFIX = "\r\n+VOLTECON:0,";
    private static String ATCMD_RESULT_SUFFIX = "\r\n\r\nOK\r\n";
    private static String ATCMD_RESULT_NG = "NG";
    private static String ATCMD_RESULT_OK = "OK";

    private class ATCmdReceiver extends BroadcastReceiver {
        private ATCmdReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean defaultDmValue;
            String str;
            String str2;
            if (context == null || intent == null) {
                Log.e(ResipMiscHandler.LOG_TAG, "Wrong Event Ignore.");
                return;
            }
            String action = intent.getAction();
            Log.i(ResipMiscHandler.LOG_TAG, "Receive Action " + action);
            if (ResipMiscHandler.ATCMD_INTENT.equals(action)) {
                if (!intent.hasExtra(ResipMiscHandler.ATCMD_COMMAND_EXTRA)) {
                    Log.e(ResipMiscHandler.LOG_TAG, "Factory intent doesn't have [" + ResipMiscHandler.ATCMD_COMMAND_EXTRA + "]");
                    return;
                }
                String stringExtra = intent.getStringExtra(ResipMiscHandler.ATCMD_COMMAND_EXTRA);
                if (TextUtils.isEmpty(stringExtra)) {
                    Log.e(ResipMiscHandler.LOG_TAG, "Factory intent doesn't have value");
                    return;
                }
                Mno mno = SimUtil.getMno();
                Log.i(ResipMiscHandler.LOG_TAG, "Factory intent command " + stringExtra);
                if (ResipMiscHandler.ATCMD_CHECK_SMS_FORMAT.equals(stringExtra)) {
                    defaultDmValue = mno == Mno.VZW ? ResipMiscHandler.this.mImsFramework.isDefaultDmValue(ConfigConstants.ATCMD.SMS_SETTING, 0) : true;
                    str = ResipMiscHandler.ATCMD_IMSTEST_RESULT_PREFIX;
                } else if (ResipMiscHandler.ATCMD_CHECK_OMADM.equals(stringExtra)) {
                    defaultDmValue = mno == Mno.VZW ? ResipMiscHandler.this.mImsFramework.isDefaultDmValue(ConfigConstants.ATCMD.OMADM_VALUE, 0) : true;
                    str = ResipMiscHandler.ATCMD_VOLTECON_RESULT_PREFIX;
                } else {
                    if (!ResipMiscHandler.ATCMD_RESET_OMADM.equals(stringExtra)) {
                        return;
                    }
                    defaultDmValue = mno == Mno.VZW ? ResipMiscHandler.this.mImsFramework.setDefaultDmValue(ConfigConstants.ATCMD.OMADM_VALUE, 0) : true;
                    str = ResipMiscHandler.ATCMD_VOLTECON_RESULT_PREFIX;
                }
                if (defaultDmValue) {
                    str2 = str + ResipMiscHandler.ATCMD_RESULT_OK;
                } else {
                    str2 = str + ResipMiscHandler.ATCMD_RESULT_NG;
                }
                ResipMiscHandler.this.sendATCmdResponse(str2 + ResipMiscHandler.ATCMD_RESULT_SUFFIX);
            }
        }
    }

    @Override // com.sec.internal.ims.core.handler.MiscHandler, android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            int i2 = message.arg1;
            boolean booleanValue = ((Boolean) message.obj).booleanValue();
            if (this.mAlarmMessageList.get(i2) != null) {
                Log.e(LOG_TAG, "Already reigstered id " + i2);
                return;
            }
            Message obtainMessage = obtainMessage(3, i2, 1 ^ (booleanValue ? 1 : 0));
            this.mAlarmMessageList.put(i2, obtainMessage);
            this.mAlarmManager.sendMessageDelayed(obtainMessage, message.arg2);
            return;
        }
        if (i == 2) {
            int i3 = message.arg1;
            Message message2 = this.mAlarmMessageList.get(i3);
            if (message2 == null) {
                Log.e(LOG_TAG, "Not reigstered id " + i3);
                return;
            }
            this.mAlarmManager.removeMessage(message2);
            this.mAlarmMessageList.remove(i3);
            return;
        }
        if (i == 3) {
            int i4 = message.arg1;
            Log.i(LOG_TAG, "ALARM_WAKE_UP id=" + i4);
            this.mStackIF.sendAlarmWakeUp(i4);
            this.mAlarmMessageList.remove(i4);
            return;
        }
        if (i == 4) {
            EcholocateMsg echolocateMsg = (EcholocateMsg) ((AsyncResult) message.obj).result;
            EcholocateEvent echolocateEvent = new EcholocateEvent();
            if (echolocateMsg.msgtype() == 0) {
                echolocateEvent.setType(EcholocateEvent.EcholocateType.signalMsg);
                EcholocateSignalMsg echolocateSignalData = echolocateMsg.echolocateSignalData();
                if (echolocateSignalData != null) {
                    echolocateEvent.setSignalData(echolocateSignalData.origin(), echolocateSignalData.line1(), echolocateSignalData.callid(), echolocateSignalData.cseq(), echolocateSignalData.sessionid(), echolocateSignalData.reason(), echolocateSignalData.contents(), echolocateSignalData.peernumber(), echolocateSignalData.isEpdgCall());
                }
            } else {
                echolocateEvent.setType(EcholocateEvent.EcholocateType.rtpMsg);
                EcholocateRtpMsg echolocateRtpData = echolocateMsg.echolocateRtpData();
                if (echolocateRtpData != null) {
                    echolocateEvent.setRtpData(echolocateRtpData.dir(), echolocateRtpData.id(), echolocateRtpData.lossrate(), echolocateRtpData.delay(), echolocateRtpData.jitter(), echolocateRtpData.measuredperiod());
                }
            }
            this.mEcholocateEventRegistrants.notifyResult(echolocateEvent);
            return;
        }
        if (i == 5) {
            Log.i(LOG_TAG, "XqMessage");
            XqMessage xqMessage = (XqMessage) ((AsyncResult) message.obj).result;
            XqEvent xqEvent = new XqEvent();
            xqEvent.setXqMtrips(xqMessage.mtrip());
            for (int i5 = 0; i5 < xqMessage.mContentLength(); i5++) {
                XqContent mContent = xqMessage.mContent(i5);
                if (mContent != null) {
                    xqEvent.setContent(mContent.type(), (int) mContent.intVal(), mContent.strVal() != null ? mContent.strVal() : "");
                }
            }
            this.mXqMtripEventRegistrants.notifyResult(xqEvent);
            return;
        }
        super.handleMessage(message);
    }

    protected ResipMiscHandler(Looper looper, Context context, IImsFramework iImsFramework) {
        super(looper);
        this.mEcholocateEventRegistrants = new RegistrantList();
        this.mXqMtripEventRegistrants = new RegistrantList();
        this.mAlarmMessageList = new SparseArray<>();
        this.mAlarmManager = null;
        this.mAtCmdReceiver = null;
        StackIF stackIF = StackIF.getInstance();
        this.mStackIF = stackIF;
        this.mContext = context;
        this.mImsFramework = iImsFramework;
        stackIF.registerMiscListener(this);
        stackIF.registerEcholocateEvent(this, 4, null);
        stackIF.registerXqMtrip(this, 5, null);
        this.mAlarmManager = PreciseAlarmManager.getInstance(context);
        this.mAtCmdReceiver = new ATCmdReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ATCMD_INTENT);
        context.registerReceiver(this.mAtCmdReceiver, intentFilter);
    }

    @Override // com.sec.internal.ims.core.handler.BaseHandler
    public void init() {
        super.init();
    }

    @Override // com.sec.internal.ims.core.handler.MiscHandler, com.sec.internal.interfaces.ims.core.handler.IMiscHandler
    public void registerForEcholocateEvent(Handler handler, int i, Object obj) {
        Log.i(LOG_TAG, "registerForEcholocateEvent:");
        this.mEcholocateEventRegistrants.addUnique(handler, i, obj);
    }

    @Override // com.sec.internal.ims.core.handler.MiscHandler, com.sec.internal.interfaces.ims.core.handler.IMiscHandler
    public void unregisterForEcholocateEvent(Handler handler) {
        Log.i(LOG_TAG, "unregisterForEcholocateEvent:");
        this.mEcholocateEventRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.MiscHandler, com.sec.internal.interfaces.ims.core.handler.IMiscHandler
    public void registerForXqMtripEvent(Handler handler, int i, Object obj) {
        this.mXqMtripEventRegistrants.addUnique(handler, i, obj);
    }

    @Override // com.sec.internal.ims.core.handler.MiscHandler, com.sec.internal.interfaces.ims.core.handler.IMiscHandler
    public void unregisterForXqMtripEvent(Handler handler) {
        this.mXqMtripEventRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.secims.StackIF.MiscEventListener
    public void onAlarmRequested(int i, int i2, boolean z) {
        Log.i(LOG_TAG, "onAlarmRequested: delay=" + i2 + " id=" + i + " isKeepAlive= " + z);
        sendMessage(obtainMessage(1, i, i2, Boolean.valueOf(z)));
    }

    @Override // com.sec.internal.ims.core.handler.secims.StackIF.MiscEventListener
    public void onAlarmCancelled(int i) {
        Log.i(LOG_TAG, "onAlarmCancelled: id=" + i);
        sendMessage(obtainMessage(2, i, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendATCmdResponse(String str) {
        Log.i(LOG_TAG, "send AT CMD response : " + str);
        Intent intent = new Intent(ATCMD_RESULT_ACTION);
        Bundle bundle = new Bundle();
        bundle.putString(ATCMD_RESULT_KEY, str);
        intent.putExtras(bundle);
        this.mContext.sendBroadcast(intent);
    }
}
