package com.android.systemui.qs;

import com.android.systemui.R;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QSSecurityFooterUtils$$ExternalSyntheticLambda2 implements Supplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ QSSecurityFooterUtils f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ CharSequence f$2;

    public /* synthetic */ QSSecurityFooterUtils$$ExternalSyntheticLambda2(QSSecurityFooterUtils qSSecurityFooterUtils, CharSequence charSequence, String str) {
        this.$r8$classId = 2;
        this.f$0 = qSSecurityFooterUtils;
        this.f$2 = charSequence;
        this.f$1 = str;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.$r8$classId) {
            case 0:
                return this.f$0.mContext.getString(R.string.monitoring_description_two_named_vpns, this.f$1, (String) this.f$2);
            case 1:
                return this.f$0.mContext.getString(R.string.monitoring_description_two_named_vpns, this.f$1, (String) this.f$2);
            default:
                return this.f$0.mContext.getString(R.string.quick_settings_disclosure_named_management_named_vpn, this.f$2, this.f$1);
        }
    }

    public /* synthetic */ QSSecurityFooterUtils$$ExternalSyntheticLambda2(QSSecurityFooterUtils qSSecurityFooterUtils, String str, String str2, int i) {
        this.$r8$classId = i;
        this.f$0 = qSSecurityFooterUtils;
        this.f$1 = str;
        this.f$2 = str2;
    }
}
