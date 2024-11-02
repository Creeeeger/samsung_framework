package com.samsung.android.ims.settings;

import android.content.ContentValues;
import android.location.LocationManager;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class SemImsProfile implements Parcelable {
    public static final Parcelable.Creator<SemImsProfile> CREATOR = new Parcelable.Creator<SemImsProfile>() { // from class: com.samsung.android.ims.settings.SemImsProfile.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SemImsProfile createFromParcel(Parcel in) {
            return new SemImsProfile(in);
        }

        @Override // android.os.Parcelable.Creator
        public SemImsProfile[] newArray(int size) {
            return new SemImsProfile[size];
        }
    };
    private static final String LOG_TAG = "SemImsProfile";
    private JSONObject mBody;

    /* loaded from: classes5.dex */
    public static class ImsCategory {
        public static final String RCS_SERVICE = "rcs";
        public static final String VOLTE_SERVICE = "volte";
    }

    /* loaded from: classes5.dex */
    public static class RcsProfileType {
        public static final String RCS_PROFILE_NONE = "";
        public static final String RCS_PROFILE_TYPE_JOYN_BLACKBIRD = "joyn_blackbird";
        public static final String RCS_PROFILE_TYPE_JOYN_CPR = "joyn_cpr";
        public static final String RCS_PROFILE_TYPE_NAGUIDELINES = "NAGuidelines";
        public static final String RCS_PROFILE_TYPE_UP = "UP";
        public static final String RCS_PROFILE_TYPE_UP10 = "UP_1.0";
        public static final String RCS_PROFILE_TYPE_UP20 = "UP_2.0";
        public static final String RCS_PROFILE_TYPE_UP21 = "UP_2.1";
        public static final String RCS_PROFILE_TYPE_UP22 = "UP_2.2";
        public static final String RCS_PROFILE_TYPE_UP23 = "UP_2.3";
        public static final String RCS_PROFILE_TYPE_UP2_PREFIX = "UP_2";
        public static final String RCS_PROFILE_TYPE_UP30 = "UP_3.0";
        public static final String RCS_PROFILE_TYPE_UPT = "UP_T";
    }

    /* synthetic */ SemImsProfile(Parcel parcel, SemImsProfileIA semImsProfileIA) {
        this(parcel);
    }

    /* loaded from: classes5.dex */
    public static class ImsFeature {
        public static final String CDPN = "cdpn";
        public static final String IM = "im";
        public static final String MMTEL_VOICE = "mmtel";
        public static final String MMTEL_VOICE_VIDEO = "mmtel-video";
        public static final String OPTIONS = "options";
        public static final String PRESENCE = "presence";
        public static final String PROFILE = "profile";
        public static final String SMSIP = "smsip";
        public static final String SS = "ss";
        public static final String MMTEL_CALL_COMPOSER = "mmtel-call-composer";
        protected static final String[] volteServices = {"mmtel", "mmtel-video", MMTEL_CALL_COMPOSER, "smsip", "ss", "cdpn"};
        public static final String FT = "ft";
        public static final String FT_HTTP = "ft_http";
        public static final String SLM = "slm";
        public static final String IS = "is";
        public static final String VS = "vs";
        public static final String EUC = "euc";
        public static final String GLS = "gls";
        public static final String EC = "ec";
        public static final String CHATBOT_COMMUNICATION = "chatbot-communication";
        public static final String PLUG_IN = "plug-in";
        public static final String LASTSEEN = "lastseen";
        protected static final String[] rcsServices = {"options", "presence", "im", FT, FT_HTTP, SLM, IS, VS, EUC, GLS, "profile", EC, CHATBOT_COMMUNICATION, PLUG_IN, LASTSEEN};
        public static final String XDM = "xdm";
        private static final String[] mImsFeatureList = {"mmtel-video", "mmtel", "smsip", SLM, "im", FT, FT_HTTP, IS, VS, "options", "presence", XDM, EUC};

        public static boolean isValidImsFeature(String queriedFeature) {
            for (String feature : mImsFeatureList) {
                if (feature.equals(queriedFeature)) {
                    return true;
                }
            }
            return false;
        }

        public static String[] getVoLteServiceList() {
            return volteServices;
        }

        public static String[] getRcsServiceList() {
            return rcsServices;
        }
    }

    /* loaded from: classes5.dex */
    public enum NETWORK_TYPE {
        UNKNOWN(0),
        GPRS(1),
        EDGE(2),
        UMTS(3),
        CDMA(4),
        EVDO_0(5),
        EVDO_A(6),
        _1XRTT(7),
        HSDPA(8),
        HSUPA(9),
        HSPA(10),
        EVDO_B(12),
        LTE(13),
        EHRPD(14),
        HSPAP(15),
        GSM(16),
        TDSCDMA(17),
        WIFI(18),
        NR(20),
        ALL(100);

        private int mType;

        NETWORK_TYPE(int type) {
            this.mType = 0;
            this.mType = type;
        }

        public static NETWORK_TYPE from(int type) {
            for (NETWORK_TYPE n : values()) {
                if (n.mType == type) {
                    return n;
                }
            }
            return UNKNOWN;
        }

        public static NETWORK_TYPE from(String typeName) {
            for (NETWORK_TYPE n : values()) {
                if (n.toString().equalsIgnoreCase(typeName)) {
                    return n;
                }
            }
            return UNKNOWN;
        }

        @Override // java.lang.Enum
        public String toString() {
            switch (AnonymousClass2.$SwitchMap$com$samsung$android$ims$settings$SemImsProfile$NETWORK_TYPE[ordinal()]) {
                case 1:
                    return "1xrtt";
                case 2:
                    return "hspa+";
                default:
                    String rtn = super.toString().toLowerCase(Locale.US);
                    return rtn;
            }
        }

        public boolean isOneOf(NETWORK_TYPE... types) {
            if (types != null) {
                for (NETWORK_TYPE type : types) {
                    if (this == type) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    /* renamed from: com.samsung.android.ims.settings.SemImsProfile$2 */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$samsung$android$ims$settings$SemImsProfile$NETWORK_TYPE;

        static {
            int[] iArr = new int[NETWORK_TYPE.values().length];
            $SwitchMap$com$samsung$android$ims$settings$SemImsProfile$NETWORK_TYPE = iArr;
            try {
                iArr[NETWORK_TYPE._1XRTT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$samsung$android$ims$settings$SemImsProfile$NETWORK_TYPE[NETWORK_TYPE.HSPAP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public boolean hasService(String service) {
        for (Set<String> s : getAllServiceSet().values()) {
            if (s.contains(service)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: com.samsung.android.ims.settings.SemImsProfile$1 */
    /* loaded from: classes5.dex */
    class AnonymousClass1 implements Parcelable.Creator<SemImsProfile> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public SemImsProfile createFromParcel(Parcel in) {
            return new SemImsProfile(in);
        }

        @Override // android.os.Parcelable.Creator
        public SemImsProfile[] newArray(int size) {
            return new SemImsProfile[size];
        }
    }

    private SemImsProfile(Parcel in) {
        fromJson(in.readString());
    }

    public SemImsProfile(String json) {
        fromJson(json);
    }

    public SemImsProfile(SemImsProfile profile) {
        if (profile != null) {
            fromJson(profile.toJson());
        }
    }

    public SemImsProfile(ContentValues cv) {
        this.mBody = new JSONObject();
        update(cv);
    }

    private void update(ContentValues cv) {
        if (cv != null) {
            try {
                for (String key : cv.keySet()) {
                    String val = cv.getAsString(key);
                    if (val != null) {
                        if (val.matches("\\[\\{.*\\}\\]")) {
                            this.mBody.put(key, new JSONArray(val));
                        } else {
                            this.mBody.put(key, cv.get(key));
                        }
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    private void fromJson(String json) {
        if (json != null) {
            try {
                this.mBody = new JSONObject(json);
                splitNetwork();
            } catch (IllegalArgumentException | JSONException e) {
                this.mBody = new JSONObject();
                e.printStackTrace();
            }
        }
    }

    private String toJson() {
        return this.mBody.toString();
    }

    protected void splitNetwork() throws JSONException {
        JSONArray newNetwork = new JSONArray();
        JSONArray network = this.mBody.getJSONArray(LocationManager.NETWORK_PROVIDER);
        if (network != null) {
            for (int i = 0; i < network.length(); i++) {
                JSONObject obj = network.optJSONObject(i);
                String types = obj.optString("type");
                for (String s : TextUtils.split(types, ",")) {
                    JSONObject tmp = new JSONObject(obj, new String[]{"services", "enabled", "dereg_timeout"});
                    tmp.put("type", s);
                    newNetwork.put(tmp);
                }
            }
            this.mBody.put(LocationManager.NETWORK_PROVIDER, newNetwork);
        }
    }

    private static int getNetworkType(String name) {
        return NETWORK_TYPE.from(name).mType;
    }

    private Map<Integer, Set<String>> getAllServiceSet() {
        Map<Integer, Set<String>> result = new ArrayMap<>();
        JSONArray network = this.mBody.optJSONArray(LocationManager.NETWORK_PROVIDER);
        if (network != null) {
            for (int i = 0; i < network.length(); i++) {
                JSONObject n = network.optJSONObject(i);
                JSONArray serviceArr = n.optJSONArray("services");
                if (serviceArr == null) {
                    Log.e(LOG_TAG, "getAllServiceSet: No services array in " + n.toString());
                } else {
                    Set<String> services = new ArraySet<>();
                    for (int j = 0; j < serviceArr.length(); j++) {
                        services.add(serviceArr.optString(j));
                    }
                    result.put(Integer.valueOf(getNetworkType(n.optString("type"))), services);
                }
            }
        }
        return result;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeString(toJson());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private void put(String key, Boolean value) {
        try {
            this.mBody.put(key, value);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public boolean hasEmergencySupport() {
        return getAsBoolean("emergency_support").booleanValue();
    }

    private Boolean getAsBoolean(String key) {
        return Boolean.valueOf(this.mBody.optBoolean(key));
    }
}
