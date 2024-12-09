package com.sec.internal.ims.rcs.util;

import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.log.IMSLog;
import java.util.Arrays;
import java.util.function.Predicate;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
abstract class DualRcsPolicyType {
    private static final /* synthetic */ DualRcsPolicyType[] $VALUES = $values();
    private static final String LOG_TAG = "DualRcsPolicyType";
    public static final DualRcsPolicyType NOT_SUPPORT;
    public static final DualRcsPolicyType SUPPORT;
    public static final DualRcsPolicyType SUPPORT_SAME_RCS_PROFILES;
    public static final DualRcsPolicyType SUPPORT_SAME_SIM_OPERATORS_ALLOW_FAMILY_SALES_CODE;
    public static final DualRcsPolicyType SUPPORT_SAME_SIM_OPERATORS_DISALLOW_FAMILY_SALES_CODE;
    public static final DualRcsPolicyType SUPPORT_SAME_SIM_OPERATORS_KOR_ONLY;
    final int value;

    abstract boolean isDualRcsPolicyConditionMatch(int i);

    /* renamed from: com.sec.internal.ims.rcs.util.DualRcsPolicyType$1, reason: invalid class name */
    enum AnonymousClass1 extends DualRcsPolicyType {
        @Override // com.sec.internal.ims.rcs.util.DualRcsPolicyType
        boolean isDualRcsPolicyConditionMatch(int i) {
            return false;
        }

        private AnonymousClass1(String str, int i, int i2) {
            super(str, i, i2);
        }
    }

    private static /* synthetic */ DualRcsPolicyType[] $values() {
        return new DualRcsPolicyType[]{NOT_SUPPORT, SUPPORT_SAME_SIM_OPERATORS_ALLOW_FAMILY_SALES_CODE, SUPPORT_SAME_RCS_PROFILES, SUPPORT, SUPPORT_SAME_SIM_OPERATORS_DISALLOW_FAMILY_SALES_CODE, SUPPORT_SAME_SIM_OPERATORS_KOR_ONLY};
    }

    public static DualRcsPolicyType valueOf(String str) {
        return (DualRcsPolicyType) Enum.valueOf(DualRcsPolicyType.class, str);
    }

    public static DualRcsPolicyType[] values() {
        return (DualRcsPolicyType[]) $VALUES.clone();
    }

    static {
        int i = 0;
        NOT_SUPPORT = new AnonymousClass1("NOT_SUPPORT", i, i);
        int i2 = 1;
        SUPPORT_SAME_SIM_OPERATORS_ALLOW_FAMILY_SALES_CODE = new AnonymousClass2("SUPPORT_SAME_SIM_OPERATORS_ALLOW_FAMILY_SALES_CODE", i2, i2);
        int i3 = 2;
        SUPPORT_SAME_RCS_PROFILES = new AnonymousClass3("SUPPORT_SAME_RCS_PROFILES", i3, i3);
        int i4 = 3;
        SUPPORT = new AnonymousClass4("SUPPORT", i4, i4);
        int i5 = 4;
        SUPPORT_SAME_SIM_OPERATORS_DISALLOW_FAMILY_SALES_CODE = new AnonymousClass5("SUPPORT_SAME_SIM_OPERATORS_DISALLOW_FAMILY_SALES_CODE", i5, i5);
        int i6 = 5;
        SUPPORT_SAME_SIM_OPERATORS_KOR_ONLY = new AnonymousClass6("SUPPORT_SAME_SIM_OPERATORS_KOR_ONLY", i6, i6);
    }

    /* renamed from: com.sec.internal.ims.rcs.util.DualRcsPolicyType$2, reason: invalid class name */
    enum AnonymousClass2 extends DualRcsPolicyType {
        private AnonymousClass2(String str, int i, int i2) {
            super(str, i, i2);
        }

        @Override // com.sec.internal.ims.rcs.util.DualRcsPolicyType
        boolean isDualRcsPolicyConditionMatch(int i) {
            return RcsUtils.getMatchedSalesCode(OmcCode.get(), SimUtil.getSimMno(i)).equals(OmcCode.get()) && (SimUtil.getSimMno(i).equals(SimUtil.getSimMno(i == 0 ? 1 : 0)) || i == SimUtil.getActiveDataPhoneId());
        }
    }

    /* renamed from: com.sec.internal.ims.rcs.util.DualRcsPolicyType$3, reason: invalid class name */
    enum AnonymousClass3 extends DualRcsPolicyType {
        private AnonymousClass3(String str, int i, int i2) {
            super(str, i, i2);
        }

        @Override // com.sec.internal.ims.rcs.util.DualRcsPolicyType
        boolean isDualRcsPolicyConditionMatch(int i) {
            int i2 = i == 0 ? 1 : 0;
            if (RcsUtils.UiUtils.isRcsEnabledinSettings(ImsRegistry.getContext(), i2)) {
                return ImsRegistry.getRcsProfileType(i2).equals(ImsRegistry.getRcsProfileType(i));
            }
            return true;
        }
    }

    /* renamed from: com.sec.internal.ims.rcs.util.DualRcsPolicyType$4, reason: invalid class name */
    enum AnonymousClass4 extends DualRcsPolicyType {
        @Override // com.sec.internal.ims.rcs.util.DualRcsPolicyType
        boolean isDualRcsPolicyConditionMatch(int i) {
            return true;
        }

        private AnonymousClass4(String str, int i, int i2) {
            super(str, i, i2);
        }
    }

    /* renamed from: com.sec.internal.ims.rcs.util.DualRcsPolicyType$5, reason: invalid class name */
    enum AnonymousClass5 extends DualRcsPolicyType {
        private AnonymousClass5(String str, int i, int i2) {
            super(str, i, i2);
        }

        @Override // com.sec.internal.ims.rcs.util.DualRcsPolicyType
        boolean isDualRcsPolicyConditionMatch(int i) {
            int i2 = i == 0 ? 1 : 0;
            String representSalesCode = RcsUtils.getRepresentSalesCode(OmcCode.get());
            String representSalesCode2 = RcsUtils.getRepresentSalesCode(OmcCode.getNWCode(i));
            String representSalesCode3 = RcsUtils.getRepresentSalesCode(OmcCode.getNWCode(i2));
            IMSLog.i(DualRcsPolicyType.LOG_TAG, i, "omcCode: " + representSalesCode + ", omcNwCode: " + representSalesCode2 + ", counterOmcNwCode: " + representSalesCode3);
            return representSalesCode.equals(representSalesCode2) && (i == SimUtil.getActiveDataPhoneId() || representSalesCode2.equals(representSalesCode3));
        }
    }

    /* renamed from: com.sec.internal.ims.rcs.util.DualRcsPolicyType$6, reason: invalid class name */
    enum AnonymousClass6 extends DualRcsPolicyType {
        private AnonymousClass6(String str, int i, int i2) {
            super(str, i, i2);
        }

        @Override // com.sec.internal.ims.rcs.util.DualRcsPolicyType
        boolean isDualRcsPolicyConditionMatch(int i) {
            int i2 = i == 0 ? 1 : 0;
            if (RcsUtils.UiUtils.isRcsEnabledinSettings(ImsRegistry.getContext(), i2)) {
                return SimUtil.getSimMno(i).equals(SimUtil.getSimMno(i2));
            }
            return true;
        }
    }

    private DualRcsPolicyType(String str, int i, int i2) {
        this.value = i2;
    }

    static DualRcsPolicyType fromInt(final int i) {
        return (DualRcsPolicyType) Arrays.stream(values()).filter(new Predicate() { // from class: com.sec.internal.ims.rcs.util.DualRcsPolicyType$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$fromInt$0;
                lambda$fromInt$0 = DualRcsPolicyType.lambda$fromInt$0(i, (DualRcsPolicyType) obj);
                return lambda$fromInt$0;
            }
        }).findFirst().orElse(NOT_SUPPORT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$fromInt$0(int i, DualRcsPolicyType dualRcsPolicyType) {
        return dualRcsPolicyType.value == i;
    }
}
