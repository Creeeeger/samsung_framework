package com.android.systemui.statusbar.policy;

import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class DeviceProvisionedControllerImpl$onFrpActiveChanged$1 extends FunctionReferenceImpl implements Function1 {
    public static final DeviceProvisionedControllerImpl$onFrpActiveChanged$1 INSTANCE = new DeviceProvisionedControllerImpl$onFrpActiveChanged$1();

    public DeviceProvisionedControllerImpl$onFrpActiveChanged$1() {
        super(1, DeviceProvisionedController.DeviceProvisionedListener.class, "onFrpActiveChanged", "onFrpActiveChanged()V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ((DeviceProvisionedController.DeviceProvisionedListener) obj).onFrpActiveChanged();
        return Unit.INSTANCE;
    }
}
