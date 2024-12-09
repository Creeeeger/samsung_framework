package com.sec.internal.ims.servicemodules.ss;

import android.os.Bundle;
import android.os.Message;
import android.os.Parcelable;
import android.telephony.ims.ImsSsInfo;
import android.text.TextUtils;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.State;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.ims.servicemodules.ss.CallBarringData;
import com.sec.internal.ims.servicemodules.ss.CallForwardingData;
import com.sec.internal.ims.servicemodules.ss.SsRuleData;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ResponseState extends State {
    public static final String LOG_TAG = UtStateMachine.LOG_TAG;
    HttpResponseParams mResponseData = null;
    private UtStateMachine mUsm;

    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public void enter() {
    }

    public ResponseState(UtStateMachine utStateMachine) {
        this.mUsm = utStateMachine;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
    public boolean processMessage(Message message) {
        UtLog.i(UtStateMachine.LOG_TAG, this.mUsm.mPhoneId, "ResponseState::ProcessMessage " + UtLog.getStringMessage(message.what));
        Mno simMno = SimUtil.getSimMno(this.mUsm.mPhoneId);
        int i = message.what;
        if (i == 2) {
            this.mUsm.disconnectPdn();
        } else if (i == 3) {
            this.mUsm.sendMessage(12);
        } else if (i != 100) {
            switch (i) {
                case 10:
                    this.mResponseData = (HttpResponseParams) message.obj;
                    handleHttpResult();
                    break;
                case 11:
                    this.mUsm.mIsUtConnectionError = true;
                    int i2 = message.arg1;
                    if (simMno.isChn()) {
                        this.mUsm.sendMessage(12, i2, 0, message.obj);
                        break;
                    } else {
                        this.mUsm.sendMessage(12, i2);
                        break;
                    }
                case 12:
                    if (simMno == Mno.CTC || simMno == Mno.CTCMO) {
                        UtStateMachine utStateMachine = this.mUsm;
                        if (utStateMachine.mIsSuspended) {
                            utStateMachine.mIsFailedBySuspended = true;
                            utStateMachine.transitionTo(utStateMachine.mRequestState);
                        }
                    }
                    return false;
                case 13:
                    responseGetFromCache();
                    break;
                case 14:
                case 15:
                    return false;
            }
        } else {
            this.mUsm.sendMessage(12, 1016);
        }
        return true;
    }

    private void handleHttpResult() {
        UtStateMachine utStateMachine;
        int i;
        if (this.mResponseData.getStatusCode() == 200 || this.mResponseData.getStatusCode() == 201) {
            if (UtUtils.isPutRequest(this.mUsm.mProfile.type)) {
                responsePutResult();
                return;
            }
            if (!TextUtils.isEmpty(this.mResponseData.getDataString())) {
                responseGetResult();
                return;
            }
            UtStateMachine utStateMachine2 = this.mUsm;
            if (utStateMachine2.mProfile.type == 116 && utStateMachine2.mIsGetSdBy404) {
                recoverUtProfileAfter404Retry();
            }
            this.mUsm.sendMessage(12, this.mResponseData.getStatusCode());
            return;
        }
        if (this.mResponseData.getStatusCode() == 404) {
            UtStateMachine utStateMachine3 = this.mUsm;
            if (utStateMachine3.mFeature.supportSimservsRetry && !UtUtils.isPutRequest(utStateMachine3.mProfile.type)) {
                UtStateMachine utStateMachine4 = this.mUsm;
                if (utStateMachine4.mProfile.type != 116) {
                    UtLog.i(UtStateMachine.LOG_TAG, utStateMachine4.mPhoneId, "Requested document is not found. Get simserv document.");
                    UtStateMachine utStateMachine5 = this.mUsm;
                    utStateMachine5.mIsGetSdBy404 = true;
                    UtProfile utProfile = utStateMachine5.mProfile;
                    utStateMachine5.mPrevGetType = utProfile.type;
                    utProfile.type = 116;
                    sendHttp();
                    return;
                }
            }
        } else if (this.mResponseData.getStatusCode() == 412 && (i = (utStateMachine = this.mUsm).mCount412RetryDone) < 3) {
            int i2 = utStateMachine.mProfile.type;
            if (i2 == 101 || i2 == 103 || i2 == 105) {
                utStateMachine.mPrevGetType = -1;
                utStateMachine.mCount412RetryDone = i + 1;
                utStateMachine.clearCachedSsData(i2);
                sendHttp();
                return;
            }
            if (i2 == 115) {
                utStateMachine.mIsGetAfter412 = true;
                utStateMachine.mCount412RetryDone = i + 1;
                sendHttp();
                return;
            }
        }
        UtStateMachine utStateMachine6 = this.mUsm;
        if (utStateMachine6.mProfile.type == 116 && utStateMachine6.mIsGetSdBy404) {
            recoverUtProfileAfter404Retry();
        }
        if (!TextUtils.isEmpty(this.mResponseData.getDataString())) {
            this.mUsm.sendMessage(12, this.mResponseData.getStatusCode(), 0, this.mResponseData.getDataString());
        } else {
            this.mUsm.sendMessage(12, this.mResponseData.getStatusCode());
        }
    }

    private void responsePutResult() {
        UtStateMachine utStateMachine = this.mUsm;
        UtProfile utProfile = utStateMachine.mProfile;
        int i = utProfile.type;
        if (i == 109) {
            if (SimUtil.getMno(utStateMachine.mPhoneId).isOneOf(Mno.VINAPHONE)) {
                UtStateMachine utStateMachine2 = this.mUsm;
                utStateMachine2.setUserSet(utStateMachine2.mPhoneId, "ss_clir_pref", utStateMachine2.mProfile.condition);
            }
        } else if (i == 101 && utProfile.action == 3) {
            utStateMachine.mPreviousCFCache.copyRule(utStateMachine.mCFCache.getRule(utProfile.condition, UtUtils.convertToMedia(utProfile.serviceClass)));
        } else if (i == 105 && utStateMachine.mIsGetForAllCb) {
            utStateMachine.mIsGetForAllCb = false;
            utStateMachine.mPrevGetType = -1;
            utProfile.type = 103;
            utProfile.condition = 9;
            utStateMachine.transitionTo(utStateMachine.mRequestState);
            this.mUsm.sendMessage(1);
            return;
        }
        UtStateMachine utStateMachine3 = this.mUsm;
        if (utStateMachine3.mSeparatedCFNRY && !utStateMachine3.mSeparatedMedia) {
            utStateMachine3.transitionTo(utStateMachine3.mRequestState);
            this.mUsm.sendMessage(7);
            this.mUsm.mSeparatedCFNRY = false;
            return;
        }
        if (utStateMachine3.mSeparatedCFNL) {
            utStateMachine3.transitionTo(utStateMachine3.mRequestState);
            this.mUsm.sendMessage(6);
            this.mUsm.mSeparatedCFNL = false;
            return;
        }
        if (utStateMachine3.mSeparatedCfAll) {
            IMSLog.i(UtStateMachine.LOG_TAG, utStateMachine3.mPhoneId, "mUsm.mProfile.condition : " + this.mUsm.mProfile.condition);
            UtStateMachine utStateMachine4 = this.mUsm;
            int i2 = utStateMachine4.mProfile.condition;
            if (i2 == 3 || i2 == 6) {
                utStateMachine4.mSeparatedCfAll = false;
            } else {
                utStateMachine4.removeMessages(15);
                this.mUsm.mThisSm.sendMessageDelayed(15, 1017, 32500L);
                UtStateMachine utStateMachine5 = this.mUsm;
                UtProfile utProfile2 = utStateMachine5.mProfile;
                if (utProfile2.condition == 7) {
                    utProfile2.condition = 2;
                }
                utStateMachine5.transitionTo(utStateMachine5.mRequestState);
                this.mUsm.sendMessage(8);
                return;
            }
        }
        UtStateMachine utStateMachine6 = this.mUsm;
        if (utStateMachine6.mSeparatedMedia) {
            utStateMachine6.transitionTo(utStateMachine6.mRequestState);
            this.mUsm.sendMessage(9);
            this.mUsm.mSeparatedMedia = false;
        } else {
            if (utStateMachine6.mFeature.isNeedFirstGet) {
                utStateMachine6.clearCachedSsData(-1);
            }
            UtStateMachine utStateMachine7 = this.mUsm;
            utStateMachine7.mCount412RetryDone = 0;
            utStateMachine7.completeUtRequest();
        }
    }

    private void cfInfoFromCache() {
        ArrayList arrayList = new ArrayList();
        UtStateMachine utStateMachine = this.mUsm;
        utStateMachine.isGetBeforePut = false;
        int i = utStateMachine.mProfile.condition;
        if (i == 4 || i == 5) {
            cfAllInfoFromCache(arrayList, null);
            if (arrayList.isEmpty()) {
                IMSLog.i(UtStateMachine.LOG_TAG, this.mUsm.mPhoneId, "There is no matched rule for CF ALL.");
                Bundle bundle = new Bundle();
                bundle.putInt("status", 0);
                bundle.putInt(UtConstant.SERVICECLASS, this.mUsm.mProfile.serviceClass);
                bundle.putInt(UtConstant.CONDITION, this.mUsm.mProfile.condition);
                this.mUsm.completeUtRequest(bundle);
                return;
            }
        } else {
            if (utStateMachine.mFeature.support_media) {
                for (MEDIA media : MEDIA.values()) {
                    if (media != MEDIA.ALL) {
                        UtStateMachine utStateMachine2 = this.mUsm;
                        CallForwardingData.Rule rule = utStateMachine2.mCFCache.getRule(utStateMachine2.mProfile.condition, media);
                        IMSLog.i(UtStateMachine.LOG_TAG, this.mUsm.mPhoneId, "GET RULE ID [" + media + "] " + rule.ruleId);
                        if (!TextUtils.isEmpty(rule.ruleId)) {
                            arrayList.add(makeCFBundle(rule));
                        }
                    }
                }
            } else {
                CallForwardingData callForwardingData = utStateMachine.mCFCache;
                MEDIA media2 = MEDIA.ALL;
                CallForwardingData.Rule rule2 = callForwardingData.getRule(i, media2);
                IMSLog.i(UtStateMachine.LOG_TAG, this.mUsm.mPhoneId, "GET RULE ID [" + media2 + "] " + rule2.ruleId);
                if (!TextUtils.isEmpty(rule2.ruleId)) {
                    arrayList.add(makeCFBundle(rule2));
                }
                if (arrayList.isEmpty()) {
                    for (MEDIA media3 : MEDIA.values()) {
                        if (media3 != MEDIA.ALL) {
                            UtStateMachine utStateMachine3 = this.mUsm;
                            CallForwardingData.Rule rule3 = utStateMachine3.mCFCache.getRule(utStateMachine3.mProfile.condition, media3);
                            IMSLog.i(UtStateMachine.LOG_TAG, this.mUsm.mPhoneId, "GET RULE ID [" + media3 + "] " + rule3.ruleId);
                            if (!TextUtils.isEmpty(rule3.ruleId)) {
                                arrayList.add(makeCFBundle(rule3));
                            }
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                UtStateMachine utStateMachine4 = this.mUsm;
                CallForwardingData callForwardingData2 = utStateMachine4.mCFCache;
                int i2 = utStateMachine4.mProfile.condition;
                MEDIA media4 = MEDIA.ALL;
                CallForwardingData.Rule rule4 = callForwardingData2.getRule(i2, media4);
                IMSLog.i(UtStateMachine.LOG_TAG, this.mUsm.mPhoneId, "GET RULE ID [" + media4 + "] " + rule4.ruleId);
                arrayList.add(makeCFBundle(rule4));
            }
        }
        UtStateMachine utStateMachine5 = this.mUsm;
        utStateMachine5.mHasCFCache = true;
        utStateMachine5.removeMessages(5);
        this.mUsm.sendMessageDelayed(5, 1000L);
        this.mUsm.completeUtRequest((Bundle[]) arrayList.toArray(new Bundle[0]));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void cfAllInfoFromCache(List<Bundle> list, CallForwardingData.Rule rule) {
        boolean z;
        boolean z2;
        int i = this.mUsm.mProfile.condition == 5 ? 1 : 0;
        CallForwardingData.Rule rule2 = rule;
        for (MEDIA media : MEDIA.values()) {
            IMSLog.i(UtStateMachine.LOG_TAG, this.mUsm.mPhoneId, "MEDIA = " + media);
            String str = null;
            int i2 = i;
            boolean z3 = -1;
            while (i2 < 4) {
                rule2 = this.mUsm.mCFCache.getRule(i2, media);
                IMSLog.i(UtStateMachine.LOG_TAG, this.mUsm.mPhoneId, "GET RULE ID " + i2 + " = " + rule2.ruleId);
                if (rule2.ruleId != null) {
                    if (z3 == -1) {
                        z2 = rule2.conditions.state;
                    } else {
                        z2 = z3;
                        if (z3 != rule2.conditions.state) {
                        }
                    }
                    if (z2) {
                        if (str == null) {
                            str = rule2.fwdElm.target;
                        } else if (!str.equals(rule2.fwdElm.target)) {
                        }
                    }
                    i2++;
                    z3 = z2;
                }
                z = false;
            }
            z = true;
            if (z) {
                IMSLog.i(UtStateMachine.LOG_TAG, this.mUsm.mPhoneId, "This target number is valid for CF ALL.");
                list.add(makeCFBundle(rule2));
            }
        }
    }

    private void responseGetFromCache() {
        CallBarringData callBarringData;
        int i = this.mUsm.mProfile.type;
        if (i == 100) {
            cfInfoFromCache();
            return;
        }
        if (i == 102 || i == 104) {
            List<Bundle> arrayList = new ArrayList<>();
            UtStateMachine utStateMachine = this.mUsm;
            UtProfile utProfile = utStateMachine.mProfile;
            if (utProfile.type == 104) {
                callBarringData = utStateMachine.mOCBCache;
            } else {
                callBarringData = utStateMachine.mICBCache;
            }
            UtFeatureData utFeatureData = utStateMachine.mFeature;
            if (utFeatureData.support_media && !utFeatureData.noMediaForCB) {
                for (MEDIA media : MEDIA.values()) {
                    if (media != MEDIA.ALL) {
                        CallBarringData.Rule rule = callBarringData.getRule(this.mUsm.mProfile.condition, media);
                        IMSLog.i(UtStateMachine.LOG_TAG, this.mUsm.mPhoneId, "GET RULE ID [" + media + "] " + rule.ruleId);
                        if (!TextUtils.isEmpty(rule.ruleId)) {
                            arrayList.add(makeCBBundle(rule));
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    int i2 = this.mUsm.mProfile.condition;
                    MEDIA media2 = MEDIA.ALL;
                    CallBarringData.Rule rule2 = callBarringData.getRule(i2, media2);
                    IMSLog.i(LOG_TAG, this.mUsm.mPhoneId, "GET RULE ID [" + media2 + "] " + rule2.ruleId);
                    if (!TextUtils.isEmpty(rule2.ruleId)) {
                        arrayList.add(makeCBBundle(rule2));
                    }
                }
            } else {
                int i3 = utProfile.condition;
                MEDIA media3 = MEDIA.ALL;
                CallBarringData.Rule rule3 = callBarringData.getRule(i3, media3);
                IMSLog.i(UtStateMachine.LOG_TAG, this.mUsm.mPhoneId, "GET RULE ID [" + media3 + "] " + rule3.ruleId);
                if (this.mUsm.mProfile.condition == 10) {
                    arrayList = createRuleId(callBarringData);
                } else if (!TextUtils.isEmpty(rule3.ruleId)) {
                    arrayList.add(makeCBBundle(rule3));
                }
                if (arrayList.isEmpty()) {
                    for (MEDIA media4 : MEDIA.values()) {
                        if (media4 != MEDIA.ALL) {
                            CallBarringData.Rule rule4 = callBarringData.getRule(this.mUsm.mProfile.condition, media4);
                            IMSLog.i(UtStateMachine.LOG_TAG, this.mUsm.mPhoneId, "GET RULE ID [" + media4 + "] " + rule4.ruleId);
                            if (!TextUtils.isEmpty(rule4.ruleId)) {
                                arrayList.add(makeCBBundle(rule4));
                            }
                        }
                    }
                }
            }
            UtStateMachine utStateMachine2 = this.mUsm;
            if (utStateMachine2.mProfile.type == 104) {
                utStateMachine2.mHasOCBCache = true;
            } else {
                utStateMachine2.mHasICBCache = true;
            }
            utStateMachine2.removeMessages(5);
            this.mUsm.sendMessageDelayed(5, 1000L);
            this.mUsm.completeUtRequest((Bundle[]) arrayList.toArray(new Bundle[0]));
        }
    }

    public void responseGetResult() {
        UtXmlParse utXmlParse = new UtXmlParse();
        UtLog.i(UtStateMachine.LOG_TAG, this.mUsm.mPhoneId, "Print GET Result" + IMSLog.numberChecker(this.mResponseData.getDataString()));
        UtStateMachine utStateMachine = this.mUsm;
        UtProfile utProfile = utStateMachine.mProfile;
        int i = utProfile.type;
        if (i == 100) {
            utStateMachine.mCFCache = utXmlParse.parseCallForwarding(this.mResponseData.getDataString(), SimUtil.getMno(this.mUsm.mPhoneId));
            UtStateMachine utStateMachine2 = this.mUsm;
            if (utStateMachine2.isGetBeforePut) {
                utStateMachine2.mProfile.type = 101;
                utStateMachine2.isGetBeforePut = false;
                utStateMachine2.mHasCFCache = false;
                sendHttp();
                return;
            }
            responseGetFromCache();
            return;
        }
        if (i == 102 || i == 104) {
            CallBarringData parseCallBarring = utXmlParse.parseCallBarring(this.mResponseData.getDataString());
            UtStateMachine utStateMachine3 = this.mUsm;
            UtProfile utProfile2 = utStateMachine3.mProfile;
            if (utProfile2.type == 104) {
                utStateMachine3.mOCBCache = parseCallBarring;
                if (utStateMachine3.isGetBeforePut) {
                    utProfile2.type = 105;
                    utStateMachine3.isGetBeforePut = false;
                    utStateMachine3.mHasOCBCache = false;
                    sendHttp();
                    return;
                }
            } else {
                utStateMachine3.mICBCache = parseCallBarring;
                if (utStateMachine3.isGetBeforePut) {
                    utProfile2.type = 103;
                    utStateMachine3.isGetBeforePut = false;
                    utStateMachine3.mHasICBCache = false;
                    sendHttp();
                    return;
                }
            }
            responseGetFromCache();
            return;
        }
        if (i == 106) {
            Parcelable build = new ImsSsInfo.Builder(utXmlParse.parseCallWaitingOrClip(this.mResponseData.getDataString()) ? 1 : 0).setIncomingCommunicationBarringNumber("").build();
            Bundle bundle = new Bundle();
            bundle.putParcelable(UtConstant.IMSSSINFO, build);
            this.mUsm.completeUtRequest(bundle);
            return;
        }
        if (i == 108) {
            int[] iArr = {utXmlParse.parseClir(this.mResponseData.getDataString()), 4};
            if (SimUtil.getMno(this.mUsm.mPhoneId).isOneOf(Mno.VINAPHONE) && iArr[0] != 1) {
                UtStateMachine utStateMachine4 = this.mUsm;
                iArr[0] = utStateMachine4.getUserSetToInt(utStateMachine4.mPhoneId, "ss_clir_pref", 0);
            }
            Bundle bundle2 = new Bundle();
            bundle2.putIntArray(UtConstant.QUERYCLIR, iArr);
            this.mUsm.completeUtRequest(bundle2);
            return;
        }
        if (i == 114) {
            if (utStateMachine.mIsGetAfter412) {
                utProfile.type = 115;
                utStateMachine.mIsGetAfter412 = false;
                sendHttp();
                return;
            } else {
                this.mUsm.completeUtRequest(utXmlParse.parseCallWaitingOrClip(this.mResponseData.getDataString()));
                return;
            }
        }
        if (i == 116 && !handleResponseSd()) {
            this.mUsm.completeUtRequest();
        }
    }

    private boolean handleResponseSd() {
        UtStateMachine utStateMachine = this.mUsm;
        int i = utStateMachine.mPrevGetType;
        if (i == -1) {
            return false;
        }
        if (utStateMachine.isGetBeforePut) {
            utStateMachine.isGetBeforePut = false;
            if (i == 104) {
                utStateMachine.mProfile.type = 105;
                utStateMachine.mHasOCBCache = false;
                sendHttp();
                return true;
            }
            if (i == 102) {
                utStateMachine.mProfile.type = 103;
                utStateMachine.mHasICBCache = false;
                sendHttp();
                return true;
            }
            if (i == 100) {
                utStateMachine.mProfile.type = 101;
                utStateMachine.mHasCFCache = false;
                sendHttp();
                return true;
            }
            IMSLog.i(UtStateMachine.LOG_TAG, utStateMachine.mPhoneId, "Unknown access. mUsm.mPrevGetType: " + UtLog.getStringRequestType(this.mUsm.mPrevGetType));
            completeGetSdByRetry();
            return true;
        }
        if (utStateMachine.mIsGetSdBy404) {
            completeGetSdByRetry();
            return true;
        }
        IMSLog.i(UtStateMachine.LOG_TAG, utStateMachine.mPhoneId, "Unknown access. mUsm.mPrevGetType: " + UtLog.getStringRequestType(this.mUsm.mPrevGetType));
        completeGetSdByRetry();
        return true;
    }

    private void sendHttp() {
        UtStateMachine utStateMachine = this.mUsm;
        utStateMachine.transitionTo(utStateMachine.mRequestState);
        this.mUsm.sendMessage(1);
    }

    private void completeGetSdByRetry() {
        recoverUtProfileAfter404Retry();
        UtStateMachine utStateMachine = this.mUsm;
        int i = utStateMachine.mProfile.type;
        if (i == 100 || i == 102 || i == 104) {
            Bundle bundle = new Bundle();
            bundle.putInt("status", 0);
            bundle.putInt(UtConstant.SERVICECLASS, this.mUsm.mProfile.serviceClass);
            bundle.putInt(UtConstant.CONDITION, this.mUsm.mProfile.condition);
            this.mUsm.completeUtRequest(bundle);
            return;
        }
        if (i == 106) {
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(UtConstant.IMSSSINFO, new ImsSsInfo.Builder(0).setIncomingCommunicationBarringNumber("").build());
            this.mUsm.completeUtRequest(bundle2);
        } else if (i == 108) {
            Bundle bundle3 = new Bundle();
            bundle3.putIntArray(UtConstant.QUERYCLIR, new int[]{0, 4});
            this.mUsm.completeUtRequest(bundle3);
        } else if (i == 114) {
            utStateMachine.completeUtRequest(true);
        } else {
            utStateMachine.completeUtRequest();
        }
    }

    private void recoverUtProfileAfter404Retry() {
        UtStateMachine utStateMachine = this.mUsm;
        utStateMachine.mProfile.type = utStateMachine.mPrevGetType;
        utStateMachine.mPrevGetType = -1;
        utStateMachine.mIsGetSdBy404 = false;
    }

    private List<Bundle> createRuleId(CallBarringData callBarringData) {
        ArrayList arrayList = new ArrayList();
        Iterator<SsRuleData.SsRule> it = callBarringData.rules.iterator();
        while (it.hasNext()) {
            CallBarringData.Rule rule = (CallBarringData.Rule) it.next();
            if (rule.conditions.condition == 10 && rule.ruleId.contains("DBL")) {
                Bundle bundle = new Bundle();
                StringBuilder sb = new StringBuilder();
                boolean z = false;
                for (String str : rule.target) {
                    if (z) {
                        sb.append("$");
                    }
                    sb.append(str);
                    z = true;
                }
                bundle.putString("number", rule.ruleId + "," + sb.toString());
                if (rule.conditions.state) {
                    bundle.putInt("status", 1);
                } else {
                    bundle.putInt("status", 0);
                }
                bundle.putInt(UtConstant.CONDITION, rule.conditions.condition);
                arrayList.add(bundle);
            }
        }
        return arrayList;
    }

    private Bundle makeCFBundle(CallForwardingData.Rule rule) {
        int i;
        Mno simMno = SimUtil.getSimMno(this.mUsm.mPhoneId);
        Bundle bundle = new Bundle();
        if (rule.conditions.state && !TextUtils.isEmpty(rule.fwdElm.target)) {
            bundle.putInt("status", 1);
        } else {
            bundle.putInt("status", 0);
        }
        bundle.putInt(UtConstant.CONDITION, this.mUsm.mProfile.condition);
        if (!TextUtils.isEmpty(rule.fwdElm.target)) {
            if ("+".contains(rule.fwdElm.target)) {
                bundle.putInt(UtConstant.TOA, 145);
            } else {
                bundle.putInt(UtConstant.TOA, 129);
            }
            String numberFromURI = UtUtils.getNumberFromURI(rule.fwdElm.target);
            if ((simMno == Mno.SINGTEL || simMno == Mno.VODAFONE_QATAR) && numberFromURI.charAt(0) != '+') {
                numberFromURI = UtUtils.makeInternationalNumber(numberFromURI, simMno);
            }
            if (simMno == Mno.KDDI && numberFromURI.charAt(0) == '+') {
                numberFromURI = UtUtils.removeUriPlusPrefix(numberFromURI, "+81");
            }
            bundle.putString("number", numberFromURI);
        }
        int doconvertMediaTypeToSsClass = UtUtils.doconvertMediaTypeToSsClass(rule.conditions.media);
        if (simMno == Mno.ATT && doconvertMediaTypeToSsClass == 255) {
            bundle.putInt(UtConstant.SERVICECLASS, 1);
        } else if ((simMno == Mno.VODAFONE_SPAIN || simMno == Mno.SMARTONE || simMno == Mno.YOIGO_SPAIN) && doconvertMediaTypeToSsClass == 255) {
            bundle.putInt(UtConstant.SERVICECLASS, 49);
        } else {
            bundle.putInt(UtConstant.SERVICECLASS, doconvertMediaTypeToSsClass);
        }
        CallForwardingData callForwardingData = this.mUsm.mCFCache;
        if (callForwardingData != null && (i = callForwardingData.replyTimer) != 0) {
            bundle.putInt("NoReplyTimer", i);
        }
        return bundle;
    }

    private Bundle makeCBBundle(CallBarringData.Rule rule) {
        Bundle bundle = new Bundle();
        if (rule.conditions.state) {
            bundle.putInt("status", 1);
        } else {
            bundle.putInt("status", 0);
        }
        bundle.putInt(UtConstant.CONDITION, rule.conditions.condition);
        bundle.putInt(UtConstant.SERVICECLASS, UtUtils.doconvertMediaTypeToSsClass(rule.conditions.media));
        return bundle;
    }
}
