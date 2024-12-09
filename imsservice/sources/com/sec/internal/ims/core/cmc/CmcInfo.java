package com.sec.internal.ims.core.cmc;

import com.sec.internal.constants.ims.cmstore.mcs.contactsync.McsContactSyncConstants;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class CmcInfo {
    boolean mOobe = false;
    boolean mActivation = false;
    int mLineSlotIndex = -1;
    String mDeviceType = "";
    String mDeviceId = "";
    String mAccessToken = "";
    String mLineId = "";
    String mLineOwnerDeviceId = "";
    String mLineImpu = "";
    String mSaServerUrl = "";
    List<String> mPcscfAddrList = new ArrayList();
    boolean mCallforkingEnabled = true;
    boolean mHasSd = true;
    int mNetworkPref = 1;
    boolean mIsEmergencyCallSupported = false;
    boolean mIsSameWiFiOnly = false;
    boolean mIsDualCmc = false;

    public enum DataType {
        BOOLEAN,
        INTEGER,
        STRING,
        LIST,
        NOT_DEFINED
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'ACTIVATION' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:293)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:266)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class CmcInfoType {
        private static final /* synthetic */ CmcInfoType[] $VALUES;
        public static final CmcInfoType ACCESS_TOKEN;
        public static final CmcInfoType ACTIVATION;
        public static final CmcInfoType CALL_FORKING_ENABLED;
        public static final CmcInfoType DEVICE_ID;
        public static final CmcInfoType DEVICE_TYPE;
        public static final CmcInfoType DUAL_CMC;
        public static final CmcInfoType EMERGENCY_CALL_SUPPORTED;
        public static final CmcInfoType HAS_SD;
        public static final CmcInfoType LINE_ID;
        public static final CmcInfoType LINE_IMPU;
        public static final CmcInfoType LINE_OWNER_DEVICE_ID;
        public static final CmcInfoType LINE_SLOT_INDEX;
        public static final CmcInfoType NETWORK_PREF;
        public static final CmcInfoType OOBE;
        public static final CmcInfoType PCSCF_ADDR_LIST;
        public static final CmcInfoType SAME_WIFI_ONLY;
        public static final CmcInfoType SA_SERVER_URL;
        private DataType mDataType;

        private static /* synthetic */ CmcInfoType[] $values() {
            return new CmcInfoType[]{ACTIVATION, LINE_SLOT_INDEX, DEVICE_TYPE, DEVICE_ID, ACCESS_TOKEN, LINE_ID, LINE_OWNER_DEVICE_ID, LINE_IMPU, SA_SERVER_URL, PCSCF_ADDR_LIST, CALL_FORKING_ENABLED, HAS_SD, NETWORK_PREF, OOBE, EMERGENCY_CALL_SUPPORTED, SAME_WIFI_ONLY, DUAL_CMC};
        }

        public static CmcInfoType valueOf(String str) {
            return (CmcInfoType) Enum.valueOf(CmcInfoType.class, str);
        }

        public static CmcInfoType[] values() {
            return (CmcInfoType[]) $VALUES.clone();
        }

        static {
            DataType dataType = DataType.BOOLEAN;
            ACTIVATION = new CmcInfoType("ACTIVATION", 0, dataType);
            DataType dataType2 = DataType.INTEGER;
            LINE_SLOT_INDEX = new CmcInfoType("LINE_SLOT_INDEX", 1, dataType2);
            DataType dataType3 = DataType.STRING;
            DEVICE_TYPE = new CmcInfoType("DEVICE_TYPE", 2, dataType3);
            DEVICE_ID = new CmcInfoType("DEVICE_ID", 3, dataType3);
            ACCESS_TOKEN = new CmcInfoType(McsContactSyncConstants.Intents.EXTRA_ACCESS_TOKEN, 4, dataType3);
            LINE_ID = new CmcInfoType("LINE_ID", 5, dataType3);
            LINE_OWNER_DEVICE_ID = new CmcInfoType("LINE_OWNER_DEVICE_ID", 6, dataType3);
            LINE_IMPU = new CmcInfoType("LINE_IMPU", 7, dataType3);
            SA_SERVER_URL = new CmcInfoType("SA_SERVER_URL", 8, dataType3);
            PCSCF_ADDR_LIST = new CmcInfoType("PCSCF_ADDR_LIST", 9, DataType.LIST);
            CALL_FORKING_ENABLED = new CmcInfoType("CALL_FORKING_ENABLED", 10, dataType);
            HAS_SD = new CmcInfoType("HAS_SD", 11, dataType);
            NETWORK_PREF = new CmcInfoType("NETWORK_PREF", 12, dataType2);
            OOBE = new CmcInfoType("OOBE", 13, dataType);
            EMERGENCY_CALL_SUPPORTED = new CmcInfoType("EMERGENCY_CALL_SUPPORTED", 14, dataType);
            SAME_WIFI_ONLY = new CmcInfoType("SAME_WIFI_ONLY", 15, dataType);
            DUAL_CMC = new CmcInfoType("DUAL_CMC", 16, dataType);
            $VALUES = $values();
        }

        private CmcInfoType(String str, int i, DataType dataType) {
            this.mDataType = dataType;
        }

        public boolean isDumpPrintAvailable() {
            DataType dataType;
            return this == DEVICE_TYPE || (dataType = this.mDataType) == DataType.INTEGER || dataType == DataType.BOOLEAN;
        }
    }

    public Object getValue(CmcInfoType cmcInfoType) {
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[cmcInfoType.ordinal()]) {
            case 1:
                return Boolean.valueOf(this.mOobe);
            case 2:
                return Boolean.valueOf(this.mActivation);
            case 3:
                return Integer.valueOf(this.mLineSlotIndex);
            case 4:
                return this.mDeviceType;
            case 5:
                return this.mDeviceId;
            case 6:
                return this.mAccessToken;
            case 7:
                return this.mLineId;
            case 8:
                return this.mLineOwnerDeviceId;
            case 9:
                return this.mLineImpu;
            case 10:
                return this.mSaServerUrl;
            case 11:
                return this.mPcscfAddrList;
            case 12:
                return Boolean.valueOf(this.mCallforkingEnabled);
            case 13:
                return Boolean.valueOf(this.mHasSd);
            case 14:
                return Integer.valueOf(this.mNetworkPref);
            case 15:
                return Boolean.valueOf(this.mIsEmergencyCallSupported);
            case 16:
                return Boolean.valueOf(this.mIsSameWiFiOnly);
            case 17:
                return Boolean.valueOf(this.mIsDualCmc);
            default:
                return null;
        }
    }

    public boolean compare(CmcInfoType cmcInfoType, CmcInfo cmcInfo) {
        Object value = getValue(cmcInfoType);
        Object value2 = cmcInfo.getValue(cmcInfoType);
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType[cmcInfoType.mDataType.ordinal()];
        if (i == 1) {
            return ((Boolean) value).booleanValue() == ((Boolean) value2).booleanValue();
        }
        if (i == 2) {
            return ((Integer) value).intValue() == ((Integer) value2).intValue();
        }
        if (i == 3) {
            if (value == null || value2 == null) {
                return value == null && value2 == null;
            }
            return ((String) value).equals((String) value2);
        }
        if (i != 4) {
            return false;
        }
        if (value != null && value2 != null) {
            List list = (List) value;
            List list2 = (List) value2;
            if (list.size() == list2.size() && list.containsAll(list2) && list2.containsAll(list)) {
                return true;
            }
        }
        return value == null && value2 == null;
    }

    /* renamed from: com.sec.internal.ims.core.cmc.CmcInfo$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType;

        static {
            int[] iArr = new int[DataType.values().length];
            $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType = iArr;
            try {
                iArr[DataType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType[DataType.INTEGER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType[DataType.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType[DataType.LIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[CmcInfoType.values().length];
            $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType = iArr2;
            try {
                iArr2[CmcInfoType.OOBE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[CmcInfoType.ACTIVATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[CmcInfoType.LINE_SLOT_INDEX.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[CmcInfoType.DEVICE_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[CmcInfoType.DEVICE_ID.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[CmcInfoType.ACCESS_TOKEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[CmcInfoType.LINE_ID.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[CmcInfoType.LINE_OWNER_DEVICE_ID.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[CmcInfoType.LINE_IMPU.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[CmcInfoType.SA_SERVER_URL.ordinal()] = 10;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[CmcInfoType.PCSCF_ADDR_LIST.ordinal()] = 11;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[CmcInfoType.CALL_FORKING_ENABLED.ordinal()] = 12;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[CmcInfoType.HAS_SD.ordinal()] = 13;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[CmcInfoType.NETWORK_PREF.ordinal()] = 14;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[CmcInfoType.EMERGENCY_CALL_SUPPORTED.ordinal()] = 15;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[CmcInfoType.SAME_WIFI_ONLY.ordinal()] = 16;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$CmcInfoType[CmcInfoType.DUAL_CMC.ordinal()] = 17;
            } catch (NoSuchFieldError unused21) {
            }
        }
    }

    public boolean checkValid(CmcInfoType cmcInfoType) {
        Object value = getValue(cmcInfoType);
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$core$cmc$CmcInfo$DataType[cmcInfoType.mDataType.ordinal()];
        if (i == 3) {
            String str = (String) value;
            return (str == null || str.isEmpty()) ? false : true;
        }
        if (i != 4) {
            return true;
        }
        List list = (List) value;
        return list != null && list.size() > 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<");
        for (CmcInfoType cmcInfoType : CmcInfoType.values()) {
            sb.append(cmcInfoType.name());
            sb.append(":");
            sb.append(getValue(cmcInfoType));
            sb.append(", ");
        }
        if (sb.lastIndexOf(", ") != -1) {
            sb.delete(sb.lastIndexOf(", "), sb.length());
        }
        sb.append(">");
        return sb.toString();
    }
}
