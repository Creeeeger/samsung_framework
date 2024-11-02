package com.android.systemui.statusbar;

import android.app.admin.DevicePolicyManager;
import android.content.res.Resources;
import com.android.systemui.R;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class KeyguardIndicationController$$ExternalSyntheticLambda1 implements Supplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ KeyguardIndicationController$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        boolean z;
        switch (this.$r8$classId) {
            case 0:
                DevicePolicyManager devicePolicyManager = ((KeyguardIndicationController) this.f$0).mDevicePolicyManager;
                if (!devicePolicyManager.isDeviceManaged() && !devicePolicyManager.isOrganizationOwnedDeviceWithManagedProfile()) {
                    z = false;
                } else {
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                return ((Resources) this.f$0).getString(R.string.do_disclosure_generic);
        }
    }
}
