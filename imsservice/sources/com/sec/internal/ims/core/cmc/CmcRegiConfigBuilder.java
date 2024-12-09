package com.sec.internal.ims.core.cmc;

import android.os.Bundle;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class CmcRegiConfigBuilder {
    private static String LOG_TAG = "CmcRegiConfigBuilder";
    private Map<CmcRegiConfig, Object> mDataMap = new HashMap();

    private enum DataType {
        STRING,
        BOOLEAN,
        STRING_LIST
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'SA_SERVER_URL' uses external variables
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
    public static final class CmcRegiConfig {
        private static final /* synthetic */ CmcRegiConfig[] $VALUES;
        public static final CmcRegiConfig EMERGENCY_CALL_NUMBERS;
        public static final CmcRegiConfig HOTSPOT_ADDRESSES;
        public static final CmcRegiConfig RELAY_TYPE;
        public static final CmcRegiConfig SA_SERVER_URL;
        public static final CmcRegiConfig SUPPORT_DUAL_SIM_CMC;
        Object defaultValue;
        boolean needLogChecker;
        DataType type;

        private static /* synthetic */ CmcRegiConfig[] $values() {
            return new CmcRegiConfig[]{SA_SERVER_URL, RELAY_TYPE, EMERGENCY_CALL_NUMBERS, SUPPORT_DUAL_SIM_CMC, HOTSPOT_ADDRESSES};
        }

        public static CmcRegiConfig valueOf(String str) {
            return (CmcRegiConfig) Enum.valueOf(CmcRegiConfig.class, str);
        }

        public static CmcRegiConfig[] values() {
            return (CmcRegiConfig[]) $VALUES.clone();
        }

        static {
            DataType dataType = DataType.STRING;
            SA_SERVER_URL = new CmcRegiConfig("SA_SERVER_URL", 0, dataType, true, "");
            RELAY_TYPE = new CmcRegiConfig("RELAY_TYPE", 1, dataType, false, "");
            EMERGENCY_CALL_NUMBERS = new CmcRegiConfig("EMERGENCY_CALL_NUMBERS", 2, dataType, true, "");
            SUPPORT_DUAL_SIM_CMC = new CmcRegiConfig("SUPPORT_DUAL_SIM_CMC", 3, DataType.BOOLEAN, false, Boolean.FALSE);
            HOTSPOT_ADDRESSES = new CmcRegiConfig("HOTSPOT_ADDRESSES", 4, DataType.STRING_LIST, true, Collections.EMPTY_LIST);
            $VALUES = $values();
        }

        private CmcRegiConfig(String str, int i, DataType dataType, boolean z, Object obj) {
            this.type = dataType;
            this.needLogChecker = z;
            this.defaultValue = obj;
        }
    }

    public CmcRegiConfigBuilder setData(CmcRegiConfig cmcRegiConfig, Object obj) {
        if (obj == null) {
            obj = cmcRegiConfig.defaultValue;
        }
        this.mDataMap.put(cmcRegiConfig, obj);
        return this;
    }

    public Bundle buildBundle() {
        Bundle bundle = new Bundle();
        StringBuilder sb = new StringBuilder();
        for (CmcRegiConfig cmcRegiConfig : CmcRegiConfig.values()) {
            putBundleData(bundle, cmcRegiConfig);
            Object data = getData(cmcRegiConfig);
            sb.append(cmcRegiConfig.name() + " [");
            if (cmcRegiConfig.needLogChecker) {
                data = IMSLog.checker(data);
            }
            sb.append(data);
            sb.append("] ");
        }
        IMSLog.i(LOG_TAG, "buildBundle: " + ((Object) sb));
        return bundle;
    }

    /* renamed from: com.sec.internal.ims.core.cmc.CmcRegiConfigBuilder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$core$cmc$CmcRegiConfigBuilder$DataType;

        static {
            int[] iArr = new int[DataType.values().length];
            $SwitchMap$com$sec$internal$ims$core$cmc$CmcRegiConfigBuilder$DataType = iArr;
            try {
                iArr[DataType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcRegiConfigBuilder$DataType[DataType.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$core$cmc$CmcRegiConfigBuilder$DataType[DataType.STRING_LIST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private void putBundleData(Bundle bundle, CmcRegiConfig cmcRegiConfig) {
        Object data = getData(cmcRegiConfig);
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$core$cmc$CmcRegiConfigBuilder$DataType[cmcRegiConfig.type.ordinal()];
        if (i == 1) {
            bundle.putString(cmcRegiConfig.name(), (String) data);
            return;
        }
        if (i == 2) {
            bundle.putBoolean(cmcRegiConfig.name(), ((Boolean) data).booleanValue());
        } else {
            if (i == 3) {
                final ArrayList arrayList = new ArrayList();
                ((List) data).stream().forEach(new Consumer() { // from class: com.sec.internal.ims.core.cmc.CmcRegiConfigBuilder$$ExternalSyntheticLambda0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        CmcRegiConfigBuilder.lambda$putBundleData$0(arrayList, obj);
                    }
                });
                bundle.putStringArray(cmcRegiConfig.name(), (String[]) arrayList.toArray(new String[0]));
                return;
            }
            IMSLog.e(LOG_TAG, "putBundleData: invalid data type");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$putBundleData$0(List list, Object obj) {
        list.add((String) obj);
    }

    private Object getData(CmcRegiConfig cmcRegiConfig) {
        return this.mDataMap.get(cmcRegiConfig);
    }

    public static class BundleDataGetter {
        Bundle mBundle;

        public BundleDataGetter(Bundle bundle) {
            this.mBundle = bundle;
        }

        public Object get(CmcRegiConfig cmcRegiConfig) {
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$core$cmc$CmcRegiConfigBuilder$DataType[cmcRegiConfig.type.ordinal()];
            if (i == 1) {
                return this.mBundle.getString(cmcRegiConfig.name(), (String) cmcRegiConfig.defaultValue);
            }
            if (i == 2) {
                return Boolean.valueOf(this.mBundle.getBoolean(cmcRegiConfig.name(), ((Boolean) cmcRegiConfig.defaultValue).booleanValue()));
            }
            if (i != 3) {
                return null;
            }
            return Arrays.asList(this.mBundle.getStringArray(cmcRegiConfig.name()));
        }
    }
}
