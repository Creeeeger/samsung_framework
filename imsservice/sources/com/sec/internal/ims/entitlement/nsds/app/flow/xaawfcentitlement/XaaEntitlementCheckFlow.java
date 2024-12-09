package com.sec.internal.ims.entitlement.nsds.app.flow.xaawfcentitlement;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.provider.Settings;
import com.sec.ims.extensions.ContextExt;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.entitilement.data.LineDetail;
import com.sec.internal.constants.ims.entitilement.data.LocAndTcWebSheetData;
import com.sec.internal.constants.ims.entitilement.data.ResponseManageLocationAndTC;
import com.sec.internal.constants.ims.entitilement.data.ResponseServiceEntitlementStatus;
import com.sec.internal.constants.ims.entitilement.data.ServiceEntitlement;
import com.sec.internal.helper.os.IntentUtil;
import com.sec.internal.ims.entitlement.nsds.app.flow.ericssonnsds.NSDSAppFlowBase;
import com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.BaseFlowImpl;
import com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.BulkEntitlementCheck;
import com.sec.internal.ims.entitlement.nsds.ericssonnsds.flow.LocationRegistrationAndTCAcceptanceCheck;
import com.sec.internal.ims.entitlement.storagehelper.NSDSDatabaseHelper;
import com.sec.internal.ims.entitlement.storagehelper.NSDSSharedPrefHelper;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.entitlement.nsds.IEntitlementCheck;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class XaaEntitlementCheckFlow extends NSDSAppFlowBase implements IEntitlementCheck {
    private static final int INIT_E911_ADDRESS_UPDATE = 7;
    private static final int INIT_ENTITLEMENT_CHECK = 6;
    protected static final int LOCATION_AND_TC_CHECK = 0;
    private static final String LOG_TAG = XaaEntitlementCheckFlow.class.getSimpleName();
    protected static final int OPEN_E911_ADDRESS_UPDATE_WEBSHEET = 3;
    protected static final int OPEN_LOC_AND_TC_WEBSHEET = 2;
    protected static final int RESULT_SVC_PROV_LOC_AND_TC_WEBSHEET = 4;
    protected static final int RESULT_UPDATE_LOC_AND_TC_WEBSHEET = 5;
    protected static final int VOWIFI_ENTITLEMENT_CHECK = 1;
    protected String mServerData;
    protected String mServerUrl;

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
        return z && (i == 1000 || i == 2303 || i == 2501 || i == 2502 || i == 2302);
    }

    public XaaEntitlementCheckFlow(Looper looper, Context context, BaseFlowImpl baseFlowImpl, NSDSDatabaseHelper nSDSDatabaseHelper) {
        super(looper, context, baseFlowImpl, nSDSDatabaseHelper);
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
        if (responseServiceEntitlementStatus != null) {
            IMSLog.i(LOG_TAG, "ResponseServiceEntitlementStatus :messageId:" + responseServiceEntitlementStatus.messageId + "responseCode:" + responseServiceEntitlementStatus.responseCode);
            int i = responseServiceEntitlementStatus.responseCode;
            if (i == 1000) {
                Iterator it = emptyIfNull(responseServiceEntitlementStatus.serviceEntitlementList).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ServiceEntitlement serviceEntitlement = (ServiceEntitlement) it.next();
                    if ("vowifi".equals(serviceEntitlement.serviceName)) {
                        IMSLog.i(LOG_TAG, "service responseCode:" + serviceEntitlement.entitlementStatus);
                        nSDSResponseStatus.responseCode = serviceEntitlement.entitlementStatus;
                        break;
                    }
                }
            } else {
                nSDSResponseStatus.responseCode = i;
            }
        }
        return nSDSResponseStatus;
    }

    private NSDSAppFlowBase.NSDSResponseStatus handleManageLocationAndTcResponse(ResponseManageLocationAndTC responseManageLocationAndTC) {
        NSDSAppFlowBase.NSDSResponseStatus nSDSResponseStatus = new NSDSAppFlowBase.NSDSResponseStatus(-1, NSDSNamespaces.NSDSMethodNamespace.MANAGE_LOC_AND_TC, -1);
        if (responseManageLocationAndTC != null) {
            if (responseManageLocationAndTC.responseCode == 1000) {
                this.mServerData = responseManageLocationAndTC.serverData;
                this.mServerUrl = responseManageLocationAndTC.serverUrl;
                IMSLog.i(LOG_TAG, "onResponseAvailable: update location and tc status in db");
                this.mNSDSDatabaseHelper.updateLocationAndTcStatus(r3.getNativeLineId(this.mBaseFlowImpl.getDeviceId()), responseManageLocationAndTC, this.mBaseFlowImpl.getDeviceId(), this.mBaseFlowImpl.getSimManager().getSimSlotIndex());
            }
            nSDSResponseStatus.responseCode = responseManageLocationAndTC.responseCode;
        }
        return nSDSResponseStatus;
    }

    private void handleLocAndTcWebsheetResult(Bundle bundle, boolean z) {
        int i = bundle != null ? bundle.getInt(NSDSNamespaces.NSDSExtras.LOCATIONANDTC_RESULT_CODE) : 0;
        notifyCallbackForNsdsEvent(5, this.mBaseFlowImpl.getSimManager().getSimSlotIndex());
        IMSLog.i(LOG_TAG, "handleLocAndTcWebsheetResult: result " + i);
        this.mDeviceEventType = z ? 7 : 12;
        performNextOperationIf(-1, new NSDSAppFlowBase.NSDSResponseStatus(getLocAndTcWebsheetRespCode(i), null, -1), null);
    }

    @Override // com.sec.internal.interfaces.ims.entitlement.nsds.IEntitlementCheck
    public void performEntitlementCheck(int i, int i2) {
        String str = LOG_TAG;
        IMSLog.i(str, "performEntitlementCheck: deviceEventType " + i + " retryCount " + i2 + " ongoingEvent " + this.mDeviceEventType);
        if (NSDSSharedPrefHelper.isDeviceInEntitlementProgress(this.mContext, this.mBaseFlowImpl.getDeviceId())) {
            IMSLog.i(str, "performEntitlementCheck: entitlement in progress");
            deferMessage(obtainMessage(6, i, i2));
        } else {
            sendMessage(obtainMessage(6, i, i2));
        }
    }

    @Override // com.sec.internal.interfaces.ims.entitlement.nsds.IEntitlementCheck
    public void performRemovePushToken(int i) {
        IMSLog.e(LOG_TAG, "performRemovePushToken: not supported");
        notifyNSDSFlowResponse(true, null, -1, -1);
    }

    @Override // com.sec.internal.interfaces.ims.entitlement.nsds.IEntitlementCheck
    public void performE911AddressUpdate(int i) {
        String str = LOG_TAG;
        IMSLog.i(str, "performE911AddressUpdate: deviceEventType " + i + " ongoingEvent " + this.mDeviceEventType);
        if (NSDSSharedPrefHelper.isDeviceInEntitlementProgress(this.mContext, this.mBaseFlowImpl.getDeviceId())) {
            IMSLog.i(str, "performE911AddressUpdate: entitlement in progress");
            deferMessage(obtainMessage(7, i, 0));
        } else {
            sendMessage(obtainMessage(7, i, 0));
        }
    }

    private void performNextOperation(int i, int i2, String str) {
        IMSLog.i(LOG_TAG, "performNextOperation: deviceEventType " + i + " nsdsMethod " + str);
        NSDSSharedPrefHelper.save(this.mContext, this.mBaseFlowImpl.getDeviceId(), NSDSNamespaces.NSDSSharedPref.PREF_ENTITLEMENT_STATE, NSDSNamespaces.NSDSDeviceState.ENTITLMENT_IN_PROGRESS);
        this.mDeviceEventType = i;
        this.mRetryCount = i2;
        performNextOperationIf(-1, new NSDSAppFlowBase.NSDSResponseStatus(1000, str, -1), null);
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
        new BulkEntitlementCheck(getLooper(), this.mContext, this.mBaseFlowImpl, new Messenger(this), "1.0").checkBulkEntitlement(arrayList, true, 30000L);
    }

    private void openLocAndTCWebsheet(boolean z) {
        Intent action;
        LocAndTcWebSheetData locAndTcWebSheetData = getLocAndTcWebSheetData();
        if (locAndTcWebSheetData != null) {
            IMSLog.s(LOG_TAG, "openLocAndTCWebsheet: url " + locAndTcWebSheetData.url + "serverData " + locAndTcWebSheetData.token + "clientName " + locAndTcWebSheetData.clientName + "title " + locAndTcWebSheetData.title);
            Bundle bundle = new Bundle();
            bundle.putString(NSDSNamespaces.NSDSExtras.LOCATIONANDTC_URL, locAndTcWebSheetData.url);
            bundle.putString(NSDSNamespaces.NSDSExtras.LOCATIONANDTC_DATA, locAndTcWebSheetData.token);
            bundle.putString(NSDSNamespaces.NSDSExtras.LOCATIONANDTC_CLIENT_NAME, locAndTcWebSheetData.clientName);
            bundle.putString(NSDSNamespaces.NSDSExtras.LOCATIONANDTC_TITLE, locAndTcWebSheetData.title);
            bundle.putParcelable(NSDSNamespaces.NSDSExtras.LOC_AND_TC_WEBSHEET_RESULT_MESSAGE, obtainMessage(z ? 4 : 5));
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
            notifyCallbackForNsdsEvent(4, this.mBaseFlowImpl.getSimManager().getSimSlotIndex());
            return;
        }
        IMSLog.e(LOG_TAG, "openLocAndTCWebsheet: missing server info, failed");
        notifyNSDSFlowResponse(false, null, -1, -1);
    }

    private boolean checkSntMode() {
        return Settings.Global.getInt(this.mContext.getContentResolver(), "device_provisioned", 0) == 0;
    }

    private Bundle getLocationAndTCStatusBundle(ResponseManageLocationAndTC responseManageLocationAndTC) {
        Boolean bool;
        Bundle bundle = new Bundle();
        if (responseManageLocationAndTC != null) {
            Boolean bool2 = responseManageLocationAndTC.locationStatus;
            boolean z = (bool2 == null || bool2.booleanValue()) && ((bool = responseManageLocationAndTC.tcStatus) == null || bool.booleanValue());
            bundle.putBoolean(NSDSNamespaces.NSDSDataMapKey.LOC_AND_TC_STATUS, z);
            bundle.putString(NSDSNamespaces.NSDSDataMapKey.LOC_AND_TC_SERVER_URL, responseManageLocationAndTC.serverUrl);
            bundle.putString(NSDSNamespaces.NSDSDataMapKey.LOC_AND_TC_SERVER_DATA, responseManageLocationAndTC.serverData);
            IMSLog.i(LOG_TAG, "getLocationAndTCStatusBundle: " + z);
        }
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
        if (i == 2) {
            i2 = 1;
        } else if (i == 3) {
            i2 = 0;
        } else if (i != 8) {
            if (i != 13) {
                IMSLog.i(LOG_TAG, "queueOperation: did not match any nsds base operations");
                i2 = -1;
            } else {
                i2 = 3;
            }
        }
        if (i2 != -1) {
            Message obtainMessage = obtainMessage(i2);
            obtainMessage.setData(bundle);
            sendMessage(obtainMessage);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        IMSLog.i(LOG_TAG, "msg:" + message.what);
        int i = message.what;
        if (i == 101) {
            performNextOperationIf(2, handleEntitlementCheckResponse(message.getData()), null);
            return;
        }
        if (i != 104) {
            switch (i) {
                case 0:
                    checkLocationAndTC();
                    break;
                case 1:
                    checkVoWifiEntitlement();
                    break;
                case 2:
                    openLocAndTCWebsheet(true);
                    break;
                case 3:
                    openLocAndTCWebsheet(false);
                    break;
                case 4:
                    handleLocAndTcWebsheetResult(message.getData(), true);
                    break;
                case 5:
                    handleLocAndTcWebsheetResult(message.getData(), false);
                    break;
                case 6:
                    performNextOperation(message.arg1, message.arg2, NSDSNamespaces.NSDSMethodNamespace.SERVICE_ENTITLEMENT_STATUS);
                    break;
                case 7:
                    performNextOperation(message.arg1, message.arg2, NSDSNamespaces.NSDSMethodNamespace.MANAGE_LOC_AND_TC);
                    break;
            }
            return;
        }
        ResponseManageLocationAndTC responseManageLocationAndTC = message.getData() != null ? (ResponseManageLocationAndTC) message.getData().getParcelable(NSDSNamespaces.NSDSMethodNamespace.MANAGE_LOC_AND_TC) : null;
        performNextOperationIf(3, handleManageLocationAndTcResponse(responseManageLocationAndTC), getLocationAndTCStatusBundle(responseManageLocationAndTC));
    }

    @Override // com.sec.internal.ims.entitlement.nsds.app.flow.ericssonnsds.NSDSAppFlowBase
    protected void notifyNSDSFlowResponse(boolean z, String str, int i, int i2) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        int translateErrorCode = XaaWfcErrorCodeTranslator.translateErrorCode(this.mDeviceEventType, z, i2);
        arrayList.add(Integer.valueOf(translateErrorCode));
        boolean updateResponseResult = updateResponseResult(z, translateErrorCode);
        IMSLog.i(LOG_TAG, "notifyNSDSFlowResponse: success " + updateResponseResult);
        if (2304 != translateErrorCode) {
            Intent intent = new Intent(NSDSNamespaces.NSDSActions.ENTITLEMENT_CHECK_COMPLETED);
            intent.putExtra(NSDSNamespaces.NSDSExtras.SIM_SLOT_IDX, this.mBaseFlowImpl.getSimManager().getSimSlotIndex());
            intent.putExtra(NSDSNamespaces.NSDSExtras.REQUEST_STATUS, updateResponseResult);
            intent.putExtra(NSDSNamespaces.NSDSExtras.DEVICE_EVENT_TYPE, this.mDeviceEventType);
            intent.putExtra(NSDSNamespaces.NSDSExtras.REQ_TOGGLE_OFF_OP, true);
            intent.putIntegerArrayListExtra(NSDSNamespaces.NSDSExtras.ERROR_CODES, arrayList);
            IntentUtil.sendBroadcast(this.mContext, intent, ContextExt.CURRENT_OR_SELF);
        }
        updateEntitlementStatus(translateErrorCode);
    }
}
