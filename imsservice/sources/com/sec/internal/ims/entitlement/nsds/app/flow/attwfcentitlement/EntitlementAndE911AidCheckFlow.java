package com.sec.internal.ims.entitlement.nsds.app.flow.attwfcentitlement;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.provider.Settings;
import android.text.TextUtils;
import com.sec.ims.extensions.ContextExt;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.entitilement.data.LineDetail;
import com.sec.internal.constants.ims.entitilement.data.LocAndTcWebSheetData;
import com.sec.internal.constants.ims.entitilement.data.ResponseGetMSISDN;
import com.sec.internal.constants.ims.entitilement.data.ResponseManageLocationAndTC;
import com.sec.internal.constants.ims.entitilement.data.ResponseManagePushToken;
import com.sec.internal.constants.ims.entitilement.data.ResponseServiceEntitlementStatus;
import com.sec.internal.constants.ims.entitilement.data.ServiceEntitlement;
import com.sec.internal.helper.os.IntentUtil;
import com.sec.internal.ims.entitlement.nsds.app.flow.ericssonnsds.NSDSAppFlowBase;
import com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.BaseFlowImpl;
import com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.BulkEntitlementCheck;
import com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.LocationRegistrationAndTCAcceptanceCheck;
import com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.OperationUsingManagePushToken;
import com.sec.internal.ims.entitlement.nsds.ericssonnsds.persist.PushTokenHelper;
import com.sec.internal.ims.entitlement.storagehelper.NSDSDatabaseHelper;
import com.sec.internal.ims.entitlement.storagehelper.NSDSSharedPrefHelper;
import com.sec.internal.ims.entitlement.util.EntFeatureDetector;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.entitlement.nsds.IEntitlementCheck;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class EntitlementAndE911AidCheckFlow extends NSDSAppFlowBase implements IEntitlementCheck {
    private static final int FAIL_ENTITLEMENT_AUTO_ON = 14;
    private static final int INIT_E911_ADDRESS_UPDATE = 10;
    private static final int INIT_ENTITLEMENT_CHECK = 8;
    private static final int INIT_PUSH_TOKEN_REMOVAL = 9;
    private static final int LOCATION_AND_TC_CHECK = 0;
    private static final String LOG_TAG = EntitlementAndE911AidCheckFlow.class.getSimpleName();
    private static final int OPEN_E911_ADDRESS_UPDATE_WEBSHEET = 5;
    private static final int OPEN_LOC_AND_TC_WEBSHEET = 4;
    private static final int REGISTER_PUSH_TOKEN = 2;
    private static final int REMOVE_PUSH_TOKEN = 3;
    private static final int REMOVE_PUSH_TOKEN_AUTO_ON = 12;
    private static final int REMOVE_PUSH_TOKEN_AUTO_ON_AFTER = 13;
    private static final int RESULT_SVC_PROV_LOC_AND_TC_WEBSHEET = 6;
    private static final int RESULT_UPDATE_LOC_AND_TC_WEBSHEET = 7;
    private static final int RETRY_ENTITLEMENT_AUTO_ON = 11;
    private static final int VOWIFI_ENTITLEMENT_CHECK = 1;
    private final AtomicBoolean mOnSvcProv;
    private String mServerData;
    private String mServerUrl;
    private int mSimSlot;

    private int getLocAndTcWebsheetRespCode(int i) {
        if (i == 0) {
            return NSDSNamespaces.NSDSDefinedResponseCode.SVC_PROVISION_PENDING_ERROR_CODE;
        }
        if (i != 1) {
            return i != 2 ? i != 3 ? NSDSNamespaces.NSDSDefinedResponseCode.SVC_NOT_PROVISIONED_ERROR_CODE : NSDSNamespaces.NSDSDefinedResponseCode.VOID_WEBSHEET_TRANSACTION : NSDSNamespaces.NSDSDefinedResponseCode.LOCATIONANDTC_UPDATE_CANCEL_CODE;
        }
        return 1000;
    }

    private boolean updateResponseResult(boolean z, int i) {
        if (z) {
            return i == 1000 || i == 2303 || i == 2501 || i == 2502 || i == 2302;
        }
        return false;
    }

    public EntitlementAndE911AidCheckFlow(Looper looper, Context context, BaseFlowImpl baseFlowImpl, NSDSDatabaseHelper nSDSDatabaseHelper) {
        super(looper, context, baseFlowImpl, nSDSDatabaseHelper);
        this.mOnSvcProv = new AtomicBoolean(false);
        this.mSimSlot = this.mBaseFlowImpl.getSimManager().getSimSlotIndex();
    }

    private NSDSAppFlowBase.NSDSResponseStatus handleEntitlementCheckResponse(Bundle bundle) {
        NSDSAppFlowBase.NSDSResponseStatus nSDSResponseStatus = new NSDSAppFlowBase.NSDSResponseStatus(-1, NSDSNamespaces.NSDSMethodNamespace.SERVICE_ENTITLEMENT_STATUS, -1);
        if (bundle == null) {
            return nSDSResponseStatus;
        }
        int httpErrRespCode = getHttpErrRespCode(bundle);
        String httpErrRespReason = getHttpErrRespReason(bundle);
        if (httpErrRespCode > 0 || httpErrRespReason != null) {
            IMSLog.i(LOG_TAG, "handleEntitlementCheckResponse: http error code = " + httpErrRespCode + ", reason = " + httpErrRespReason);
            nSDSResponseStatus.responseCode = NSDSNamespaces.NSDSDefinedResponseCode.HTTP_TRANSACTION_ERROR_CODE;
            return nSDSResponseStatus;
        }
        ResponseServiceEntitlementStatus responseServiceEntitlementStatus = (ResponseServiceEntitlementStatus) bundle.getParcelable(NSDSNamespaces.NSDSMethodNamespace.SERVICE_ENTITLEMENT_STATUS);
        ResponseGetMSISDN responseGetMSISDN = (ResponseGetMSISDN) bundle.getParcelable(NSDSNamespaces.NSDSMethodNamespace.GET_MSISDN);
        if (responseServiceEntitlementStatus != null) {
            IMSLog.i(LOG_TAG, "ResponseServiceEntitlementStatus : messageId:" + responseServiceEntitlementStatus.messageId + ", responseCode:" + responseServiceEntitlementStatus.responseCode);
            int i = responseServiceEntitlementStatus.responseCode;
            if (i == 1000) {
                Iterator it = emptyIfNull(responseServiceEntitlementStatus.serviceEntitlementList).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ServiceEntitlement serviceEntitlement = (ServiceEntitlement) it.next();
                    if ("vowifi".equals(serviceEntitlement.serviceName)) {
                        IMSLog.i(LOG_TAG, "service responseCode: " + serviceEntitlement.entitlementStatus + ", onDemandProv: " + serviceEntitlement.onDemandProv);
                        int i2 = serviceEntitlement.entitlementStatus;
                        nSDSResponseStatus.responseCode = i2;
                        if (i2 == 1048) {
                            if (EntFeatureDetector.checkWFCAutoOnEnabled(this.mSimSlot)) {
                                if (serviceEntitlement.onDemandProv.booleanValue()) {
                                    this.mOnSvcProv.set(true);
                                }
                            } else {
                                this.mOnSvcProv.set(true);
                            }
                        }
                    }
                }
            } else {
                nSDSResponseStatus.methodName = NSDSNamespaces.NSDSMethodNamespace.SERVICE_ENTITLEMENT_STATUS;
                nSDSResponseStatus.responseCode = i;
            }
        }
        if (responseGetMSISDN != null) {
            int i3 = responseGetMSISDN.responseCode;
            if (i3 == 1000) {
                LineDetail lineDetail = new LineDetail();
                String str = LOG_TAG;
                IMSLog.i(str, "responseGetMsisdn content : messageId:" + responseGetMSISDN.messageId + ", responseCode:" + responseGetMSISDN.responseCode + ", msisdn:" + responseGetMSISDN.msisdn);
                StringBuilder sb = new StringBuilder();
                sb.append("service_fingerprint:");
                sb.append(responseGetMSISDN.serviceFingerprint);
                IMSLog.s(str, sb.toString());
                if (responseGetMSISDN.responseCode == 1000 && responseGetMSISDN.msisdn != null && responseGetMSISDN.serviceFingerprint != null) {
                    lineDetail.lineId = this.mNSDSDatabaseHelper.insertOrUpdateNativeLine(0L, this.mBaseFlowImpl.getDeviceId(), responseGetMSISDN);
                    lineDetail.msisdn = responseGetMSISDN.msisdn;
                    lineDetail.serviceFingerPrint = responseGetMSISDN.serviceFingerprint;
                }
            } else {
                nSDSResponseStatus.methodName = NSDSNamespaces.NSDSMethodNamespace.GET_MSISDN;
                nSDSResponseStatus.responseCode = i3;
            }
        }
        return nSDSResponseStatus;
    }

    private NSDSAppFlowBase.NSDSResponseStatus handleRegisterPushTokenResponse(Bundle bundle) {
        NSDSAppFlowBase.NSDSResponseStatus nSDSResponseStatus = new NSDSAppFlowBase.NSDSResponseStatus(-1, null, -1);
        if (bundle == null) {
            return nSDSResponseStatus;
        }
        ResponseManagePushToken responseManagePushToken = (ResponseManagePushToken) bundle.getParcelable("managePushToken");
        if (responseManagePushToken != null) {
            String str = LOG_TAG;
            IMSLog.i(str, "responseManagePushToken for token registration : messageId:" + responseManagePushToken.messageId + ", responseCode:" + responseManagePushToken.responseCode);
            int i = responseManagePushToken.responseCode;
            nSDSResponseStatus.responseCode = i;
            if (i != 1000) {
                IMSLog.i(str, "responseManagePushToken failed");
                nSDSResponseStatus.failedOperation = 0;
            }
        } else {
            IMSLog.e(LOG_TAG, "responseManagePushToken is NULL");
        }
        return nSDSResponseStatus;
    }

    private NSDSAppFlowBase.NSDSResponseStatus handleRemovePushTokenResponse(Bundle bundle) {
        NSDSAppFlowBase.NSDSResponseStatus nSDSResponseStatus = new NSDSAppFlowBase.NSDSResponseStatus(1000, null, -1);
        if (bundle == null) {
            return nSDSResponseStatus;
        }
        ResponseManagePushToken responseManagePushToken = (ResponseManagePushToken) bundle.getParcelable("managePushToken");
        if (responseManagePushToken != null) {
            String str = LOG_TAG;
            IMSLog.i(str, "responseManagePushToken for token removal : messageId:" + responseManagePushToken.messageId + ", responseCode:" + responseManagePushToken.responseCode);
            int i = responseManagePushToken.responseCode;
            nSDSResponseStatus.responseCode = i;
            if (i != 1000) {
                IMSLog.i(str, "responseManagePushToken failed");
                nSDSResponseStatus.failedOperation = 1;
            }
        } else {
            IMSLog.e(LOG_TAG, "responseManagePushToken is NULL");
        }
        if (this.mDeviceEventType == 3) {
            nSDSResponseStatus.responseCode = 1000;
        }
        return nSDSResponseStatus;
    }

    private NSDSAppFlowBase.NSDSResponseStatus handleManageLocationAndTcResponse(ResponseManageLocationAndTC responseManageLocationAndTC) {
        NSDSAppFlowBase.NSDSResponseStatus nSDSResponseStatus = new NSDSAppFlowBase.NSDSResponseStatus(-1, NSDSNamespaces.NSDSMethodNamespace.MANAGE_LOC_AND_TC, -1);
        if (responseManageLocationAndTC != null) {
            if (responseManageLocationAndTC.responseCode == 1000) {
                this.mServerData = responseManageLocationAndTC.serverData;
                this.mServerUrl = responseManageLocationAndTC.serverUrl;
                IMSLog.i(LOG_TAG, "onResponseAvailable: update location and tc status in db. E911 AID received: " + responseManageLocationAndTC.addressId);
                NSDSDatabaseHelper nSDSDatabaseHelper = this.mNSDSDatabaseHelper;
                nSDSDatabaseHelper.updateLocationAndTcStatus((long) nSDSDatabaseHelper.getNativeLineId(this.mBaseFlowImpl.getDeviceId()), responseManageLocationAndTC, this.mBaseFlowImpl.getDeviceId(), this.mSimSlot);
            }
            nSDSResponseStatus.responseCode = responseManageLocationAndTC.responseCode;
        }
        return nSDSResponseStatus;
    }

    private void handleLocAndTcWebsheetResult(Bundle bundle, boolean z) {
        int i = bundle != null ? bundle.getInt(NSDSNamespaces.NSDSExtras.LOCATIONANDTC_RESULT_CODE) : 0;
        notifyCallbackForNsdsEvent(5, this.mSimSlot);
        IMSLog.i(LOG_TAG, "handleLocAndTcWebsheetResult: result " + i);
        IMSLog.c(LogClass.ES_WEBSHEET_RESULT, "WBSHT RESULT:" + i);
        this.mDeviceEventType = z ? 7 : 12;
        performNextOperationIf(-1, new NSDSAppFlowBase.NSDSResponseStatus(getLocAndTcWebsheetRespCode(i), null, -1), null);
    }

    private void retryEntitlementAutoOn(int i) {
        String str = LOG_TAG;
        IMSLog.i(str, "[ATT_AutoOn] EntitlementAutoOn");
        String str2 = NSDSSharedPrefHelper.get(this.mContext, this.mBaseFlowImpl.getDeviceId(), NSDSNamespaces.NSDSSharedPref.PREF_AUTO_ACTIVATE_AFTER_OOS);
        if (TextUtils.equals(NSDSNamespaces.VowifiAutoOnOperation.AUTOON_RETRY, str2) || TextUtils.equals(NSDSNamespaces.VowifiAutoOnOperation.AUTOON_IN_PROGRESS, str2)) {
            NSDSSharedPrefHelper.remove(this.mContext, this.mBaseFlowImpl.getDeviceId(), NSDSNamespaces.NSDSSharedPref.PREF_ENTITLEMENT_STATE);
            if (i != 0 && TextUtils.equals(NSDSNamespaces.VowifiAutoOnOperation.AUTOON_RETRY, str2)) {
                IMSLog.i(str, "[ATT_AutoOn] EntitlementAutoOn - fail : remove token");
                NSDSSharedPrefHelper.save(this.mContext, this.mBaseFlowImpl.getDeviceId(), NSDSNamespaces.NSDSSharedPref.PREF_AUTO_ACTIVATE_AFTER_OOS, NSDSNamespaces.VowifiAutoOnOperation.AUTOON_IN_PROGRESS);
                performRemovePushToken(3);
            } else {
                IMSLog.i(str, "[ATT_AutoOn] retry EntitlementAutoOn");
                NSDSSharedPrefHelper.save(this.mContext, this.mBaseFlowImpl.getDeviceId(), NSDSNamespaces.NSDSSharedPref.PREF_AUTO_ACTIVATE_AFTER_OOS, NSDSNamespaces.VowifiAutoOnOperation.AUTOON_RETRY);
            }
        }
    }

    private void failEntitlementAutoOn() {
        IMSLog.i(LOG_TAG, "[ATT_AutoOn] failEntitlementAutoOn - reset token in device");
        NSDSSharedPrefHelper.remove(this.mContext, this.mBaseFlowImpl.getDeviceId(), NSDSNamespaces.NSDSSharedPref.PREF_PUSH_TOKEN);
        NSDSSharedPrefHelper.remove(this.mContext, this.mBaseFlowImpl.getDeviceId(), NSDSNamespaces.NSDSSharedPref.PREF_SENT_TOKEN_TO_SERVER);
        notifyNSDSFlowResponse(true, null, -1, 1000);
    }

    @Override // com.sec.internal.interfaces.ims.entitlement.nsds.IEntitlementCheck
    public void performEntitlementCheck(int i, int i2) {
        String str = LOG_TAG;
        IMSLog.i(str, "performEntitlementCheck: deviceEventType " + i + " retryCount " + i2 + " ongoingEvent " + this.mDeviceEventType);
        if (NSDSSharedPrefHelper.isDeviceInEntitlementProgress(this.mContext, this.mBaseFlowImpl.getDeviceId())) {
            IMSLog.i(str, "performEntitlementCheck: entitlement in progress");
            deferMessage(obtainMessage(8, i, i2));
        } else {
            sendMessage(obtainMessage(8, i, i2));
        }
    }

    @Override // com.sec.internal.interfaces.ims.entitlement.nsds.IEntitlementCheck
    public void performRemovePushToken(int i) {
        String str = LOG_TAG;
        IMSLog.i(str, "performRemovePushToken: deviceEventType " + i + " ongoingEvent " + this.mDeviceEventType);
        if (NSDSSharedPrefHelper.isDeviceInEntitlementProgress(this.mContext, this.mBaseFlowImpl.getDeviceId())) {
            IMSLog.i(str, "performRemovePushToken: entitlement in progress");
            deferMessage(obtainMessage(9, i, 0));
        } else {
            sendMessage(obtainMessage(9, i, 0));
            clearDeferredMessage();
        }
    }

    @Override // com.sec.internal.interfaces.ims.entitlement.nsds.IEntitlementCheck
    public void performE911AddressUpdate(int i) {
        String str = LOG_TAG;
        IMSLog.i(str, "performE911AddressUpdate: deviceEventType " + i + " ongoingEvent " + this.mDeviceEventType);
        if (NSDSSharedPrefHelper.isDeviceInEntitlementProgress(this.mContext, this.mBaseFlowImpl.getDeviceId())) {
            IMSLog.i(str, "performE911AddressUpdate: entitlement in progress");
            deferMessage(obtainMessage(10, i, 0));
        } else {
            sendMessage(obtainMessage(10, i, 0));
        }
    }

    private void performNextOperation(int i, int i2, String str) {
        IMSLog.i(LOG_TAG, "performNextOperation: deviceEventType " + i + " nsdsMethod " + str);
        NSDSSharedPrefHelper.save(this.mContext, this.mBaseFlowImpl.getDeviceId(), NSDSNamespaces.NSDSSharedPref.PREF_ENTITLEMENT_STATE, NSDSNamespaces.NSDSDeviceState.ENTITLMENT_IN_PROGRESS);
        this.mDeviceEventType = i;
        this.mRetryCount = i2;
        performNextOperationIf(-1, new NSDSAppFlowBase.NSDSResponseStatus(1000, str, -1), getE911AidValidationBundle());
    }

    private void checkLocationAndTC() {
        String str = LOG_TAG;
        IMSLog.i(str, "checkLocationAndTC()");
        LineDetail nativeLineDetail = this.mNSDSDatabaseHelper.getNativeLineDetail(this.mBaseFlowImpl.getDeviceId(), true);
        if (nativeLineDetail == null) {
            IMSLog.e(str, "checkLocationAndTC: native line detail is null");
            NSDSSharedPrefHelper.remove(this.mContext, this.mBaseFlowImpl.getDeviceId(), NSDSNamespaces.NSDSSharedPref.PREF_DEVICE_STATE);
            notifyNSDSFlowResponse(false, null, -1, -1);
            return;
        }
        new LocationRegistrationAndTCAcceptanceCheck(getLooper(), this.mContext, this.mBaseFlowImpl, new Messenger(this), "1.0").checkLocationAndTC(nativeLineDetail.serviceFingerPrint, 30000L);
    }

    private void checkVoWifiEntitlement() {
        IMSLog.i(LOG_TAG, "checkVoWifiEntitlement: requesting entitlement check");
        ArrayList arrayList = new ArrayList();
        arrayList.add("vowifi");
        new BulkEntitlementCheck(getLooper(), this.mContext, this.mBaseFlowImpl, new Messenger(this), "1.0").checkBulkEntitlement(arrayList, false, 30000L);
    }

    private void registerPushToken() {
        IMSLog.i(LOG_TAG, "registerPushToken: requesting push token registration");
        new OperationUsingManagePushToken(getLooper(), this.mContext, this.mBaseFlowImpl, new Messenger(this), "1.0").registerVoWiFiPushToken(this.mNSDSDatabaseHelper.getNativeMsisdn(this.mBaseFlowImpl.getDeviceId()), null, PushTokenHelper.getPushToken(this.mContext, this.mBaseFlowImpl.getDeviceId()), NSDSNamespaces.NSDSServices.SERVICE_VOWIFI_AND_VVM, 30000L);
    }

    private void removePushToken() {
        IMSLog.i(LOG_TAG, "removePushToken: requesting push token de-registration");
        new OperationUsingManagePushToken(getLooper(), this.mContext, this.mBaseFlowImpl, new Messenger(this), "1.0").removeVoWiFiPushToken(this.mNSDSDatabaseHelper.getNativeMsisdn(this.mBaseFlowImpl.getDeviceId()), null, PushTokenHelper.getPushToken(this.mContext, this.mBaseFlowImpl.getDeviceId()), NSDSNamespaces.NSDSServices.SERVICE_VOWIFI_AND_VVM, 30000L);
    }

    private void openLocAndTCWebsheet(boolean z) {
        Intent action;
        LocAndTcWebSheetData locAndTcWebSheetData = getLocAndTcWebSheetData();
        if (locAndTcWebSheetData != null) {
            IMSLog.s(LOG_TAG, "openLocAndTCWebsheet: url " + locAndTcWebSheetData.url + ", serverData " + locAndTcWebSheetData.token + ", clientName " + locAndTcWebSheetData.clientName + ", title " + locAndTcWebSheetData.title);
            Bundle bundle = new Bundle();
            bundle.putString(NSDSNamespaces.NSDSExtras.LOCATIONANDTC_URL, locAndTcWebSheetData.url);
            bundle.putString(NSDSNamespaces.NSDSExtras.LOCATIONANDTC_DATA, locAndTcWebSheetData.token);
            bundle.putString(NSDSNamespaces.NSDSExtras.LOCATIONANDTC_CLIENT_NAME, locAndTcWebSheetData.clientName);
            bundle.putString(NSDSNamespaces.NSDSExtras.LOCATIONANDTC_TITLE, locAndTcWebSheetData.title);
            bundle.putParcelable(NSDSNamespaces.NSDSExtras.LOC_AND_TC_WEBSHEET_RESULT_MESSAGE, obtainMessage(z ? 6 : 7));
            bundle.putParcelable(NSDSNamespaces.NSDSExtras.LOCATION_AND_TC_MESSENGER, new Messenger(this));
            Intent intent = new Intent();
            if (checkSntMode()) {
                action = intent.setAction(NSDSNamespaces.NSDSActions.SNT_MODE_LOCATIONANDTC_OPEN_WEBSHEET);
            } else {
                action = intent.setAction(NSDSNamespaces.NSDSActions.UNIFIED_WFC_LOCATIONANDTC_OPEN_WEBSHEET);
            }
            action.putExtras(bundle);
            action.setFlags(LogClass.SIM_EVENT);
            action.setPackage(NSDSNamespaces.Packages.NSDS_WEBAPP);
            this.mContext.startActivity(action);
            notifyCallbackForNsdsEvent(4, this.mSimSlot);
            return;
        }
        IMSLog.e(LOG_TAG, "openLocAndTCWebsheet: missing server info, failed");
        notifyNSDSFlowResponse(false, null, -1, -1);
    }

    private boolean checkSntMode() {
        return !(Settings.Global.getInt(this.mContext.getContentResolver(), "device_provisioned", 0) != 0);
    }

    private Bundle getLocationAndTCStatusBundle(ResponseManageLocationAndTC responseManageLocationAndTC) {
        Boolean bool;
        Bundle bundle = new Bundle();
        if (responseManageLocationAndTC != null) {
            Boolean bool2 = responseManageLocationAndTC.locationStatus;
            boolean z = (bool2 == null || bool2.booleanValue()) && ((bool = responseManageLocationAndTC.tcStatus) == null || bool.booleanValue());
            bundle.putBoolean(NSDSNamespaces.NSDSDataMapKey.SVC_PROV_STATUS, this.mOnSvcProv.get());
            bundle.putBoolean(NSDSNamespaces.NSDSDataMapKey.LOC_AND_TC_STATUS, z);
            bundle.putString(NSDSNamespaces.NSDSDataMapKey.LOC_AND_TC_SERVER_URL, responseManageLocationAndTC.serverUrl);
            bundle.putString(NSDSNamespaces.NSDSDataMapKey.LOC_AND_TC_SERVER_DATA, responseManageLocationAndTC.serverData);
            IMSLog.i(LOG_TAG, "getLocationAndTCStatusBundle: " + z);
        }
        return bundle;
    }

    private Bundle getE911AidValidationBundle() {
        String nativeLineE911AidExp = this.mNSDSDatabaseHelper.getNativeLineE911AidExp(this.mBaseFlowImpl.getDeviceId());
        Bundle bundle = new Bundle();
        bundle.putString(NSDSNamespaces.NSDSDataMapKey.E911_AID_EXP, nativeLineE911AidExp);
        bundle.putBoolean(NSDSNamespaces.NSDSDataMapKey.SVC_PROV_STATUS, this.mOnSvcProv.get());
        IMSLog.s(LOG_TAG, "getE911AidValidationBundle: " + nativeLineE911AidExp + ", OnSvcProv:" + this.mOnSvcProv.get());
        return bundle;
    }

    private LocAndTcWebSheetData getLocAndTcWebSheetData() {
        if (getMnoNsdsStrategy() != null) {
            return getMnoNsdsStrategy().getLocAndTcWebSheetData(this.mServerUrl, this.mServerData);
        }
        return null;
    }

    private void updateEntitlementStatus(int i) {
        this.mDeviceEventType = 0;
        this.mOnSvcProv.set(false);
        this.mRetryCount = 0;
        NSDSSharedPrefHelper.remove(this.mContext, this.mBaseFlowImpl.getDeviceId(), NSDSNamespaces.NSDSSharedPref.PREF_ENTITLEMENT_STATE);
        if (i == 2303) {
            this.mNSDSDatabaseHelper.resetE911AidInfoForNativeLine(this.mBaseFlowImpl.getDeviceId());
            IMSLog.i(LOG_TAG, "updateEntitlementStatus: svc de-provision success");
            NSDSSharedPrefHelper.remove(this.mContext, this.mBaseFlowImpl.getDeviceId(), NSDSNamespaces.NSDSSharedPref.PREF_SVC_PROV_STATE);
        }
        if (i == 2302 || i == 2502) {
            clearDeferredMessage();
            IMSLog.i(LOG_TAG, "updateEntitlementStatus: svc provision success");
            NSDSSharedPrefHelper.save(this.mContext, this.mBaseFlowImpl.getDeviceId(), NSDSNamespaces.NSDSSharedPref.PREF_SVC_PROV_STATE, NSDSNamespaces.NSDSDeviceState.SERVICE_PROVISIONED);
            return;
        }
        moveDeferredMessageAtFrontOfQueue();
    }

    @Override // com.sec.internal.ims.entitlement.nsds.app.flow.ericssonnsds.NSDSAppFlowBase
    protected void queueOperation(int i, Bundle bundle) {
        int i2 = 2;
        if (i != 2) {
            int i3 = 3;
            if (i == 3) {
                i2 = 0;
            } else if (i != 4) {
                i2 = 5;
                if (i != 5) {
                    if (i != 8) {
                        i3 = 13;
                        if (i != 13) {
                            switch (i) {
                                case 17:
                                    i2 = 11;
                                    break;
                                case 18:
                                    i2 = 12;
                                    break;
                                case 19:
                                    break;
                                case 20:
                                    i2 = 14;
                                    break;
                                default:
                                    IMSLog.i(LOG_TAG, "queueOperation: did not match any nsds base operations");
                                    i2 = -1;
                                    break;
                            }
                        }
                    } else {
                        i2 = 4;
                    }
                }
                i2 = i3;
            }
        } else {
            i2 = 1;
        }
        if (i2 != -1) {
            Message obtainMessage = obtainMessage(i2);
            obtainMessage.setData(bundle);
            sendMessage(obtainMessage);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i;
        String str = LOG_TAG;
        IMSLog.i(str, "msg:" + message.what);
        int i2 = message.what;
        if (i2 == 101) {
            performNextOperationIf(2, handleEntitlementCheckResponse(message.getData()), getE911AidValidationBundle());
            return;
        }
        if (i2 == 104) {
            ResponseManageLocationAndTC responseManageLocationAndTC = message.getData() != null ? (ResponseManageLocationAndTC) message.getData().getParcelable(NSDSNamespaces.NSDSMethodNamespace.MANAGE_LOC_AND_TC) : null;
            String str2 = NSDSSharedPrefHelper.get(this.mContext, this.mBaseFlowImpl.getDeviceId(), NSDSNamespaces.NSDSSharedPref.PREF_AUTO_ACTIVATE_AFTER_OOS);
            if (!EntFeatureDetector.checkWFCAutoOnEnabled(this.mSimSlot) || str2 == null || "completed".equals(str2)) {
                i = 3;
            } else {
                IMSLog.i(str, "[ATT_AutoOn] InProgress - CHECK_LOC_AND_TC_AUTO_ON");
                i = 16;
            }
            performNextOperationIf(i, handleManageLocationAndTcResponse(responseManageLocationAndTC), getLocationAndTCStatusBundle(responseManageLocationAndTC));
            return;
        }
        if (i2 == 112) {
            performNextOperationIf(4, handleRegisterPushTokenResponse(message.getData()), null);
            return;
        }
        if (i2 != 113) {
            switch (i2) {
                case 0:
                    checkLocationAndTC();
                    break;
                case 1:
                    checkVoWifiEntitlement();
                    break;
                case 2:
                    registerPushToken();
                    break;
                case 3:
                    removePushToken();
                    break;
                case 4:
                    openLocAndTCWebsheet(true);
                    break;
                case 5:
                    openLocAndTCWebsheet(false);
                    break;
                case 6:
                    handleLocAndTcWebsheetResult(message.getData(), true);
                    break;
                case 7:
                    handleLocAndTcWebsheetResult(message.getData(), false);
                    break;
                case 8:
                    performNextOperation(message.arg1, message.arg2, NSDSNamespaces.NSDSMethodNamespace.SERVICE_ENTITLEMENT_STATUS);
                    break;
                case 9:
                    performNextOperation(message.arg1, message.arg2, "managePushToken");
                    break;
                case 10:
                    performNextOperation(message.arg1, message.arg2, NSDSNamespaces.NSDSMethodNamespace.MANAGE_LOC_AND_TC);
                    break;
                case 11:
                    retryEntitlementAutoOn(0);
                    break;
                case 12:
                    retryEntitlementAutoOn(1);
                    break;
                case 13:
                    retryEntitlementAutoOn(2);
                    break;
                case 14:
                    failEntitlementAutoOn();
                    break;
            }
            return;
        }
        performNextOperationIf(5, handleRemovePushTokenResponse(message.getData()), message.getData());
    }

    @Override // com.sec.internal.ims.entitlement.nsds.app.flow.ericssonnsds.NSDSAppFlowBase
    protected void notifyNSDSFlowResponse(boolean z, String str, int i, int i2) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        int translateErrorCode = ATTWfcErrorCodeTranslator.translateErrorCode(this.mNSDSDatabaseHelper, this.mDeviceEventType, z, i2, this.mRetryCount, this.mBaseFlowImpl.getDeviceId());
        arrayList.add(Integer.valueOf(translateErrorCode));
        boolean updateResponseResult = updateResponseResult(z, translateErrorCode);
        IMSLog.i(LOG_TAG, "notifyNSDSFlowResponse: success " + updateResponseResult);
        IMSLog.c(LogClass.ES_NSDS_RESULT, "SUCS:" + updateResponseResult + ", ERRC:" + arrayList);
        if (2304 != translateErrorCode) {
            Intent intent = new Intent(NSDSNamespaces.NSDSActions.ENTITLEMENT_AND_LOCTC_CHECK_COMPLETED);
            intent.putExtra(NSDSNamespaces.NSDSExtras.SIM_SLOT_IDX, this.mSimSlot);
            intent.putExtra(NSDSNamespaces.NSDSExtras.REQUEST_STATUS, updateResponseResult);
            intent.putExtra(NSDSNamespaces.NSDSExtras.DEVICE_EVENT_TYPE, this.mDeviceEventType);
            intent.putExtra(NSDSNamespaces.NSDSExtras.REQ_TOGGLE_OFF_OP, false);
            intent.putIntegerArrayListExtra(NSDSNamespaces.NSDSExtras.ERROR_CODES, arrayList);
            IntentUtil.sendBroadcast(this.mContext, intent, ContextExt.CURRENT_OR_SELF);
        }
        updateEntitlementStatus(translateErrorCode);
    }
}
