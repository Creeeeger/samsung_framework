package com.sec.internal.ims.core;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class RegistrationEvents {
    protected static final int DATAUSAGE_REACH_TO_LIMIT = 712;
    protected static final int EVENT_ADS_CHANGED = 702;
    public static final int EVENT_BLOCK_REGISTRATION_HYS_TIMER = 806;
    public static final int EVENT_BLOCK_REGISTRATION_ROAMING_TIMER = 144;
    public static final int EVENT_BOOT_COMPLETED = 150;
    protected static final int EVENT_CELL_INFO_CHANGED = 24;
    public static final int EVENT_CHATBOT_AGREEMENT_CHANGED = 56;
    public static final int EVENT_CHECK_UNPROCESSED_OMADM_CONFIG = 407;
    public static final int EVENT_CHECK_UNPROCESSED_VOLTE_STATE = 157;
    public static final int EVENT_CONFIG_UPDATED = 35;
    public static final int EVENT_CONTACT_ACTIVATED = 809;
    public static final int EVENT_DEFAULT_NETWORK_CHANGED = 706;
    public static final int EVENT_DELAYED_DEREGISTER = 128;
    public static final int EVENT_DELAYED_DEREGISTERINTERNAL = 145;
    public static final int EVENT_DELAYED_STOP_PDN = 133;
    public static final int EVENT_DEREGISTERED = 101;
    public static final int EVENT_DEREGISTER_BY_PENDED_DEFAULT_NET_CHANGED = 18;
    public static final int EVENT_DEREGISTER_FOR_DCN = 807;
    public static final int EVENT_DEREGISTER_TIMEOUT = 107;
    public static final int EVENT_DEREGISTRATION_REQUESTED = 120;
    public static final int EVENT_DISCONNECT_PDN_BY_TIMEOUT = 404;
    public static final int EVENT_DISCONNECT_PDN_BY_VOLTE_DISABLED = 406;
    public static final int EVENT_DM_CONFIG_COMPLETE = 29;
    public static final int EVENT_DM_CONFIG_TIMEOUT = 43;
    public static final int EVENT_DNS_RESPONSE = 57;
    public static final int EVENT_DO_PENDING_UPDATE_REGISTRATION = 32;
    public static final int EVENT_DO_RECOVERY_ACTION = 134;
    public static final int EVENT_DSAC_MODE_CHANGED = 146;
    public static final int EVENT_DYNAMIC_IMS_UPDATED = 408;
    public static final int EVENT_E911_REGI_TIMEOUT = 155;
    protected static final int EVENT_EC_VBC_SETTING_CHANGED = 156;
    public static final int EVENT_EMERGENCY_READY = 119;
    protected static final int EVENT_EPDG_CONNECTED = 26;
    public static final int EVENT_EPDG_DEREGISTER_REQUESTED = 124;
    public static final int EVENT_EPDG_DISCONNECTED = 27;
    public static final int EVENT_EPDG_EVENT_TIMEOUT = 135;
    public static final int EVENT_EPDG_HANDOVER_ENABLE_CHANGED = 154;
    protected static final int EVENT_EPDG_IKEERROR = 52;
    protected static final int EVENT_EPDG_IPSECDISCONNECTED = 54;
    public static final int EVENT_EPDG_VOICE_PREFERENCE_CHANGED = 123;
    public static final int EVENT_FINISH_OMADM_PROVISIONING_UPDATE = 39;
    public static final int EVENT_FINISH_THREAD_FOR_GETTING_HOST_ADDRESS = 60;
    public static final int EVENT_FLIGHT_MODE_CHANGED = 12;
    public static final int EVENT_FORCED_UPDATE_REGISTRATION_REQUESTED = 140;
    public static final int EVENT_FORCE_SMS_PUSH = 143;
    public static final int EVENT_GEO_LOCATION_UPDATED = 40;
    public static final int EVENT_HANDOFF_EVENT_TIMEOUT = 136;
    public static final int EVENT_IMS_PDN_CONNECTING = 401;
    public static final int EVENT_IMS_PROFILE_UPDATED = 15;
    public static final int EVENT_IMS_SWITCH_UPDATED = 17;
    public static final int EVENT_LOCAL_IP_CHANGED = 5;
    public static final int EVENT_LOCATION_CACHE_EXPIRY = 803;
    public static final int EVENT_LOCATION_TIMEOUT = 800;
    public static final int EVENT_LTE_DATA_NETWORK_MODE_CHAGED = 50;
    public static final int EVENT_MANUAL_DEREGISTER = 10;
    public static final int EVENT_MANUAL_REGISTER = 9;
    public static final int EVENT_MNOMAP_UPDATED = 148;
    public static final int EVENT_MOBILE_DATA_CHANGED = 34;
    public static final int EVENT_MOBILE_DATA_PRESSED_CHANGED = 153;
    public static final int EVENT_MOBILE_RADIO_CONNECTED = 61;
    public static final int EVENT_MOBILE_RADIO_DISCONNECTED = 62;
    public static final int EVENT_NETWORK_EVENT_CHANGED = 701;
    public static final int EVENT_NETWORK_MODE_CHANGE_TIMEOUT = 49;
    public static final int EVENT_NETWORK_SUSPENDED = 151;
    public static final int EVENT_NETWORK_TYPE = 3;
    public static final int EVENT_OWN_CAPABILITIES_CHANGED = 31;
    public static final int EVENT_PCO_INFO = 703;
    public static final int EVENT_PDN_CONNECTED = 22;
    public static final int EVENT_PDN_DISCONNECTED = 23;
    protected static final int EVENT_PDN_FAILED = 129;
    public static final int EVENT_POSTPONE_UPDATE_REGISTRATION_BY_DMA_CHANGE = 139;
    public static final int EVENT_RCS_ALLOWED_CHANGED = 53;
    public static final int EVENT_RCS_DELAYED_DEREGISTER = 142;
    public static final int EVENT_RCS_USER_SETTING_CHANGED = 147;
    public static final int EVENT_REFRESH_REGISTRATION = 141;
    public static final int EVENT_REGEVENT_CONTACT_URI_NOTIFIED = 810;
    public static final int EVENT_REGISTERED = 100;
    public static final int EVENT_REGISTER_ERROR = 104;
    public static final int EVENT_REMOVE_CHAT_FEATURES_BY_SIP_FORBIDDEN = 137;
    public static final int EVENT_REQUEST_DM_CONFIG = 28;
    public static final int EVENT_REQUEST_FULL_NETWORK_REGISTRATION = 63;
    public static final int EVENT_REQUEST_LOCATION = 801;
    public static final int EVENT_REQUEST_NOTIFY_VOLTE_SETTINGS_OFF = 131;
    public static final int EVENT_REQUEST_X509_CERT_VERIFY = 30;
    public static final int EVENT_ROAMING_DATA_CHANGED = 44;
    public static final int EVENT_ROAMING_SETTINGS_CHANGED = 46;
    public static final int EVENT_RTTMODE_UPDATED = 705;
    public static final int EVENT_SETUP_WIZARD_COMPLETED = 811;
    public static final int EVENT_SET_THIRDPARTY_FEATURE_TAGS = 126;
    public static final int EVENT_SHUTDOWN = 130;
    public static final int EVENT_SIM_READY = 20;
    public static final int EVENT_SIM_REFRESH = 36;
    public static final int EVENT_SIM_REFRESH_TIMEOUT = 42;
    protected static final int EVENT_SIM_SUBSCRIBE_ID_CHANGED = 707;
    public static final int EVENT_SSAC_REREGISTER = 121;
    public static final int EVENT_START_GEO_LOCATION_UPDATE = 51;
    public static final int EVENT_START_OMADM_PROVISIONING_UPDATE = 38;
    public static final int EVENT_SUBSCRIBE_ERROR = 108;
    public static final int EVENT_TELEPHONY_CALL_STATUS_CHANGED = 33;
    public static final int EVENT_TIMS_ESTABLISHMENT_TIMEOUT = 132;
    public static final int EVENT_TIMS_ESTABLISHMENT_TIMEOUT_RCS = 152;
    public static final int EVENT_TRY_EMERGENCY_REGISTER = 118;
    public static final int EVENT_TRY_REGISTER = 2;
    public static final int EVENT_TRY_REGISTER_TIMER = 4;
    public static final int EVENT_TTYMODE_UPDATED = 37;
    protected static final int EVENT_UICC_CHANGED = 21;
    public static final int EVENT_UPDATE_CHAT_SERVICE_BY_DMA_CHANGE = 138;
    public static final int EVENT_UPDATE_REGISTRATION = 25;
    public static final int EVENT_UPDATE_REGI_CONFIG = 409;
    public static final int EVENT_UPDATE_SIP_DELEGATE_REGISTRATION = 58;
    public static final int EVENT_UPDATE_SIP_DELEGATE_REGI_TIMEOUT = 59;
    public static final int EVENT_USER_SWITCHED = 1000;
    public static final int EVENT_VIDEO_SETTING_CHANGED = 127;
    public static final int EVENT_VOLTE_SETTING_CHANGED = 125;
    public static final int EVENT_VOWIFI_SETTING_CHANGED = 122;
    public static final int EVENT_WFC_SWITCH_PROFILE = 704;
    private static final String TAG = "RegistrationEvents";
    private static final Map<Integer, String> msgToStringMap = new HashMap();

    private RegistrationEvents() {
    }

    static {
        Arrays.stream(RegistrationEvents.class.getDeclaredFields()).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationEvents$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$static$0;
                lambda$static$0 = RegistrationEvents.lambda$static$0((Field) obj);
                return lambda$static$0;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationEvents$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$static$1;
                lambda$static$1 = RegistrationEvents.lambda$static$1((Field) obj);
                return lambda$static$1;
            }
        }).filter(new Predicate() { // from class: com.sec.internal.ims.core.RegistrationEvents$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$static$2;
                lambda$static$2 = RegistrationEvents.lambda$static$2((Field) obj);
                return lambda$static$2;
            }
        }).forEach(new Consumer() { // from class: com.sec.internal.ims.core.RegistrationEvents$$ExternalSyntheticLambda3
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RegistrationEvents.lambda$static$3((Field) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$0(Field field) {
        return Modifier.isStatic(field.getModifiers());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$1(Field field) {
        return Modifier.isFinal(field.getModifiers());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$2(Field field) {
        return field.getType().isAssignableFrom(Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$3(Field field) {
        try {
            msgToStringMap.put(Integer.valueOf(field.getInt(null)), field.getName());
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    public static String msgToString(int i) {
        return msgToStringMap.getOrDefault(Integer.valueOf(i), "UNKNOWN(" + i + ")");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static boolean handleEvent(android.os.Message r5, com.sec.internal.ims.core.RegistrationManagerHandler r6, com.sec.internal.ims.core.RegistrationManagerBase r7, com.sec.internal.ims.core.NetworkEventController r8, com.sec.internal.ims.core.UserEventController r9) {
        /*
            Method dump skipped, instructions count: 1678
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.RegistrationEvents.handleEvent(android.os.Message, com.sec.internal.ims.core.RegistrationManagerHandler, com.sec.internal.ims.core.RegistrationManagerBase, com.sec.internal.ims.core.NetworkEventController, com.sec.internal.ims.core.UserEventController):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handleEvent$4(RegisterTask registerTask) {
        registerTask.getGovernor().onContactActivated();
    }
}
