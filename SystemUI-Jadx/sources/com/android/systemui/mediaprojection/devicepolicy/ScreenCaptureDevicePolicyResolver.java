package com.android.systemui.mediaprojection.devicepolicy;

import android.app.admin.DevicePolicyManager;
import android.os.UserHandle;
import android.os.UserManager;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ScreenCaptureDevicePolicyResolver {
    public final DevicePolicyManager devicePolicyManager;
    public final UserHandle personalProfileUserHandle;
    public final UserManager userManager;
    public final UserHandle workProfileUserHandle;
    public final Lazy personalProfileScreenCaptureDisabled$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.mediaprojection.devicepolicy.ScreenCaptureDevicePolicyResolver$personalProfileScreenCaptureDisabled$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ScreenCaptureDevicePolicyResolver screenCaptureDevicePolicyResolver = ScreenCaptureDevicePolicyResolver.this;
            return Boolean.valueOf(screenCaptureDevicePolicyResolver.devicePolicyManager.getScreenCaptureDisabled(null, screenCaptureDevicePolicyResolver.personalProfileUserHandle.getIdentifier()));
        }
    });
    public final Lazy workProfileScreenCaptureDisabled$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.mediaprojection.devicepolicy.ScreenCaptureDevicePolicyResolver$workProfileScreenCaptureDisabled$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            boolean z;
            ScreenCaptureDevicePolicyResolver screenCaptureDevicePolicyResolver = ScreenCaptureDevicePolicyResolver.this;
            UserHandle userHandle = screenCaptureDevicePolicyResolver.workProfileUserHandle;
            if (userHandle != null) {
                z = screenCaptureDevicePolicyResolver.devicePolicyManager.getScreenCaptureDisabled(null, userHandle.getIdentifier());
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    });
    public final Lazy disallowSharingIntoManagedProfile$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.mediaprojection.devicepolicy.ScreenCaptureDevicePolicyResolver$disallowSharingIntoManagedProfile$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            boolean z;
            ScreenCaptureDevicePolicyResolver screenCaptureDevicePolicyResolver = ScreenCaptureDevicePolicyResolver.this;
            UserHandle userHandle = screenCaptureDevicePolicyResolver.workProfileUserHandle;
            if (userHandle != null) {
                z = screenCaptureDevicePolicyResolver.userManager.hasUserRestrictionForUser("no_sharing_into_profile", userHandle);
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    });

    public ScreenCaptureDevicePolicyResolver(DevicePolicyManager devicePolicyManager, UserManager userManager, UserHandle userHandle, UserHandle userHandle2) {
        this.devicePolicyManager = devicePolicyManager;
        this.userManager = userManager;
        this.personalProfileUserHandle = userHandle;
        this.workProfileUserHandle = userHandle2;
    }

    public final boolean isScreenCaptureAllowed(UserHandle userHandle, UserHandle userHandle2) {
        UserHandle userHandle3 = this.workProfileUserHandle;
        boolean areEqual = Intrinsics.areEqual(userHandle2, userHandle3);
        Lazy lazy = this.workProfileScreenCaptureDisabled$delegate;
        if (areEqual && ((Boolean) lazy.getValue()).booleanValue()) {
            return false;
        }
        Lazy lazy2 = this.personalProfileScreenCaptureDisabled$delegate;
        if (((Boolean) lazy2.getValue()).booleanValue()) {
            return false;
        }
        if (Intrinsics.areEqual(userHandle, userHandle3)) {
            if (((Boolean) lazy.getValue()).booleanValue()) {
                return false;
            }
            return true;
        }
        if ((Intrinsics.areEqual(userHandle2, userHandle3) && ((Boolean) this.disallowSharingIntoManagedProfile$delegate.getValue()).booleanValue()) || ((Boolean) lazy2.getValue()).booleanValue()) {
            return false;
        }
        return true;
    }
}
