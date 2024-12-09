package com.sec.internal.ims.servicemodules.im.strategy;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public abstract class RcsPolicyType {
    public static final RcsPolicyType ATT;
    public static final RcsPolicyType BMC;
    public static final RcsPolicyType BMC_UP;
    public static final RcsPolicyType CBN;
    public static final RcsPolicyType CMCC;
    public static final RcsPolicyType CTC;
    public static final RcsPolicyType CU;
    public static final RcsPolicyType DEFAULT_RCS;
    private static final String LOG_TAG = "RCS_POLICY_TYPE";
    public static final RcsPolicyType ORANGE;
    public static final RcsPolicyType RJIL;
    public static final RcsPolicyType SINGTEL;
    public static final RcsPolicyType SPR;
    public static final RcsPolicyType TCE;
    public static final RcsPolicyType TELENOR;
    public static final RcsPolicyType TELIA;
    public static final RcsPolicyType TELSTRA;
    public static final RcsPolicyType TMOBILE;
    public static final RcsPolicyType TMOUS;
    private static final String UNIVERSAL_PROFILE_SUFFIX = "_UP";
    public static final RcsPolicyType USCC;
    public static final RcsPolicyType VODA;
    public static final RcsPolicyType VZW;
    private final String typeName;
    public static final RcsPolicyType DEFAULT_UP = new AnonymousClass22("DEFAULT_UP", 21, "DEFAULT_UP");
    public static final RcsPolicyType JIBE_UP = new AnonymousClass23("JIBE_UP", 22, "JIBE_UP");
    public static final RcsPolicyType SEC_UP = new AnonymousClass24("SEC_UP", 23, "SEC_UP");
    public static final RcsPolicyType KT_UP = new AnonymousClass25("KT_UP", 24, "KT_UP");
    public static final RcsPolicyType RJIL_UP = new AnonymousClass26("RJIL_UP", 25, "RJIL_UP");
    public static final RcsPolicyType VODAFONE_IN_UP = new AnonymousClass27("VODAFONE_IN_UP", 26, "VODAFONE_IN_UP");
    public static final RcsPolicyType ORANGE_UP = new AnonymousClass28("ORANGE_UP", 27, "ORANGE_UP");
    public static final RcsPolicyType VODA_UP = new AnonymousClass29("VODA_UP", 28, "VODA_UP");
    public static final RcsPolicyType SWISSCOM_UP = new AnonymousClass30("SWISSCOM_UP", 29, "SWISSCOM_UP");
    public static final RcsPolicyType TMOBILE_UP = new AnonymousClass31("TMOBILE_UP", 30, "TMOBILE_UP");
    public static final RcsPolicyType SPR_UP = new AnonymousClass32("SPR_UP", 31, "SPR_UP");
    public static final RcsPolicyType VZW_UP = new AnonymousClass33("VZW_UP", 32, "VZW_UP");
    private static final /* synthetic */ RcsPolicyType[] $VALUES = $values();

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$isOneOf$2(RcsPolicyType rcsPolicyType) {
        return rcsPolicyType == this;
    }

    public abstract IMnoStrategy getStrategy(Context context, int i);

    private static /* synthetic */ RcsPolicyType[] $values() {
        return new RcsPolicyType[]{DEFAULT_RCS, CMCC, CTC, CU, CBN, RJIL, SINGTEL, TMOBILE, VODA, ORANGE, TELENOR, TELIA, TELSTRA, ATT, TMOUS, VZW, SPR, USCC, BMC, BMC_UP, TCE, DEFAULT_UP, JIBE_UP, SEC_UP, KT_UP, RJIL_UP, VODAFONE_IN_UP, ORANGE_UP, VODA_UP, SWISSCOM_UP, TMOBILE_UP, SPR_UP, VZW_UP};
    }

    public static RcsPolicyType valueOf(String str) {
        return (RcsPolicyType) Enum.valueOf(RcsPolicyType.class, str);
    }

    public static RcsPolicyType[] values() {
        return (RcsPolicyType[]) $VALUES.clone();
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$1, reason: invalid class name */
    enum AnonymousClass1 extends RcsPolicyType {
        private AnonymousClass1(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new DefaultRCSMnoStrategy(context, i);
        }
    }

    static {
        String str = "DEFAULT_RCS";
        DEFAULT_RCS = new AnonymousClass1(str, 0, str);
        String str2 = "CMCC";
        CMCC = new AnonymousClass2(str2, 1, str2);
        String str3 = "CTC";
        CTC = new AnonymousClass3(str3, 2, str3);
        String str4 = "CU";
        CU = new AnonymousClass4(str4, 3, str4);
        String str5 = "CBN";
        CBN = new AnonymousClass5(str5, 4, str5);
        String str6 = "RJIL";
        RJIL = new AnonymousClass6(str6, 5, str6);
        String str7 = "SINGTEL";
        SINGTEL = new AnonymousClass7(str7, 6, str7);
        String str8 = "TMOBILE";
        TMOBILE = new AnonymousClass8(str8, 7, str8);
        String str9 = "VODA";
        VODA = new AnonymousClass9(str9, 8, str9);
        String str10 = "ORANGE";
        ORANGE = new AnonymousClass10(str10, 9, str10);
        String str11 = "TELENOR";
        TELENOR = new AnonymousClass11(str11, 10, str11);
        String str12 = "TELIA";
        TELIA = new AnonymousClass12(str12, 11, str12);
        String str13 = "TELSTRA";
        TELSTRA = new AnonymousClass13(str13, 12, str13);
        String str14 = "ATT";
        ATT = new AnonymousClass14(str14, 13, str14);
        String str15 = "TMOUS";
        TMOUS = new AnonymousClass15(str15, 14, str15);
        String str16 = "VZW";
        VZW = new AnonymousClass16(str16, 15, str16);
        String str17 = "SPR";
        SPR = new AnonymousClass17(str17, 16, str17);
        String str18 = "USCC";
        USCC = new AnonymousClass18(str18, 17, str18);
        String str19 = "BMC";
        BMC = new AnonymousClass19(str19, 18, str19);
        String str20 = "BMC_UP";
        BMC_UP = new AnonymousClass20(str20, 19, str20);
        String str21 = "TCE";
        TCE = new AnonymousClass21(str21, 20, str21);
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$2, reason: invalid class name */
    enum AnonymousClass2 extends RcsPolicyType {
        private AnonymousClass2(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new ChnStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$3, reason: invalid class name */
    enum AnonymousClass3 extends RcsPolicyType {
        private AnonymousClass3(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new ChnStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$4, reason: invalid class name */
    enum AnonymousClass4 extends RcsPolicyType {
        private AnonymousClass4(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new ChnStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$5, reason: invalid class name */
    enum AnonymousClass5 extends RcsPolicyType {
        private AnonymousClass5(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new ChnStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$6, reason: invalid class name */
    enum AnonymousClass6 extends RcsPolicyType {
        private AnonymousClass6(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new RjilStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$7, reason: invalid class name */
    enum AnonymousClass7 extends RcsPolicyType {
        private AnonymousClass7(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new DefaultRCSMnoStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$8, reason: invalid class name */
    enum AnonymousClass8 extends RcsPolicyType {
        private AnonymousClass8(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new DTStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$9, reason: invalid class name */
    enum AnonymousClass9 extends RcsPolicyType {
        private AnonymousClass9(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new EmeiaStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$10, reason: invalid class name */
    enum AnonymousClass10 extends RcsPolicyType {
        private AnonymousClass10(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new DefaultRCSMnoStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$11, reason: invalid class name */
    enum AnonymousClass11 extends RcsPolicyType {
        private AnonymousClass11(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new EmeiaStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$12, reason: invalid class name */
    enum AnonymousClass12 extends RcsPolicyType {
        private AnonymousClass12(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new EmeiaStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$13, reason: invalid class name */
    enum AnonymousClass13 extends RcsPolicyType {
        private AnonymousClass13(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new DefaultRCSMnoStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$14, reason: invalid class name */
    enum AnonymousClass14 extends RcsPolicyType {
        private AnonymousClass14(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new AttStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$15, reason: invalid class name */
    enum AnonymousClass15 extends RcsPolicyType {
        private AnonymousClass15(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new TmoStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$16, reason: invalid class name */
    enum AnonymousClass16 extends RcsPolicyType {
        private AnonymousClass16(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new VzwStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$17, reason: invalid class name */
    enum AnonymousClass17 extends RcsPolicyType {
        private AnonymousClass17(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new SprStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$18, reason: invalid class name */
    enum AnonymousClass18 extends RcsPolicyType {
        private AnonymousClass18(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new UsccStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$19, reason: invalid class name */
    enum AnonymousClass19 extends RcsPolicyType {
        private AnonymousClass19(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new BmcStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$20, reason: invalid class name */
    enum AnonymousClass20 extends RcsPolicyType {
        private AnonymousClass20(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new BmcUPStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$21, reason: invalid class name */
    enum AnonymousClass21 extends RcsPolicyType {
        private AnonymousClass21(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new TceStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$22, reason: invalid class name */
    enum AnonymousClass22 extends RcsPolicyType {
        private AnonymousClass22(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new DefaultUPMnoStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$23, reason: invalid class name */
    enum AnonymousClass23 extends RcsPolicyType {
        private AnonymousClass23(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new JibeUPStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$24, reason: invalid class name */
    enum AnonymousClass24 extends RcsPolicyType {
        private AnonymousClass24(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new SecUPStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$25, reason: invalid class name */
    enum AnonymousClass25 extends RcsPolicyType {
        private AnonymousClass25(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new KtUPStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$26, reason: invalid class name */
    enum AnonymousClass26 extends RcsPolicyType {
        private AnonymousClass26(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new RjilUPStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$27, reason: invalid class name */
    enum AnonymousClass27 extends RcsPolicyType {
        private AnonymousClass27(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new JibeUPStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$28, reason: invalid class name */
    enum AnonymousClass28 extends RcsPolicyType {
        private AnonymousClass28(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new JibeUPStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$29, reason: invalid class name */
    enum AnonymousClass29 extends RcsPolicyType {
        private AnonymousClass29(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new VodaUPStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$30, reason: invalid class name */
    enum AnonymousClass30 extends RcsPolicyType {
        private AnonymousClass30(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new SwisscomUPStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$31, reason: invalid class name */
    enum AnonymousClass31 extends RcsPolicyType {
        private AnonymousClass31(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new DefaultUPMnoStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$32, reason: invalid class name */
    enum AnonymousClass32 extends RcsPolicyType {
        private AnonymousClass32(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new JibeUPStrategy(context, i);
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$33, reason: invalid class name */
    enum AnonymousClass33 extends RcsPolicyType {
        private AnonymousClass33(String str, int i, String str2) {
            super(str, i, str2);
        }

        @Override // com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType
        public IMnoStrategy getStrategy(Context context, int i) {
            return new VzwUPStrategy(context, i);
        }
    }

    private RcsPolicyType(String str, int i, String str2) {
        this.typeName = str2;
    }

    public String getTypeName() {
        return this.typeName;
    }

    public boolean isUp() {
        return this != BMC_UP && this.typeName.toUpperCase().endsWith(UNIVERSAL_PROFILE_SUFFIX);
    }

    public static RcsPolicyType fromString(final String str) {
        if (TextUtils.isEmpty(str)) {
            Log.d(LOG_TAG, "Warning: RcsPolicyType invalid parameter, name is null or empty");
            return DEFAULT_RCS;
        }
        return (RcsPolicyType) Arrays.stream(values()).filter(new Predicate() { // from class: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$fromString$0;
                lambda$fromString$0 = RcsPolicyType.lambda$fromString$0(str, (RcsPolicyType) obj);
                return lambda$fromString$0;
            }
        }).findFirst().orElseGet(new Supplier() { // from class: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$$ExternalSyntheticLambda1
            @Override // java.util.function.Supplier
            public final Object get() {
                RcsPolicyType defaultPolicyType;
                defaultPolicyType = RcsPolicyType.getDefaultPolicyType(str);
                return defaultPolicyType;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$fromString$0(String str, RcsPolicyType rcsPolicyType) {
        return rcsPolicyType.typeName.equalsIgnoreCase(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RcsPolicyType getDefaultPolicyType(String str) {
        if (str.toUpperCase().endsWith(UNIVERSAL_PROFILE_SUFFIX)) {
            Log.d(LOG_TAG, "Warning: RcsPolicyType " + str + " not defined use DEFAULT_UP");
            return DEFAULT_UP;
        }
        Log.d(LOG_TAG, "Warning: RcsPolicyType " + str + " not defined use DEFAULT_RCS");
        return DEFAULT_RCS;
    }

    public boolean isOneOf(RcsPolicyType... rcsPolicyTypeArr) {
        return Arrays.stream(rcsPolicyTypeArr).anyMatch(new Predicate() { // from class: com.sec.internal.ims.servicemodules.im.strategy.RcsPolicyType$$ExternalSyntheticLambda2
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$isOneOf$2;
                lambda$isOneOf$2 = RcsPolicyType.this.lambda$isOneOf$2((RcsPolicyType) obj);
                return lambda$isOneOf$2;
            }
        });
    }
}
