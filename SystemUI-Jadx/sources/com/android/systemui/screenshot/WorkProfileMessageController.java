package com.android.systemui.screenshot;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.UserManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WorkProfileMessageController {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Context context;
    public final PackageManager packageManager;
    public final UserManager userManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class WorkProfileFirstRunData {
        public final CharSequence appName;
        public final Drawable icon;

        public WorkProfileFirstRunData(CharSequence charSequence, Drawable drawable) {
            this.appName = charSequence;
            this.icon = drawable;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WorkProfileFirstRunData)) {
                return false;
            }
            WorkProfileFirstRunData workProfileFirstRunData = (WorkProfileFirstRunData) obj;
            if (Intrinsics.areEqual(this.appName, workProfileFirstRunData.appName) && Intrinsics.areEqual(this.icon, workProfileFirstRunData.icon)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2 = this.appName.hashCode() * 31;
            Drawable drawable = this.icon;
            if (drawable == null) {
                hashCode = 0;
            } else {
                hashCode = drawable.hashCode();
            }
            return hashCode2 + hashCode;
        }

        public final String toString() {
            return "WorkProfileFirstRunData(appName=" + ((Object) this.appName) + ", icon=" + this.icon + ")";
        }
    }

    static {
        new Companion(null);
    }

    public WorkProfileMessageController(Context context, UserManager userManager, PackageManager packageManager) {
        this.context = context;
        this.userManager = userManager;
        this.packageManager = packageManager;
    }
}
