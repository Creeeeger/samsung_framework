package com.sec.internal.ims.servicemodules.options;

import android.os.Bundle;
import android.os.Message;
import android.util.Log;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.servicemodules.options.CapabilityConstants;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Set;

/* loaded from: classes.dex */
public class CapabilityEvent {
    public static final int EVT_ADS_CHANGED = 15;
    public static final int EVT_ATTACH_SERVICE_AVAILABILITY_LISTENER = 50;
    public static final int EVT_BOOT_COMPLETED = 12;
    public static final int EVT_CONTACT_CHANGED = 2;
    public static final int EVT_DELAYED_SET_OWN_CAPABILITIES = 53;
    public static final int EVT_DETACH_SERVICE_AVAILABILITY_LISTENER = 51;
    public static final int EVT_EXCHANGE_CAPABILITIES_FOR_VSH = 14;
    public static final int EVT_INITIAL_CAPABILITIES_QUERY = 3;
    public static final int EVT_LAZY_CAPABILITIES_QUERY = 8;
    public static final int EVT_MESSAGEAPP_UPDATED = 40;
    public static final int EVT_NEW_CAPABILITIES_RECEIVED = 4;
    public static final int EVT_NEW_IMS_SETTINGS_AVAILABLE = 7;
    public static final int EVT_OWN_CAPABILITIES_CHANGED = 9;
    public static final int EVT_PERIODIC_POLL = 18;
    public static final int EVT_PERIODIC_POLL_TIMEOUT = 17;
    public static final int EVT_POLL = 1;
    public static final int EVT_REQUEST_CAPABILITIES = 6;
    public static final int EVT_REQUEST_CAPABILITIES_SR = 54;
    public static final int EVT_REQUEST_LIST_CAPABILITIES = 33;
    public static final int EVT_RETRY_SYNC_CONTACT = 13;
    public static final int EVT_SEND_RCSC_INFO_TO_HQM = 16;
    public static final int EVT_SET_OWN_CAPABILITIES = 5;
    public static final int EVT_SYNC_CONTACT = 10;
    public static final int EVT_UPDATE_SERVICE_AVAILABILITY_LISTENER = 52;
    public static final int EVT_USER_SWITCHED = 11;
    private static final String LOG_TAG = "CapabilityEvent";

    static boolean handleEvent(Message message, CapabilityDiscoveryModule capabilityDiscoveryModule, CapabilityUtil capabilityUtil, ServiceAvailabilityEventListenerWrapper serviceAvailabilityEventListenerWrapper) {
        int i = message.what;
        if (i != 33) {
            if (i == 40) {
                capabilityDiscoveryModule.updateMsgAppInfo(false);
            } else if (i != 8001 && i != 8002) {
                switch (i) {
                    case 1:
                        capabilityDiscoveryModule.poll(false, false, ((Integer) message.obj).intValue());
                        break;
                    case 2:
                        capabilityDiscoveryModule.onContactChanged(false);
                        break;
                    case 3:
                        capabilityDiscoveryModule.requestInitialCapabilitiesQuery(((Integer) message.obj).intValue());
                        break;
                    case 4:
                        Bundle bundle = (Bundle) message.obj;
                        ArrayList parcelableArrayList = bundle.getParcelableArrayList("URIS");
                        int i2 = bundle.getInt("PHONEID");
                        Boolean valueOf = Boolean.valueOf(bundle.containsKey("IS_RESPONSE") ? bundle.getBoolean("IS_RESPONSE") : false);
                        Log.i(LOG_TAG, "EVT_NEW_CAPABILITIES_RECEIVED: isResponse " + valueOf);
                        if (RcsUtils.isSrRcsOptionsEnabled(ImsRegistry.getContext(), i2) && valueOf.booleanValue() && (bundle.containsKey("CAPA_TAGS") || bundle.containsKey("RESP_CODE"))) {
                            capabilityDiscoveryModule.notifyOptionsResponseToAOSP(parcelableArrayList.get(0), bundle.getInt("RESP_CODE"), bundle.getString("REASON_HDR"), bundle.getStringArrayList("CAPA_TAGS"), i2);
                            break;
                        } else {
                            capabilityDiscoveryModule.onUpdateCapabilities(parcelableArrayList, bundle.getLong("FEATURES"), CapabilityConstants.CapExResult.values()[message.arg1], bundle.getString("PIDF"), bundle.getInt("LASTSEEN"), bundle.getParcelableArrayList("PAID"), i2, bundle.getBoolean("ISTOKENUSED"), bundle.getString("EXTFEATURE"));
                            break;
                        }
                    case 5:
                        capabilityDiscoveryModule.setOwnCapabilities(((Integer) message.obj).intValue(), message.arg1 == 1);
                        break;
                    case 6:
                        IMSLog.i(LOG_TAG, message.arg2, "EVT_REQUEST_CAPABILITIES: refreshtype = " + message.arg1);
                        capabilityDiscoveryModule.requestCapabilityExchange((ImsUri) message.obj, CapabilityConstants.RequestType.REQUEST_TYPE_NONE, CapabilityRefreshType.values()[message.arg1] == CapabilityRefreshType.ALWAYS_FORCE_REFRESH, message.arg2, 0);
                        break;
                    case 7:
                        int intValue = ((Integer) message.obj).intValue();
                        capabilityDiscoveryModule.loadConfig(intValue);
                        capabilityDiscoveryModule.onImsSettingsUpdate(intValue);
                        break;
                    case 8:
                        IMSLog.i(LOG_TAG, message.arg2, "EVT_LAZY_CAPABILITIES_QUERY: refreshtype = " + message.arg1);
                        capabilityDiscoveryModule.requestCapabilityExchange((ImsUri) message.obj, CapabilityConstants.RequestType.REQUEST_TYPE_LAZY, CapabilityRefreshType.values()[message.arg1] == CapabilityRefreshType.ALWAYS_FORCE_REFRESH, message.arg2, 0);
                        break;
                    case 9:
                        capabilityDiscoveryModule.onOwnCapabilitiesChanged(message.arg1);
                        break;
                    case 10:
                        capabilityDiscoveryModule._syncContact((Mno) message.obj);
                        break;
                    case 11:
                        capabilityUtil.onUserSwitched();
                        break;
                    case 12:
                        capabilityDiscoveryModule.onBootCompleted();
                        break;
                    case 13:
                        capabilityDiscoveryModule.onRetrySyncContact();
                        break;
                    case 14:
                        capabilityDiscoveryModule.exchangeCapabilitiesForVSH(message.arg1, ((Boolean) message.obj).booleanValue());
                        break;
                    case 15:
                        capabilityDiscoveryModule.onAdsChanged();
                        break;
                    case 16:
                        capabilityUtil.sendRCSCInfoToHQM(message.arg1);
                        break;
                    case 17:
                        capabilityDiscoveryModule.deleteNonRcsDataFromContactDB(((Integer) message.obj).intValue());
                        break;
                    case 18:
                        capabilityDiscoveryModule.poll(true, message.arg1 == 1, ((Integer) message.obj).intValue());
                        break;
                    default:
                        switch (i) {
                            case 50:
                                serviceAvailabilityEventListenerWrapper.attachServiceAvailabilityEventListener(message.arg1, (String) message.obj);
                                break;
                            case 51:
                                serviceAvailabilityEventListenerWrapper.detachServiceAvailabilityEventListener(message.arg1);
                                break;
                            case 52:
                                serviceAvailabilityEventListenerWrapper.updateServiceAvailabilityEventListener(message.arg1);
                                break;
                            case 53:
                                capabilityDiscoveryModule.handleDelayedSetOwnCapabilities(((Integer) message.obj).intValue());
                                break;
                            case 54:
                                IMSLog.i(LOG_TAG, message.arg2, "EVT_REQUEST_CAPABILITIES: requestId = " + message.arg1);
                                capabilityDiscoveryModule.requestCapabilityExchange((ImsUri) message.obj, CapabilityConstants.RequestType.REQUEST_TYPE_SR_API, true, message.arg2, message.arg1);
                                break;
                            default:
                                Log.e(LOG_TAG, "handleEvent: Undefined message.");
                                return false;
                        }
                }
            }
        } else {
            capabilityDiscoveryModule.requestCapabilityExchange((Set) message.obj, CapabilityConstants.RequestType.REQUEST_TYPE_NONE, message.arg1, message.arg2);
        }
        return true;
    }
}
