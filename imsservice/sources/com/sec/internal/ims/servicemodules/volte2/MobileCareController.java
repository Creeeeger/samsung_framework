package com.sec.internal.ims.servicemodules.volte2;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.provider.Telephony;
import android.telephony.SignalStrength;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import android.util.Log;
import com.samsung.android.feature.SemCscFeature;
import com.sec.ims.volte2.data.VolteConstants;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.os.SecFeature;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.os.SignalStrengthWrapper;
import com.sec.internal.ims.core.RegistrationEvents;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.diagnosis.ImsLogAgentUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.log.IMSLog;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class MobileCareController {
    public static final String ACTIONCALLDROP = "com.samsung.intent.action.IMS_CALL_DROP";
    public static final String ACTIONQUALITYSTATISTICS = "com.sec.android.statistics.VZW_QUALITY_STATISTICS";
    public static final String CALLTYPE = "CallType";
    public static final String ERRORREASON = "ErrorReason";
    public static final String ERRORSTRING = "ErrorString";
    public static final String EVENTNAME = "H015";
    public static final String EVENTTYPE = "event_type";
    private static final String LOG_TAG = "MobileCareController";
    public static final String NETWORKTYPE = "NetworkType";
    public static final String RSRP = "RSRP";
    public static final String RSRQ = "RSRQ";
    public static final String TIMEINFO = "TimeInfo";
    private final Context mContext;
    private Set<Integer> mErrorSet = new HashSet();
    private int mLteBand = -1;
    private int[] mLteRsrp;
    private int[] mLteRsrq;
    protected boolean mQualityStatisticsValid;
    private int[] mSignalLevel;

    public boolean isEnabled() {
        return true;
    }

    public MobileCareController(Context context) {
        this.mQualityStatisticsValid = false;
        this.mContext = context;
        initErrorList();
        int size = SimManagerFactory.getAllSimManagers().size();
        int[] iArr = new int[size];
        this.mLteRsrp = iArr;
        this.mLteRsrq = new int[size];
        this.mSignalLevel = new int[size];
        Arrays.fill(iArr, -1);
        Arrays.fill(this.mLteRsrq, -1);
        Arrays.fill(this.mSignalLevel, -1);
        if (SemCscFeature.getInstance().getBoolean(SecFeature.CSC.TAG_CSCFEATURE_COMMON_SUPPORTHUXDEVICEQUALITYSTATISTICS)) {
            this.mQualityStatisticsValid = true;
        }
    }

    private void initErrorList() {
        this.mErrorSet.add(400);
        this.mErrorSet.add(405);
        this.mErrorSet.add(Integer.valueOf(RegistrationEvents.EVENT_DISCONNECT_PDN_BY_VOLTE_DISABLED));
        this.mErrorSet.add(408);
        this.mErrorSet.add(Integer.valueOf(NSDSNamespaces.NSDSHttpResponseCode.TEMPORARILY_UNAVAILABLE));
        this.mErrorSet.add(484);
        this.mErrorSet.add(500);
        this.mErrorSet.add(580);
        this.mErrorSet.add(Integer.valueOf(Id.REQUEST_VSH_STOP_SESSION));
        this.mErrorSet.add(1108);
        this.mErrorSet.add(1114);
        this.mErrorSet.add(Integer.valueOf(Id.REQUEST_SIP_DIALOG_OPEN));
        this.mErrorSet.add(1202);
        this.mErrorSet.add(1203);
        this.mErrorSet.add(1204);
        this.mErrorSet.add(Integer.valueOf(Id.REQUEST_CHATBOT_ANONYMIZE));
        this.mErrorSet.add(Integer.valueOf(NSDSNamespaces.NSDSDefinedResponseCode.MANAGE_SERVICE_REMOVE_INVALID_DEVICE_STATUS));
        this.mErrorSet.add(Integer.valueOf(NSDSNamespaces.NSDSDefinedResponseCode.MANAGE_SERVICE_REMOVE_INVALID_SVC_INST_ID));
    }

    public void sendMobileCareEvent(int i, int i2, int i3, String str, boolean z) {
        if (this.mErrorSet.contains(Integer.valueOf(i3))) {
            boolean isVideoCall = ImsCallUtil.isVideoCall(i2);
            Log.i(LOG_TAG, "sendMobileCareEvent : isVideo [" + isVideoCall + "] isePDG [" + z + "] mRSRP [" + this.mLteRsrp[i] + "] mRSRQ [" + this.mLteRsrq[i] + "] mErrorCode [" + i3 + "] mErrorDesc [" + str + "]");
            Intent intent = new Intent();
            intent.setAction(ACTIONCALLDROP);
            intent.putExtra(CALLTYPE, isVideoCall ? 1 : 0);
            intent.putExtra(NETWORKTYPE, z ? 1 : 0);
            intent.putExtra(TIMEINFO, getCurrentTimeShort());
            intent.putExtra(ERRORREASON, i3);
            if (str == null) {
                str = VolteConstants.ErrorCode.toString(i3);
            }
            intent.putExtra(ERRORSTRING, str);
            intent.putExtra("RSRP", this.mLteRsrp[i]);
            intent.putExtra("RSRQ", this.mLteRsrq[i]);
            this.mContext.sendBroadcast(intent);
            return;
        }
        Log.i(LOG_TAG, "sendMobileCareEvent : Don't need to send event");
    }

    public void sendQualityStatisticsEvent() {
        if (this.mQualityStatisticsValid) {
            Log.i(LOG_TAG, "sendQualityStatisticsEvent");
            Intent intent = new Intent();
            intent.setAction(ACTIONQUALITYSTATISTICS);
            intent.putExtra(EVENTTYPE, EVENTNAME);
            intent.setPackage(ImsConstants.Packages.PACKAGE_QUALITY_DATALOG);
            this.mContext.sendBroadcast(intent);
        }
    }

    public void sendTelephonyNotResponding(List<ImsCallSession> list) {
        StringBuilder sb = new StringBuilder("TERMINATE,");
        sb.append(list.size());
        int i = 0;
        if (list.size() > 0) {
            for (ImsCallSession imsCallSession : list) {
                if (imsCallSession != null) {
                    sb.append(",");
                    sb.append(imsCallSession.getSessionId());
                    sb.append(",");
                    sb.append(imsCallSession.getCallState());
                    sb.append(",");
                    sb.append(imsCallSession.getCallProfile() != null ? Integer.valueOf(imsCallSession.getCallProfile().getCallType()) : "");
                    i = imsCallSession.getPhoneId();
                }
            }
        } else {
            sb.append("REQUESTED_BY_TELEPHONY");
        }
        IMSLog.c(LogClass.REGI_DO_RECOVERY_ACTION, sb.toString(), true);
        ContentValues contentValues = new ContentValues();
        contentValues.put(DiagnosisConstants.PSCI_KEY_FAIL_CODE, (Integer) 1123);
        ImsLogAgentUtil.storeLogToAgent(i, this.mContext, DiagnosisConstants.FEATURE_PSCI, contentValues);
        ImsLogAgentUtil.requestToSendStoredLog(i, this.mContext, DiagnosisConstants.FEATURE_PSCI);
        Log.i(LOG_TAG, "terminate not responding session");
    }

    public void sendMissedCallSms(Intent intent) {
        SmsMessage smsMessage;
        String messageBody;
        SmsMessage[] messagesFromIntent = Telephony.Sms.Intents.getMessagesFromIntent(intent);
        int slotId = SimManagerFactory.getSlotId(intent.getIntExtra(PhoneConstants.SUBSCRIPTION_KEY, -1));
        String phraseByMno = ImsCallUtil.getPhraseByMno(this.mContext, slotId);
        if (messagesFromIntent == null || messagesFromIntent[0] == null || TextUtils.isEmpty(phraseByMno) || (messageBody = (smsMessage = messagesFromIntent[0]).getMessageBody()) == null || !messageBody.contains(phraseByMno)) {
            return;
        }
        IMSLog.c(LogClass.SMS_RECEIVE_MISSED_CALL, slotId + ", " + smsMessage.getTimestampMillis());
        ContentValues contentValues = new ContentValues();
        contentValues.put(DiagnosisConstants.PSCI_KEY_FAIL_CODE, (Integer) 1803);
        ImsLogAgentUtil.storeLogToAgent(slotId, this.mContext, DiagnosisConstants.FEATURE_PSCI, contentValues);
        ImsLogAgentUtil.requestToSendStoredLog(slotId, this.mContext, DiagnosisConstants.FEATURE_PSCI);
    }

    private String getCurrentTimeShort() {
        Calendar calendar = Calendar.getInstance();
        return new DecimalFormat("00").format(calendar.get(11)) + ":" + new DecimalFormat("00").format(calendar.get(12)) + ":" + new DecimalFormat("00").format(calendar.get(13)) + "." + new DecimalFormat(NSDSNamespaces.NSDSMigration.DEFAULT_KEY).format(calendar.get(14));
    }

    public void onSignalStrengthsChanged(int i, SignalStrength signalStrength) {
        if (signalStrength != null) {
            SignalStrengthWrapper signalStrengthWrapper = new SignalStrengthWrapper(signalStrength);
            this.mLteRsrp[i] = signalStrengthWrapper.getLteRsrp();
            this.mLteRsrq[i] = signalStrengthWrapper.getLteRsrq();
            this.mSignalLevel[i] = signalStrengthWrapper.getLevel();
            return;
        }
        Log.i(LOG_TAG, "getLteSignalStrength is null");
        this.mLteRsrp[i] = -1;
        this.mLteRsrq[i] = -1;
        this.mSignalLevel[i] = -1;
    }

    public void onLteBancChanged(String str) {
        try {
            this.mLteBand = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            this.mLteBand = -1;
        }
        Log.i(LOG_TAG, "Received LTE Band is " + str + ", mLteBand is " + this.mLteBand);
    }

    public int getLteRsrp(int i) {
        return this.mLteRsrp[i];
    }

    public int getLteRsrq(int i) {
        return this.mLteRsrq[i];
    }

    public int getLteBand() {
        return this.mLteBand;
    }

    public int getSignalLevel(int i) {
        return this.mSignalLevel[i];
    }
}
