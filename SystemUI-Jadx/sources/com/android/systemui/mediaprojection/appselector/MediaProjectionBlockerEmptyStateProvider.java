package com.android.systemui.mediaprojection.appselector;

import android.content.Context;
import android.os.UserHandle;
import com.android.internal.app.AbstractMultiProfilePagerAdapter;
import com.android.internal.app.ResolverListAdapter;
import com.android.systemui.R;
import com.android.systemui.mediaprojection.devicepolicy.ScreenCaptureDevicePolicyResolver;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaProjectionBlockerEmptyStateProvider implements AbstractMultiProfilePagerAdapter.EmptyStateProvider {
    public final Context context;
    public final UserHandle hostAppHandle;
    public final UserHandle personalProfileHandle;
    public final ScreenCaptureDevicePolicyResolver policyResolver;

    public MediaProjectionBlockerEmptyStateProvider(UserHandle userHandle, UserHandle userHandle2, ScreenCaptureDevicePolicyResolver screenCaptureDevicePolicyResolver, Context context) {
        this.hostAppHandle = userHandle;
        this.personalProfileHandle = userHandle2;
        this.policyResolver = screenCaptureDevicePolicyResolver;
        this.context = context;
    }

    public final AbstractMultiProfilePagerAdapter.EmptyState getEmptyState(ResolverListAdapter resolverListAdapter) {
        final int i;
        boolean isScreenCaptureAllowed = this.policyResolver.isScreenCaptureAllowed(resolverListAdapter.getUserHandle(), this.hostAppHandle);
        if (Intrinsics.areEqual(this.hostAppHandle, this.personalProfileHandle)) {
            i = 17042409;
        } else {
            i = 17042410;
        }
        if (!isScreenCaptureAllowed) {
            return new AbstractMultiProfilePagerAdapter.EmptyState() { // from class: com.android.systemui.mediaprojection.appselector.MediaProjectionBlockerEmptyStateProvider$getEmptyState$1
                public final String getSubtitle() {
                    return MediaProjectionBlockerEmptyStateProvider.this.context.getResources().getString(i);
                }

                public final String getTitle() {
                    return MediaProjectionBlockerEmptyStateProvider.this.context.getResources().getString(R.string.screen_capturing_disabled_by_policy_dialog_title);
                }

                public final boolean shouldSkipDataRebuild() {
                    return true;
                }

                public final void onEmptyStateShown() {
                }
            };
        }
        return null;
    }
}
