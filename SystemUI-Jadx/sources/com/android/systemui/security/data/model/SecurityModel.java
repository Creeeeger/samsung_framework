package com.android.systemui.security.data.model;

import android.app.admin.DeviceAdminInfo;
import android.app.admin.DevicePolicyManager;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import com.android.systemui.statusbar.policy.SecurityController;
import com.android.systemui.statusbar.policy.SecurityControllerImpl;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecurityModel {
    public static final Companion Companion = new Companion(null);
    public final Drawable deviceAdminIcon;
    public final String deviceOwnerOrganizationName;
    public final boolean hasCACertInCurrentUser;
    public final boolean hasCACertInWorkProfile;
    public final boolean hasWorkProfile;
    public final boolean isDeviceManaged;
    public final boolean isNetworkLoggingEnabled;
    public final boolean isParentalControlsEnabled;
    public final boolean isProfileOwnerOfOrganizationOwnedDevice;
    public final boolean isVpnBranded;
    public final boolean isWorkProfileOn;
    public final String primaryVpnName;
    public final String workProfileOrganizationName;
    public final String workProfileVpnName;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static Object create(SecurityController securityController, CoroutineDispatcher coroutineDispatcher, Continuation continuation) {
            return BuildersKt.withContext(coroutineDispatcher, new SecurityModel$Companion$create$2(securityController, null), continuation);
        }

        public final SecurityModel create(SecurityController securityController) {
            SecurityControllerImpl securityControllerImpl = (SecurityControllerImpl) securityController;
            DeviceAdminInfo deviceAdminInfo = securityControllerImpl.isParentalControlsEnabled() ? securityControllerImpl.getDeviceAdminInfo() : null;
            boolean isDeviceManaged = securityControllerImpl.isDeviceManaged();
            boolean hasWorkProfile = securityControllerImpl.hasWorkProfile();
            UserHandle of = UserHandle.of(securityControllerImpl.getWorkProfileUserId(securityControllerImpl.mCurrentUserId));
            boolean z = (of == null || securityControllerImpl.mUserManager.isQuietModeEnabled(of)) ? false : true;
            DevicePolicyManager devicePolicyManager = securityControllerImpl.mDevicePolicyManager;
            boolean isOrganizationOwnedDeviceWithManagedProfile = devicePolicyManager.isOrganizationOwnedDeviceWithManagedProfile();
            CharSequence deviceOwnerOrganizationName = devicePolicyManager.getDeviceOwnerOrganizationName();
            String obj = deviceOwnerOrganizationName != null ? deviceOwnerOrganizationName.toString() : null;
            int workProfileUserId = securityControllerImpl.getWorkProfileUserId(securityControllerImpl.mCurrentUserId);
            CharSequence organizationNameForUser = workProfileUserId == -10000 ? null : devicePolicyManager.getOrganizationNameForUser(workProfileUserId);
            return new SecurityModel(isDeviceManaged, hasWorkProfile, z, isOrganizationOwnedDeviceWithManagedProfile, obj, organizationNameForUser != null ? organizationNameForUser.toString() : null, devicePolicyManager.isNetworkLoggingEnabled(null), securityControllerImpl.isVpnBranded(), securityControllerImpl.getPrimaryVpnName(), securityControllerImpl.getWorkProfileVpnName(), securityControllerImpl.hasCACertInCurrentUser(), securityControllerImpl.hasCACertInWorkProfile(), securityControllerImpl.isParentalControlsEnabled(), deviceAdminInfo != null ? deviceAdminInfo.loadIcon(securityControllerImpl.mPackageManager) : null);
        }
    }

    public SecurityModel(boolean z, boolean z2, boolean z3, boolean z4, String str, String str2, boolean z5, boolean z6, String str3, String str4, boolean z7, boolean z8, boolean z9, Drawable drawable) {
        this.isDeviceManaged = z;
        this.hasWorkProfile = z2;
        this.isWorkProfileOn = z3;
        this.isProfileOwnerOfOrganizationOwnedDevice = z4;
        this.deviceOwnerOrganizationName = str;
        this.workProfileOrganizationName = str2;
        this.isNetworkLoggingEnabled = z5;
        this.isVpnBranded = z6;
        this.primaryVpnName = str3;
        this.workProfileVpnName = str4;
        this.hasCACertInCurrentUser = z7;
        this.hasCACertInWorkProfile = z8;
        this.isParentalControlsEnabled = z9;
        this.deviceAdminIcon = drawable;
    }

    public static final SecurityModel create(SecurityController securityController) {
        return Companion.create(securityController);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SecurityModel)) {
            return false;
        }
        SecurityModel securityModel = (SecurityModel) obj;
        if (this.isDeviceManaged == securityModel.isDeviceManaged && this.hasWorkProfile == securityModel.hasWorkProfile && this.isWorkProfileOn == securityModel.isWorkProfileOn && this.isProfileOwnerOfOrganizationOwnedDevice == securityModel.isProfileOwnerOfOrganizationOwnedDevice && Intrinsics.areEqual(this.deviceOwnerOrganizationName, securityModel.deviceOwnerOrganizationName) && Intrinsics.areEqual(this.workProfileOrganizationName, securityModel.workProfileOrganizationName) && this.isNetworkLoggingEnabled == securityModel.isNetworkLoggingEnabled && this.isVpnBranded == securityModel.isVpnBranded && Intrinsics.areEqual(this.primaryVpnName, securityModel.primaryVpnName) && Intrinsics.areEqual(this.workProfileVpnName, securityModel.workProfileVpnName) && this.hasCACertInCurrentUser == securityModel.hasCACertInCurrentUser && this.hasCACertInWorkProfile == securityModel.hasCACertInWorkProfile && this.isParentalControlsEnabled == securityModel.isParentalControlsEnabled && Intrinsics.areEqual(this.deviceAdminIcon, securityModel.deviceAdminIcon)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int i = 1;
        boolean z = this.isDeviceManaged;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = i2 * 31;
        boolean z2 = this.hasWorkProfile;
        int i4 = z2;
        if (z2 != 0) {
            i4 = 1;
        }
        int i5 = (i3 + i4) * 31;
        boolean z3 = this.isWorkProfileOn;
        int i6 = z3;
        if (z3 != 0) {
            i6 = 1;
        }
        int i7 = (i5 + i6) * 31;
        boolean z4 = this.isProfileOwnerOfOrganizationOwnedDevice;
        int i8 = z4;
        if (z4 != 0) {
            i8 = 1;
        }
        int i9 = (i7 + i8) * 31;
        int i10 = 0;
        String str = this.deviceOwnerOrganizationName;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (i9 + hashCode) * 31;
        String str2 = this.workProfileOrganizationName;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        boolean z5 = this.isNetworkLoggingEnabled;
        int i13 = z5;
        if (z5 != 0) {
            i13 = 1;
        }
        int i14 = (i12 + i13) * 31;
        boolean z6 = this.isVpnBranded;
        int i15 = z6;
        if (z6 != 0) {
            i15 = 1;
        }
        int i16 = (i14 + i15) * 31;
        String str3 = this.primaryVpnName;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i17 = (i16 + hashCode3) * 31;
        String str4 = this.workProfileVpnName;
        if (str4 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str4.hashCode();
        }
        int i18 = (i17 + hashCode4) * 31;
        boolean z7 = this.hasCACertInCurrentUser;
        int i19 = z7;
        if (z7 != 0) {
            i19 = 1;
        }
        int i20 = (i18 + i19) * 31;
        boolean z8 = this.hasCACertInWorkProfile;
        int i21 = z8;
        if (z8 != 0) {
            i21 = 1;
        }
        int i22 = (i20 + i21) * 31;
        boolean z9 = this.isParentalControlsEnabled;
        if (!z9) {
            i = z9 ? 1 : 0;
        }
        int i23 = (i22 + i) * 31;
        Drawable drawable = this.deviceAdminIcon;
        if (drawable != null) {
            i10 = drawable.hashCode();
        }
        return i23 + i10;
    }

    public final String toString() {
        return "SecurityModel(isDeviceManaged=" + this.isDeviceManaged + ", hasWorkProfile=" + this.hasWorkProfile + ", isWorkProfileOn=" + this.isWorkProfileOn + ", isProfileOwnerOfOrganizationOwnedDevice=" + this.isProfileOwnerOfOrganizationOwnedDevice + ", deviceOwnerOrganizationName=" + this.deviceOwnerOrganizationName + ", workProfileOrganizationName=" + this.workProfileOrganizationName + ", isNetworkLoggingEnabled=" + this.isNetworkLoggingEnabled + ", isVpnBranded=" + this.isVpnBranded + ", primaryVpnName=" + this.primaryVpnName + ", workProfileVpnName=" + this.workProfileVpnName + ", hasCACertInCurrentUser=" + this.hasCACertInCurrentUser + ", hasCACertInWorkProfile=" + this.hasCACertInWorkProfile + ", isParentalControlsEnabled=" + this.isParentalControlsEnabled + ", deviceAdminIcon=" + this.deviceAdminIcon + ")";
    }
}
