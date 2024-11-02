package com.samsung.android.sdk.routines.automationservice.data;

import com.google.gson.annotations.SerializedName;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__StringsJVMKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ParameterValues {
    public static final Companion Companion = new Companion(null);
    public final Map parameterValueMap;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class ParameterValue {
        public static final Companion Companion = new Companion(null);

        @SerializedName("TYPE")
        private ValueType mValueType;

        @SerializedName("VALUE")
        private Object value;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes3.dex */
        public final class Companion {

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* loaded from: classes3.dex */
            public abstract /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[ValueType.values().length];
                    try {
                        iArr[ValueType.BOOLEAN.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[ValueType.NUMBER.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[ValueType.STRING.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[ValueType.LIST_BOOLEAN.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[ValueType.LIST_NUMBER.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    try {
                        iArr[ValueType.LIST_STRING.ordinal()] = 6;
                    } catch (NoSuchFieldError unused6) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public static ValueType parseType(JSONObject jSONObject) {
                ValueType.Companion companion = ValueType.Companion;
                String string = jSONObject.getString("TYPE");
                companion.getClass();
                for (ValueType valueType : ValueType.values()) {
                    if (StringsKt__StringsJVMKt.equals(valueType.getMName(), string, true)) {
                        return valueType;
                    }
                }
                return ValueType.UNKNOWN;
            }

            /* JADX WARN: Code restructure failed: missing block: B:101:0x0067, code lost:
            
                if (kotlin.jvm.internal.Intrinsics.areEqual(r4, kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(java.lang.String.class)) != false) goto L26;
             */
            /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0012. Please report as an issue. */
            /* JADX WARN: Multi-variable type inference failed */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public static java.lang.Object parseValue(org.json.JSONObject r8, com.samsung.android.sdk.routines.automationservice.data.ParameterValues.ParameterValue.ValueType r9) {
                /*
                    Method dump skipped, instructions count: 628
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.routines.automationservice.data.ParameterValues.ParameterValue.Companion.parseValue(org.json.JSONObject, com.samsung.android.sdk.routines.automationservice.data.ParameterValues$ParameterValue$ValueType):java.lang.Object");
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes3.dex */
        public enum ValueType {
            UNKNOWN("UNKNOWN"),
            BOOLEAN("BOOLEAN"),
            NUMBER("NUMBER"),
            STRING("STRING"),
            LIST_BOOLEAN("LIST{BOOLEAN}"),
            LIST_NUMBER("LIST{NUMBER}"),
            LIST_STRING("LIST{STRING}");

            public static final Companion Companion = new Companion(null);
            private final String mName;

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* loaded from: classes3.dex */
            public final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }
            }

            ValueType(String str) {
                this.mName = str;
            }

            public final String getMName() {
                return this.mName;
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes3.dex */
        public abstract /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ValueType.values().length];
                try {
                    iArr[ValueType.BOOLEAN.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ValueType.NUMBER.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ValueType.LIST_BOOLEAN.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[ValueType.LIST_NUMBER.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[ValueType.STRING.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[ValueType.LIST_STRING.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        private ParameterValue() {
        }

        public /* synthetic */ ParameterValue(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Object getValue() {
            return this.value;
        }

        public final ValueType getValueType() {
            ValueType valueType = this.mValueType;
            if (valueType == null) {
                return null;
            }
            return valueType;
        }

        public final String toJsonString() {
            JSONObject jSONObject = new JSONObject();
            try {
                ValueType valueType = this.mValueType;
                ValueType valueType2 = null;
                if (valueType == null) {
                    valueType = null;
                }
                jSONObject.put("TYPE", valueType.getMName());
                ValueType valueType3 = this.mValueType;
                if (valueType3 != null) {
                    valueType2 = valueType3;
                }
                int i = 0;
                switch (WhenMappings.$EnumSwitchMapping$0[valueType2.ordinal()]) {
                    case 1:
                    case 2:
                        jSONObject.put("VALUE", String.valueOf(this.value));
                        break;
                    case 3:
                        JSONArray jSONArray = new JSONArray();
                        Object[] objArr = (Object[]) this.value;
                        int length = objArr.length;
                        while (i < length) {
                            jSONArray.put(String.valueOf(objArr[i]));
                            i++;
                        }
                        jSONObject.put("VALUE", jSONArray);
                        break;
                    case 4:
                        JSONArray jSONArray2 = new JSONArray();
                        Object[] objArr2 = (Object[]) this.value;
                        int length2 = objArr2.length;
                        while (i < length2) {
                            jSONArray2.put(String.valueOf(objArr2[i]));
                            i++;
                        }
                        jSONObject.put("VALUE", jSONArray2);
                        break;
                    case 5:
                        jSONObject.put("VALUE", this.value);
                        break;
                    case 6:
                        JSONArray jSONArray3 = new JSONArray();
                        Object[] objArr3 = (Object[]) this.value;
                        int length3 = objArr3.length;
                        while (i < length3) {
                            jSONArray3.put(objArr3[i]);
                            i++;
                        }
                        jSONObject.put("VALUE", jSONArray3);
                        break;
                    default:
                        new Throwable().printStackTrace();
                        jSONObject.put("VALUE", this.value);
                        break;
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return jSONObject.toString();
        }

        public ParameterValue(boolean z) {
            this.value = Boolean.valueOf(z);
            this.mValueType = ValueType.BOOLEAN;
        }

        public ParameterValue(Boolean[] boolArr) {
            this.value = boolArr.clone();
            this.mValueType = ValueType.LIST_BOOLEAN;
        }

        public ParameterValue(float f) {
            this.value = Float.valueOf(f);
            this.mValueType = ValueType.NUMBER;
        }

        public ParameterValue(Float[] fArr) {
            this.value = fArr.clone();
            this.mValueType = ValueType.LIST_NUMBER;
        }

        public ParameterValue(String str) {
            this.value = str;
            this.mValueType = ValueType.STRING;
        }

        public ParameterValue(String[] strArr) {
            this.value = strArr.clone();
            this.mValueType = ValueType.LIST_STRING;
        }
    }

    public /* synthetic */ ParameterValues(Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(map);
    }

    public final void put(String str, String str2) {
        ((HashMap) this.parameterValueMap).put(str, new ParameterValue(str2));
    }

    public final String toJsonString() {
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : ((HashMap) this.parameterValueMap).entrySet()) {
            hashMap.put(entry.getKey(), ((ParameterValue) entry.getValue()).toJsonString());
        }
        return new JSONObject(hashMap).toString();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : ((HashMap) this.parameterValueMap).entrySet()) {
            sb.append("{");
            sb.append((String) entry.getKey());
            sb.append(",");
            sb.append(((ParameterValue) entry.getValue()).getValue());
            sb.append("@");
            sb.append(((ParameterValue) entry.getValue()).getValueType().name());
            sb.append("}");
        }
        return sb.toString();
    }

    public ParameterValues() {
        this.parameterValueMap = new HashMap();
    }

    private ParameterValues(Map<String, ParameterValue> map) {
        HashMap hashMap = new HashMap();
        this.parameterValueMap = hashMap;
        hashMap.putAll(map);
    }
}
