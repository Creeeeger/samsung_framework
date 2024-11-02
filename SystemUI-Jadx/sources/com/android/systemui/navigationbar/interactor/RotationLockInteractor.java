package com.android.systemui.navigationbar.interactor;

import com.android.systemui.Dependency;
import com.android.systemui.statusbar.policy.RotationLockController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RotationLockInteractor {
    public RotationLockInteractor$addCallback$2 rotationLockCallback;
    public final RotationLockController rotationLockController = (RotationLockController) Dependency.get(RotationLockController.class);
}
